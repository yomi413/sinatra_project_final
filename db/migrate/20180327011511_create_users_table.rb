class CreateUsersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :username
      t.string :password
      t.string :password_digest
    end
  end
end
