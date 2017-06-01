class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :creator_id
  belongs_to :creator
  has_many :members
end
