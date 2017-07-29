class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.timestamps
      t.string :name
      t.string :email
      t.string :password
      t.string :password_confirmation
    end
  end
end
