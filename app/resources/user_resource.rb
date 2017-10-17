class UserResource < JSONAPI::Resource
  relationship :accounts, to: :many # die konten des Benutzers
  attributes :name, :username # Name des Benutzers, Benutzername im Computersinne
end
# ein Benutzer dieses Programms
