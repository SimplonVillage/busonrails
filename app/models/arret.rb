class Arret < ActiveRecord::Base
  belongs_to :trajet
  belongs_to :station
end
