class ApplicationMailer < ActionMailer::Base
  default to: 'info@littygames.com', from: 'info@littygames.com'
  layout 'mailer'
end
