class Circuit < ActiveRecord::Base
  has_many :trajets
  has_and_belongs_to_many :stations
end
