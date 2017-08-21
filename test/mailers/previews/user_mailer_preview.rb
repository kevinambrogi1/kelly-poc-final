# test/mailers/previews/user_mailer_preview.rb
class UserMailerPreview < ActionMailer::Preview
  def welcome
    subscriber = subscriber.name
    UserMailer.welcome(subscriber)
  end
end
