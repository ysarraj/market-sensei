class UserMailer < ApplicationMailer
  default from: 'alert@marketsensei.com'

  def alert_email
    @user = params[:user]
    # @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Your criteria have been met!')
  end
end
