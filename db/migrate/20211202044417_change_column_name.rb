class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :order_products, :total, :price
  end
end
