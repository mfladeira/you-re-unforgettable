class FriendsController < ApplicationController

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friends_params)
    @friend.user = current_user

    if @friend.save
      redirect_to root_path
    end
  end

  private

  def friends_params
    params.require(:friend).permit(:name, :max_price, :birthday, :phone_number)
  end
end
