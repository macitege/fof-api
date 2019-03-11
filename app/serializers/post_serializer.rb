class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :body, :address, :lat, :lng, :image_1, :image_2, :image_3
end
