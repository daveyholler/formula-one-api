class Driver < ApplicationRecord
  self.primary_key = "driverId"
  has_many :driver_standings, :foreign_key => "driverId"
  has_many :lap_times, :foreign_key => "driverId"
  has_many :pit_stops, :foreign_key => "driverId"
  has_many :qualifyings, :foreign_key => "driver_id"
  has_many :results, :foreign_key => "driverId"
end
