class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :creator_id, :image
  belongs_to :creator
  has_many :invited_members
  has_many :accepted_members
  has_many :pending_members
  # has_many :members
  has_many :events
end
