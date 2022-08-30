class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def test
    current_user.email = "mateusferreira0704@gmail.com"
    UserMailer.with(user: current_user).welcome.deliver_now
  end
end
