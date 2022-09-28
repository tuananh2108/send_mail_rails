class SendMailer < ApplicationMailer
  def send_mail send_mail
    @send_mail = send_mail

    mail to: send_mail.email
  end
end
