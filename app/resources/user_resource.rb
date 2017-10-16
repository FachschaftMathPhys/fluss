class UserResource < JSONAPI::Resource
  has_many :accounts # die konten des Benutzers
  attributes :name, :username # Name des Benutzers, Benutzername im Computersinne
end
# ein Benutzer dieses Programms
