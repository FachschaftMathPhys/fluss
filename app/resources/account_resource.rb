class AccountResource < JSONAPI::Resource
  attributes :iban, :bic, :recipient # IBAN, BIC, Zahlungsempfänger
  has_one :user # Besitzer
  has_many :disbursal_requests # Auszahlungsanträge
end
# Das Konto, auf das Geld überwiesen werden soll.
