class HomePageController < ApplicationController
  def home
    @send_mail = SendMail.new
  end

  def send_mail
    @send_mail = SendMail.new send_mail_params
    if @send_mail.save
      SendMailer.send_mail(@send_mail).deliver_now
      flash[:success] = "Email sent successfully!"
      redirect_to root_path
    else
      flash[:danger] = "Email sending failed!"
      render :home
    end
  end

  private
  def send_mail_params
    params.require(:send_mail).permit :email, :content
  end
end
