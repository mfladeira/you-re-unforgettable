class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user, category, friend_id)
    @user = user
    @friend = Friend.find(friend_id)
    @gifts = Gift.where("price < ? and category = ?", 200.to_d, @friend.product_category).first(3)
    mail to: user.email, subject: "Birthday of #{@friend.name} is in 7 days"
  end
end
