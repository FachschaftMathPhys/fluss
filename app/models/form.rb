class Form < ApplicationRecord
  has_many :contains
  has_many :form_elements, through: :contains
  has_many :throughs
  has_many :selections, through: :throughs
end
