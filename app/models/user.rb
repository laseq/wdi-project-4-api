class User < ApplicationRecord
  has_secure_password
  has_many :groups_as_creator, foreign_key: "creator_id", class_name: "Group"
  validates :username, presence: true, uniqueness: true
end
