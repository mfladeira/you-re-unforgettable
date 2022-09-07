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
    days_until_birthday @friend.birthday
    # UserMailer.welcome(current_user, @friend.product_category, @friend.id).deliver_now

    if @friend.save
      # UserMailer.welcome(current_user, @friend.product_category, @friend.id).deliver_now

      if days_until_birthday(@friend.birthday) == 7
        UserMailer.welcome(current_user, @friend.product_category, @friend.id).deliver_now
      end
      redirect_to '/friends'
    end
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy

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

  def days_until_birthday(birthday)
    bday = Date.new(Date.today.year, birthday.month, birthday.day)
    bday += 1.year if Date.today >= bday
    (bday - Date.today).to_i
  end

end
