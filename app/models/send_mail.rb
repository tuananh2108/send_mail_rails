class SendMail < ApplicationRecord
  before_save :downcase_email

  def downcase_email
    self.email.downcase!
  end
end
