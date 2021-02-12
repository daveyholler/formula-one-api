class Qualifying < ApplicationRecord
  belongs_to :race, :foreign_key => "raceId"
  belongs_to :driver, :foreign_key => "driverId"
  belongs_to :constructor, :foreign_key => "constructorId"
end
