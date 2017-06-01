class User < ApplicationRecord
  has_secure_password
  has_many :groups_as_creator, foreign_key: "creator_id", class_name: "Group"
  has_many :requests_as_sender, foreign_key: "sender_id", class_name: "Request"
  has_many :requests_as_receiver, foreign_key: "receiver_id", class_name: "Request"
  validates :username, presence: true, uniqueness: true
end
