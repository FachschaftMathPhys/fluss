class ContainResource < JSONAPI::Resource
  has_one :form
  has_one :form_element
end
