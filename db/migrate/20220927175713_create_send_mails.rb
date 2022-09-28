class CreateSendMails < ActiveRecord::Migration[7.0]
  def change
    create_table :send_mails do |t|
      t.string :email
      t.string :content

      t.timestamps
    end
  end
end
