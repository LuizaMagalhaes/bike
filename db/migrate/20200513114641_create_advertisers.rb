class CreateAdvertisers < ActiveRecord::Migration[5.2]
  def change
    create_table :advertisers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.integer :document
      t.integer :phone
      t.string :agency
      t.string :account_number
      t.string :bank_name
      t.string :account_type

      t.timestamps
    end
  end
end
