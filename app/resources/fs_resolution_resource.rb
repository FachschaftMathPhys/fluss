class FsResolutionResource < JSONAPI::Resource
  attributes :figure, :description, :justification
  relationship :offer_comparison, to: :many # 3-Vergleichsangebote bei Summen >500€
  relationship :budgetary_position, to: :one # Haushaltsplanposten
  relationship :user, to: :one
end
# Antrag für eine Fachschaftssitzung
# Höhe des max. Betrags, Beschreibung, was finanziert werden soll, Bgründung des Antrags nach $65 LHG
