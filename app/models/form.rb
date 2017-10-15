class Form < ApplicationRecord
  has_many :contains
  has_many :form_elements, through: :contains, dependent: :destroy
  has_many :throughs
  has_and_belongs_to_many :selections, through: :throughs
end
