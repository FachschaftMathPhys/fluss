class DisbursalRequestResource < JSONAPI::Resource
  attributes :description, :figure, :submission_date, :resolution_date, :review_date, :approval_date, :mailing_date, :invoice_settled, :authorized, :event_date, :food, :attendee_count, :protocol_link, :protocol_page, :pdf, :deposit, :discount_card
  has_one :drstep, polymorphic: true
  relationship :drink_positions, to: :many # pro Getränk-Auflistungposten des getrunkenen Alkohols
  relationship :budgetary_position, to: :one # Haushaltsplanposten
  relationship :body, to: :one # Organisationsstruktur, über deren Haushalt die Auszahlung laufen soll
  relationship :user, to: :one # AntragsstellerIn
  relationship :offer_comparison, to: :many # 3-Vergleichsangebotszusammenfassung
  relationship :account, to: :one # Konto, auf das überwisen werden soll
end
# Ein gewöhnlicher Auszahlungsantrag
# Beschreibung/Titel/Auszahlungszweck/Grund des Auszahlungsantrags, Höhe des Betrags, Einreichungsdatum (wann der Antrag gestellt wurde), , Beschlussdatum, review_date (wann  Jan oder ich drüber geschaut haben), approval_date (wann Jan oder ich unser OK gegeben haben), mailing_date (wann Jan oder ich den Antrag and Finanzreferat per Hauspost gesendet haben), invoice_settled: ob die Rechnung beglichen ist,
# authorized: ob wir dem Antrag zugestimmt haben, event_date: Bei Veranstaltungen das Datum, an dem diese stattgefunden hat, ansonsten ein noch zu definierender default-Wert im 20. Jahrhundert, food: Handelt es sich um Bewirtungskosten?, attendee_count: Wieviele Teilnehmende waren beim Essen, protocol_link: URL-Link zum Protokoll mit Beschluss, protocol_page: Zahl der Seite, auf der der Beschluss zu finden ist, pdf: binary des eingescannten Antrags, deposit: Höhe des Pfandbetrags, discount_card: Wurde eine Vergünstigungskarte/Bahncard genmutzt?
