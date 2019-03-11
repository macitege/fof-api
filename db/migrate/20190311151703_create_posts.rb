class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.string :image_1, null: false
      t.string :image_2
      t.string :image_3

      t.timestamps
    end
  end
end
