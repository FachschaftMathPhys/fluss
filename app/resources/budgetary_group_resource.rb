class BudgetaryGroupResource < JSONAPI::Resource
  attributes :name # Name der Wirtschafts/Haushaltsplangruppe
  has_many :budgetary_positions, acts_as_set:true # einzelne Wirtschaftsplanposten
end
