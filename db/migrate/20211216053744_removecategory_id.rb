class RemovecategoryId < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :category_id
  end
end
