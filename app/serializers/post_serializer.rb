class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :body, :image_1, :image_2, :image_3
end
