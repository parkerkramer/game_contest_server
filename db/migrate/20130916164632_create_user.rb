class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.boolean :admin
      t.boolean :contest_creator
      t.boolean :banned
      t.string :chat_url

      t.timestamps
    end
  end
end
