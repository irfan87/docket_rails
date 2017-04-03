class AddOwnerIdToShop < ActiveRecord::Migration[5.0]
  def change
    add_reference :shops, :owner, index: true, unique: true, foreign_key: true
  end
end
