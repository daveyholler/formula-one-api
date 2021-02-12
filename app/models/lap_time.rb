class LapTime < ApplicationRecord
  belongs_to :race, :foreign_key => "raceId"
  belongs_to :driver, :foreign_key => "driverId"
end
