class BingoCard < ApplicationRecord
  belongs_to :user
  has_many :value_assigns
  has_many :values, through: :value_assigns
end
