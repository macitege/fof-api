class ChangeLatAndLngToBeDecimalInCustomers < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :lat, 'numeric USING CAST(lat AS numeric)'
    change_column :posts, :lng, 'numeric USING CAST(lng AS numeric)'
  end
end
