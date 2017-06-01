class Group < ApplicationRecord
  has_many :requests
  has_many :members, through: :requests, source: :user
end
