class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(subscriber)
    @subscriber = subscriber

    mail(to: @subscriber.email, subject: 'New newsletter registration')
  end
end
