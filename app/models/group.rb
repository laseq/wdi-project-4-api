class Group < ApplicationRecord
  has_many :requests
  belongs_to :creator, :class_name => "User", :foreign_key => :creator_id
  has_many :members, through: :requests, source: :receiver
end
