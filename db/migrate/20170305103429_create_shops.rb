class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :shop_name
      t.text :shop_address
      t.string :shop_phone
      t.string :shop_other_phone

      t.timestamps
    end
  end
end
