class User < ApplicationRecord
  has_secure_password
  has_many :groups_as_creator, -> { distinct }, foreign_key: "creator_id", class_name: "Group"
  has_many :requests_as_sender, -> { distinct }, foreign_key: "sender_id", class_name: "Request"
  has_many :requests_as_receiver, -> { distinct }, foreign_key: "receiver_id", class_name: "Request"

  has_many :accepted_requests, -> { where status: "accepted"}, foreign_key: "receiver_id", class_name: "Request"

  # has_many :groups_as_member, -> { distinct }, through: :requests_as_receiver, source: :group
  has_many :groups_as_member, -> { distinct }, through: :accepted_requests, source: :group
  has_many :all_groups
  has_many :upcoming_events

  has_many :attendance_statuses
  has_many :attending_statuses, -> { where status: "attending"}, foreign_key: "user_id", class_name: "AttendanceStatus"
  has_many :not_attending_statuses, -> { where status: "not attending"}, foreign_key: "user_id", class_name: "AttendanceStatus"
  has_many :pending_attendance_statuses, -> { where status: "pending"}, foreign_key: "user_id", class_name: "AttendanceStatus"

  has_many :events_attending, -> { distinct }, through: :attending_statuses, source: :event
  has_many :events_not_attending, -> { distinct }, through: :not_attending_statuses, source: :event
  has_many :events_pending, -> { distinct }, through: :pending_attendance_statuses, source: :event

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
