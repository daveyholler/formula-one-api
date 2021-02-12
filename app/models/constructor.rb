class Constructor < ApplicationRecord
  self.primary_key = "constructorId"
  has_many :constructor_standings, :foreign_key => "constructorId"
  has_many :constructor_results, :foreign_key => "constructorId"
  has_many :qualifyings, :foreign_key => "constructorId"
  has_many :results, :foreign_key => "constructorId"
end
