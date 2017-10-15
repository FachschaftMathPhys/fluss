class FormElement < ApplicationRecord
  has_many :contains
  has_many :forms, through: :contains
end
