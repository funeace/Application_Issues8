class ThanksMailer < ApplicationMailer
  def send_when_create(user)
    @user = user
    mail to: user.email, subject: 'Thanks!'
  end
end
