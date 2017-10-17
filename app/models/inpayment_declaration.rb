class InpaymentDeclaration < ApplicationRecord
  belongs_to :body
  belongs_to :budgetary_position
end
