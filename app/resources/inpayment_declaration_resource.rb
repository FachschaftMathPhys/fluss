class InpaymentDeclarationResource < JSONAPI::Resource
  attributes :figure, :income_date, :pdf, :event_date, :deposit_date, :deposit_receipt, :mailing_date, :income_testament, :review_date, :submission_date, :approval_date, :authorized
  has_one :budgetary_position # Haushaltsplanposten
  has_one :body # einnehmende VS-Stelle
end
# Einzahlungsantrag: Betragshöhe, Einnahmedatum, binary des eingescannten Antrags, Veranstaltungsdatums, Einzahlungsdatum, ob Einazahlungsbeleg vorhanden, Versendedatum, ob Kassenabrechnung vorhanden, Überprüfungsdatum, Einreichungsdatum, Annahmedatum, wurde der Antrag akzeptiert?
