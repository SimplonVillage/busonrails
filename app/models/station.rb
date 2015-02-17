class Station < ActiveRecord::Base
  has_and_belongs_to_many :circuits
  has_many :enfants
  has_one :ecole

geocoded_by :adresse   # can also be an IP address
after_validation :geocode          # auto-fetch coordinates

end
