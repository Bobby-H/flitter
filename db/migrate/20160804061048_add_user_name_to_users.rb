class AddUserNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string #add a new column to the table 'users', called "username" and of the type 'string'
    add_index :users, :username, unique: true #first, index usernames for quick lookup, ensure usernames is always unique.
  end
end
