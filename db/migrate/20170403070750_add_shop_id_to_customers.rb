class AddShopIdToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_reference :customers, :shop, foreign_key: true
  end
end
