class Result < ApplicationRecord
  belongs_to :race, :foreign_key => "raceId"
  belongs_to :driver, :foreign_key => "driverId"
  belongs_to :constructor, :foreign_key => "constructorId"
  belongs_to :status, :foreign_key => "statusId"
end
