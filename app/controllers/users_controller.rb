class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) 
    @restaurants_submitted = @user.restaurants.order('comments.id DESC').limit(6)
    @restaurants_voted_on = @user.restaurants_voted_on.order('votes.id DESC').limit(6).uniq!
  end
end