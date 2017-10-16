class Option < ApplicationRecord
  #has_one :forwarding
  has_many :offers
  has_and_belongs_to_many :decisions, through: :offers
end
