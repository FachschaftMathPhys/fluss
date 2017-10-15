class DisbursalRequestResource < JSONAPI::Resource
  attributes :description, :figure, :submission_date, :resolution_date, :review_date, :approval_date, :mailing_date, :invoice_settled, :authorized, :event_date, :food, :attendee_count, :protocol_link, :protocol_page, :pdf, :deposit, :discount_card
  has_many :drink_positions
  has_one :budgetary_position
  has_one :body
  has_one :user
  has_one :offer_comparison
  has_one :account
end
