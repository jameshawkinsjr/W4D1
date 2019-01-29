class EditUserTable < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :text, null: false, unique: true
    remove_column :users, :name, :email
  end
end
