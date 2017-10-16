class ContainResource < JSONAPI::Resource
  has_one :form
  has_one :form_element
end
# Assoziation zwischen einem Formular und einem seiner Elemente (Schaltflächen,Auswahlfelder,...)
