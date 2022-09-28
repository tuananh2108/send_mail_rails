class ApplicationMailer < ActionMailer::Base
  default from: "sendmail@gmail.com"
  layout "mailer"
end
