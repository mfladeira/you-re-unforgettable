class FriendsController < ApplicationController
  def index
    @friends = Friend.where(user_id: current_user.id)
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friends_params)
    @friend.user = current_user

    if @friend.save
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
    @friend_category = @friend.product_category
  end

  def update
    @friend = Friend.find(params[:id])
    @friend.update(friends_params)
      redirect_to '/friends'
  end

  private

  def friends_params
    params.require(:friend).permit(:name, :max_price, :birthday, :avatar, :product_category)
  end
end
