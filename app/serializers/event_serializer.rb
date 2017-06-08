class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_time, :end_time, :location, :description, :dress_code, :status, :group
  has_one :group

end
