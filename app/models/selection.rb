class Selection < ApplicationRecord
  #has_one :forwarding
  has_many :throughs
  has_many :forms, through: :throughs
end
