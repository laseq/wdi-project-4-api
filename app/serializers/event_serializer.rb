class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_time, :end_time, :location, :description, :dress_code, :status, :group
  has_one :group

  has_many :members_attending
  has_many :members_not_attending
  has_many :members_pending

end
