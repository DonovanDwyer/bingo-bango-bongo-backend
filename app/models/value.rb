class Value < ApplicationRecord
  has_many :value_assigns
  has_many :bingo_cards, through: :value_assigns
end
