class AttendanceStatusSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :event_id, :status
  belongs_to :event
end
