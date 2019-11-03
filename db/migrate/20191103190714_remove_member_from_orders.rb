class RemoveMemberFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :member, :string
  end
end
