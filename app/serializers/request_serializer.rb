class RequestSerializer < ActiveModel::Serializer
  attributes :id, :status
  has_one :sender
  has_one :receiver
  belongs_to :group

  # def user
  #   UserSerializer.new(object.user)
  # end
end
