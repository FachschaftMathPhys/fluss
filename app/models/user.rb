class User < ApplicationRecord
  has_many :ownerships
  has_many :accounts, through: :ownerships, dependent: :destroy
end
