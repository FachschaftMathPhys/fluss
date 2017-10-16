class TheoretikumBillingResource < JSONAPI::Resource
  attributes :submission_date, :pdf, :resolution_date, :review_date, :approval_date, :mailing_date, :print_costs, :locker_rent, :miscellenea, :postage, :figure, :event_date, :protocol_link, :protocol_page
  has_one :offer_comparison
  has_one :budgetary_position
  has_one :body
end
# Theorektikumsabrechnung
# Einreichungsdatum, binary des Scans, Beschlussdatum, Überprüfungsdatum, Bestätigungsdatum, Versendedatum, Handelt es sich um Druckerkosten, oder Schrankmiete?, oder sonstiges (spezifizieren), oder Porto?, Betragshöhe, Veranstaltungsdatum, Protokolllin zum Beschluss, Seitenzahl im Protokoll zum Beschluss
