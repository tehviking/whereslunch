class Restaurant < ActiveRecord::Base
  after_create :create_initial_vote
  validates_presence_of :title, :body
  belongs_to :user
  has_many :comments
  has_many :votes do
    def latest 
      order('id DESC').limit(3)
    end
  end

  def self.popular
    order('votes_count DESC').where('votes_count > 5').limit(10)
  end

  protected
    def create_initial_vote 
      votes.create :user => user
    end
end
