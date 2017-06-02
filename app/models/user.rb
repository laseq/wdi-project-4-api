class User < ApplicationRecord
  has_secure_password
  has_many :groups_as_creator, -> { distinct }, foreign_key: "creator_id", class_name: "Group"
  has_many :requests_as_sender, -> { distinct }, foreign_key: "sender_id", class_name: "Request"
  has_many :requests_as_receiver, -> { distinct }, foreign_key: "receiver_id", class_name: "Request"
  has_many :groups_as_member, -> { distinct }, through: :requests_as_receiver, source: :group
  validates :username, presence: true, uniqueness: true
end
