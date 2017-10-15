class Drink < ApplicationRecord
  belongs_to :drink_position
  belongs_to :disbursal_request
end
