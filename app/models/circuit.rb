class Circuit < ApplicationRecord
  self.primary_key = "circuitId"
  has_many :races, :foreign_key => "raceId"
end
