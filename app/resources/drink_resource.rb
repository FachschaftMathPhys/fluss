class DrinkResource < JSONAPI::Resource
  has_one :disbursal_request
  has_one :drink_position
end
