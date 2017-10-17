class BudgetaryGroupResource < JSONAPI::Resource
  attributes :name # Name der Wirtschafts/Haushaltsplangruppe
  relationship :budgetary_positions, to: :many, acts_as_set:true # einzelne Wirtschaftsplanposten
end
