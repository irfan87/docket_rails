class AddPostcodeToShop < ActiveRecord::Migration[5.0]
  def change
    add_column :shops, :shop_postcode, :string
  end
end
