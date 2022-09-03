class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user, category, friend_id)
    @user = user
    @gifts = Gift.where(category: category)
    @friend = Friend.find(friend_id)
    mail to: user.email, subject: "Worked"
  end
end
