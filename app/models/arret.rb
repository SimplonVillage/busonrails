class Arret < ActiveRecord::Base
  belong_to :trajet
  belong_to :station
end
