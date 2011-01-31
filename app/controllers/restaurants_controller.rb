class RestaurantsController < ApplicationController
  before_filter :authenticate_user!, :only => [ :new, :create ]
  
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = current_user.restaurants.build params[:restaurant]
    if @restaurant.save
      flash[:notice] = 'Thanks for submitting a restaurant!'
      redirect_to(@restaurant)
    else
      render :action => "new"
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(params[:restaurant])
      flash[:notice] = 'Restaurant was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to(restaurants_url)
  end

  def popular
    @popular = Restaurant.popular
  end
  
  def add_comment
     @comment = Restaurant.find(params[:id]).comments.new(params[:comment])
     @comment.user_id = current_user.id
     @comment.save
     flash[:notice] = "Thanks for your comment"
     redirect_to :action => "show", :id => params[:id]
  end  

end
