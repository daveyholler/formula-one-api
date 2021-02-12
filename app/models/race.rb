class Race < ApplicationRecord
  self.primary_key = "raceId"
  belongs_to :circuit, :foreign_key => "circuitId"
  has_many :constructor_standings, :foreign_key => "raceId"
  has_many :constructor_results, :foreign_key => "raceId"
  has_many :driver_standings, :foreign_key => "raceId"
  has_many :lap_times, :foreign_key => "raceId"
  has_many :pit_stops, :foreign_key => "raceId"
  has_many :qualifyings, :foreign_key => "raceId"
  has_many :results, :foreign_key => "raceId"
end
