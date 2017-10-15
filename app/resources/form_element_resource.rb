class FormElementResource < JSONAPI::Resource
  attributes :typ, :label, :data_field
  has_many :forms
end
