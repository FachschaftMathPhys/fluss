class OfferComparisonResource < JSONAPI::Resource
  attributes :price1, :price2, :price3, :product_description1, :product_description2, :product_description3, :offeror1, :offeror2, :offeror3, :link1, :link2, :link3
  has_one :disbursal_request
  has_one :fs_resolution
  has_one :theoretikum_billing
end
