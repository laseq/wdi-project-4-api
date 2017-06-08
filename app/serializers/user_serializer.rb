class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :sex, :phone, :location, :image
  has_many :groups_as_creator
  has_many :groups_as_member
  has_many :usergroups
  has_many :upcoming_events

  has_many :events_attending
  has_many :events_not_attending
  has_many :events_pending

  def usergroups
    data = []
    data << object.groups_as_creator
    data << object.groups_as_member
    concatenated = data.flatten
    concatenated
  end
end
