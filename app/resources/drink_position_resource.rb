class DrinkPositionResource < JSONAPI::Resource
  attributes :percentage, :quantity, :volume, :name
  has_one :disbursal_request
end
