class PostSerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :body,
             :address,
             :lat,
             :lng,
             :created_at,
             :updated_at,
             :user_id,
             :username
end
