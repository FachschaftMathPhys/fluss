class DrOcNecessaryResource < JSONAPI::Resource
  has_one :disbursal_request
  has_one :offer_comparison
end
# Bei 3-Vergleichsangebotsnotwendigkeit eines disbursal_request=dr=Auszahlungsantrags wird dieser Datentyp benutzt, um die Assoziation zu belegen
