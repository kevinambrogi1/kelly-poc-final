# frozen_string_literal: true
class ApplicationMailer < ActionMailer::Base
  default from: 'info@improbubble.com'

  layout 'mailer'
end
