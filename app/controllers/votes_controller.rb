class VotesController < ApplicationController
  before_filter :authenticate_user!
  
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant.votes.create(:user => current_user)
    @restaurant.user.decrement_votes_left
    
    respond_to do |format| 
      format.html { redirect_to @restaurant } 
      format.js
    end
  end
end