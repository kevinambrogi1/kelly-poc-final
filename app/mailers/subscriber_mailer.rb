class SubscriberMailer < ApplicationMailer
  def creation_confirmation(subscriber)
    @subscriber = subscriber

    mail(
      to:       @subscriber.email,
      subject:  "Subscriber #{@subscriber.email} created!"
    )
  end
end
