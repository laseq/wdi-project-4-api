class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username
  has_many :groups_as_creator
  has_many :groups_as_member
  has_many :usergroups

  def usergroups
    data = []
    # object.groups_as_creator.each { |group| data[:groups] << group }
    # object.groups_as_member.each { |group| data[:groups] << group }
    data << object.groups_as_creator
    data << object.groups_as_member
    concatenated = data.flatten
    concatenated
  end
end
