class FsResolutionResource < JSONAPI::Resource
  attributes :figure, :description, :justification
  has_one :offer_comparison # 3-Vergleichsangebote bei Summen >500€
  has_one :budgetary_position # Haushaltsplanposten
end
# Antrag für eine Fachschaftssitzung
# Höhe des max. Betrags, Beschreibung, was finanziert werden soll, Bgründung des Antrags nach $65 LHG
