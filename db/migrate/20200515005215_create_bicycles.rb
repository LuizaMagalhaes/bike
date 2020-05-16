class CreateBicycles < ActiveRecord::Migration[5.2]
  def change
    create_table :bicycles do |t|
      t.string :title
      t.float :price
      t.decimal :longitude, { precision: 10, scale: 6 }
      t.decimal :latitude, { precision: 10, scale: 6 }
      t.string :description
      t.boolean :available
      t.string :image_url
      t.integer :advertiser_id

      t.timestamps
    end
  end
end
