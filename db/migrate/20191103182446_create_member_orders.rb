class CreateMemberOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :member_orders do |t|

      t.timestamps
    end
  end
end
