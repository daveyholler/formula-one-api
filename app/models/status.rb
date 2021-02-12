class Status < ApplicationRecord
  self.primary_key = "statusId"
  has_many :results, :foreign_key => "statusId"
end
