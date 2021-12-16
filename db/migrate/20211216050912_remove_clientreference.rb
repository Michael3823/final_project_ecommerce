class RemoveClientreference < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :client_id
  end
end
