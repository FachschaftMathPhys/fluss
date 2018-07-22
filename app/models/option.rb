class Option < ApplicationRecord
  has_many :offers
  has_many :decisions, through: :offers
  belongs_to :optionfollowup, polymorphic: true
end
