class AddUsernameToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :username, :string
  end
end
