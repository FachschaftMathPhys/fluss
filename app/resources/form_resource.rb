class FormResource < JSONAPI::Resource
  attributes :title
  has_one :selection
end
