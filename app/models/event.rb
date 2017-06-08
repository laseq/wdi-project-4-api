class Event < ApplicationRecord
  belongs_to :group

  has_many :attendance_statuses
  has_many :attending_statuses, -> { where status: "attending"}, foreign_key: "event_id", class_name: "AttendanceStatus"
  has_many :not_attending_statuses, -> { where status: "not attending"}, foreign_key: "event_id", class_name: "AttendanceStatus"
  has_many :pending_statuses, -> { where status: "pending"}, foreign_key: "event_id", class_name: "AttendanceStatus"

  has_many :members_attending, -> { distinct }, through: :attending_statuses, source: :user
  has_many :members_not_attending, -> { distinct }, through: :not_attending_statuses, source: :user
  has_many :members_pending, -> { distinct }, through: :pending_statuses, source: :user

  before_create :save_default_status

    private

      def save_default_status
        t1 = Time.now
        if self.start_time >= t1
          self.status = "Upcoming"
        elsif (self.start_time < t1 && self.end_time > t1)
          self.status = "Now"
        else
          self.status = "Ended"
        end
      end

end
