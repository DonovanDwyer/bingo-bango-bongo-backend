class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bingomaster, :wins, :losses

  has_many :users
end
