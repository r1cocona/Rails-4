class AddAddressToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :address5, :string
  end
end
