class Start < ApplicationRecord
  belongs_to :first, polymorphic: true
end
