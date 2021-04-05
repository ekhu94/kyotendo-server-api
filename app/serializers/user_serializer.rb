class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :email_address
end
