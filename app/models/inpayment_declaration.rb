class InpaymentDeclaration < ApplicationRecord
  belongs_to :budgetary_position
  belongs_to :body
end
