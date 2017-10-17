class AccountResource < JSONAPI::Resource
  attributes :iban, :bic, :recipient # IBAN, BIC, Zahlungsempfänger
  relationship :user, to: :one # Besitzer
  relationship :disbursal_requests, to: :many # Auszahlungsanträge
end
# Das Konto, auf das Geld überwiesen werden soll.
