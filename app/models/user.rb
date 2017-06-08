class User < ApplicationRecord
  has_secure_password
  has_many :groups_as_creator, -> { distinct }, foreign_key: "creator_id", class_name: "Group"
  has_many :requests_as_sender, -> { distinct }, foreign_key: "sender_id", class_name: "Request"
  has_many :requests_as_receiver, -> { distinct }, foreign_key: "receiver_id", class_name: "Request"
  has_many :groups_as_member, -> { distinct }, through: :requests_as_receiver, source: :group
  has_many :all_groups
  has_many :upcoming_events
  validates :username, presence: true, uniqueness: true


  def all_groups
    (self.groups_as_creator + self.groups_as_member).uniq
  end

  def upcoming_events
    # events = u1.all_groups.map(&:events)
    # concatenated = events.flatten
    # concatenated.sort_by{|event| event.start_time}
    self.all_groups.map(&:events).flatten.sort_by{|event| event.start_time}
  end




end
