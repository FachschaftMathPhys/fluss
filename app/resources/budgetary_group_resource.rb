class BudgetaryGroupResource < JSONAPI::Resource
  attributes :name
  has_many :budgetary_positions, acts_as_set:true
  
end
