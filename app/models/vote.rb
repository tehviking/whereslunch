class Vote < ActiveRecord::Base
  belongs_to :restaurant, :counter_cache => true
  belongs_to :user
  validate_on_create :is_votable_by_user, :message => "You've already voted for this restaurant."
  
  VOTE_LIMIT = 1
  
  def vote_count_by_user
# Clear Rails 2 => Rails 3 upgrade example here, for posterity
#    Vote.count("user_id = ? AND comment_id = ?", self.user.id, self.comment.id])
    Vote.where(:user_id => self.user.id, :comment_id => self.comment.id).count
  end
  
   def is_votable_by_user
     errors.add("User vote limit reached.") unless self.vote_count_by_user < VOTE_LIMIT
   end
  
end
