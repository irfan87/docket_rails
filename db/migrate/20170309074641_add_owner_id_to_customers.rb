class AddOwnerIdToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_reference :customers, :owner, foreign_key: true
  end
end
