class RequestSerializer < ActiveModel::Serializer
  attributes :id, :status, :user

  def user
    UserSerializer.new(object.user)
  end
end
