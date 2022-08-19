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

    # @product_category = ProductCategory.new(product_categories_params)
    # @product_category.friend = @friend
    # @product_category.save

    if @friend.save
      redirect_to root_path
    end
  end

  private

  def friends_params
    params.require(:friend).permit(:name, :max_price, :birthday, :phone_number)
  end

  def product_categories_params
    params.require(:product_category).permit(name: :product_categories)
  end
end
