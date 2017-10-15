class Decision < ApplicationRecord
  has_many :offers
  has_many :options, through: :offers
end
