class AddProvinceToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :province, :string
  end
end
