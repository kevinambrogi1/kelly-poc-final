class Subscriber < ApplicationRecord
  validates :email, presence: true

  def creation_confirmation(subscriber)
    @subscriber = subscriber

    mail(
      to:       @subscriber.email,
      subject:  "Subscriber #{@subscriber.name} created!"
      )
  end

end
