class ChangeColumnNames < ActiveRecord::Migration[6.1]
  def change
    rename_column :order_products, :price, :unit_price
  end
end
