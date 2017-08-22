class SubscribersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      cookies[:saved_lead] = true
      # SubscriberMailer.creation_confirmation(@subscriber).deliver_now
      flash[:success] = "Thank you for subscribing!"
      redirect_to root_path
    else
      flash[:danger] = "Failed to save, please try again later!"
      redirect_to root_path
    end
  end


  private

  def subscriber_params
    params.require(:subscriber).permit( :email )
  end

end
