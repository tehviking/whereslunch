class Restaurant < ActiveRecord::Base
  after_create :create_initial_vote
  validates_presence_of :name, :description
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
  
  def voters(restaurant_id)
    sql = ActiveRecord::Base.connection
    query = sql.execute("SELECT u.email FROM users u INNER JOIN 
                        votes v ON u.id = v.user_id inner join restaurants r 
                        on v.restaurant_id = r.id where r.id = #{restaurant_id}")
    emails = []
    query.each { |query| emails << query["email"] }
    emails
  end
  
  protected
    def create_initial_vote 
      votes.create :user => user
    end
end
