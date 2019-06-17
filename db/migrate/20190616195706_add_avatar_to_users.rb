class AddAvatarToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avatar, :string
    add_index :users, :avatar, unique: true
  end
end
