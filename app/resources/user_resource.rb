class UserResource < JSONAPI::Resource
  has_many :accounts
  attributes :name, :username
end
