class RemoveAddress < ActiveRecord::Migration[6.1]
  def change
    remove_column :clients, :address
    remove_column :clients, :name
  end
end
