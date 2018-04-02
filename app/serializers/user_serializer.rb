class UserSerializer < ActiveModel::Serializer
# @attr [integer] id
# @attr [string] name
# @attr [string] email
  attributes :id, :name, :email
end
