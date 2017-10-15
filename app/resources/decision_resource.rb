class DecisionResource < JSONAPI::Resource
  attributes :explanation, :question
  has_many :offers, acts_as_set:true
end
