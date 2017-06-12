class ApplicationController < ActionController::Base
  force_ssl
  protect_from_forgery with: :exception
  before_action :authenticate_user!
end
