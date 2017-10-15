class InpaymentDeclarationResource < JSONAPI::Resource
  attributes :figure, :income_date, :pdf, :event_date, :deposit_date, :deposit_receipt, :mailing_date, :income_testament, :review_date, :submission_date, :approval_date, :authorized
  has_one :budgetary_position
  has_one :body
end
