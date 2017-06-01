class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :creator_id
end
