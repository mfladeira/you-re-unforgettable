class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friends_params)
    @friend.user = current_user

    @product_category = ProductCategory.new()
    @product_category.friend = @friend
    @product_category.name = params[:friend][:product_categories]

    if @friend.save && @product_category.save
      redirect_to '/friends'
    end
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to friends_path
  end

  def edit
    @friend = Friend.find(params[:id])
    # redirect_to '/friends/'
  end

  def update
    @friend = Friend.find(params[:id])
    @friend.update(friends_params)
      redirect_to '/friends'
  end

  private

  def friends_params
    params.require(:friend).permit(:name, :max_price, :birthday, :avatar)
  end
end
