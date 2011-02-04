class AddNeighborhoodToRestaurant < ActiveRecord::Migration
  def self.up
    add_column :restaurants, :neighborhood, :string
  end

  def self.down
    remove_column :restaurants, :neighborhood
  end
end
