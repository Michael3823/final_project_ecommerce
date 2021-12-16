class AddCustomersReference < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :client, foreign_key: true
  end
end
