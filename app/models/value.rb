class Value < ApplicationRecord
  has_many :value_assigns
  has_one :user, through: :value_assigns
end
