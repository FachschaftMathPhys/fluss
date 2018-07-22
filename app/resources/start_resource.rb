class StartResource < JSONAPI::Resource
  has_one :first, polymorphic: true
end
