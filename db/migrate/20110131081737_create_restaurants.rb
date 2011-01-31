class CreateRestaurants < ActiveRecord::Migration
  def self.up
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.string :link
      t.integer :user_id
      t.integer :votes_count, :default => 0
      t.string :last_visit

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurants
  end
end
