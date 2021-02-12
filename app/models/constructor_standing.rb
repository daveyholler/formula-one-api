class ConstructorStanding < ApplicationRecord
  belongs_to :race, :foreign_key => "raceId"
  belongs_to :constructor, :foreign_key => "constructorId"
end
