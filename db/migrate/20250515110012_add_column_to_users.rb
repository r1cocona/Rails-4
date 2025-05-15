class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :ruby, :string
    add_column :users, :sex, :integer
    add_column :users, :tel, :integer
    add_column :users, :mobile, :integer
    add_column :users, :mail, :string
    add_column :users, :zip, :integer
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :address3, :string
    add_column :users, :address4, :string
    add_column :users, :birthday, :date
  end
end
