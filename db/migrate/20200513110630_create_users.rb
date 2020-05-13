class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.integer :document
      t.integer :phone
      t.integer :credit_card_number
      t.string :credit_card_name
      t.integer :credit_card_cvv
      t.string :credit_card_expiration_date

      t.timestamps
    end
  end
end
