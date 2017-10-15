class Ownership < ApplicationRecord
  belongs_to :account
  belongs_to :user
end
