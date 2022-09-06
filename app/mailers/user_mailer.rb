class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user, category, friend_id)
    @user = user
    @gifts = Gift.where("price < ? and category = ?", 200.to_d, "Watches").first(5)
    @friend = Friend.find(friend_id)
    mail to: user.email, subject: "Worked"
  end
end
