class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :email_address
      t.string :password_digest
      t.string :avatar

      t.timestamps
    end
  end
end
