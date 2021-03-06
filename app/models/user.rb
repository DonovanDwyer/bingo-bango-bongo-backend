class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many(:users,
    :join_table => :friend_assigns,
    :foreign_key => "user_a_id",
    :association_foreign_key => "user_b_id")
  has_many :value_assigns
  has_many :values, through: :value_assigns
end
