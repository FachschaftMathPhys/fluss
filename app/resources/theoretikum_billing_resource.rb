class TheoretikumBillingResource < JSONAPI::Resource
  attributes :submission_date, :pdf, :resolution_date, :review_date, :approval_date, :mailing_date, :print_costs, :locker_rent, :miscellenea, :postage, :figure, :event_date, :protocol_link, :protocol_page
  has_one :offer_comparison
  has_one :budgetary_position
  has_one :body
end
