class AddUsernameToUsers < ActiveRecord::Migration[5.0]
  def change #anything inside of this method is translated to SQL code and modified db(currently, SQLite)
    add_column :users, :username, :string #add a new column to "users", called "username" and type of it "string"
    add_index :users, :username, unique: true #added index for quick lookup and ensure username are alwways unique
  end
end
