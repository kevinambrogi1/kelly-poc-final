# frozen_string_literal: true
class ApplicationMailer < ActionMailer::Base
  default from: 'kevinambrogi@gmail.com'
  layout 'mailer'
end
