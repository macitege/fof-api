class AddAddressLatLngToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :address, :string
    add_column :posts, :lat, :string
    add_column :posts, :lng, :string
  end
end
