class FinancingApplicationResource < JSONAPI::Resource
  attributes :session_date, :figure, :applicant, :description, :justification, :miscellenea
  has_one :fastep, polymorphic: true
  relationship :offer_comparison, to: :many
  relationship :user, to: :one
end
# Finanzantrag an den StuRa: Sitzungsdatum, max. Höhe des Betrags, AntragsstellendeR, Bezeichnung/Beschreibung der Sache, die finanziert werden soll, Begründung der Notwendigkeit nach §65 Abs. 2 Satz 1 LHG, BW, Sonstige Informationen
