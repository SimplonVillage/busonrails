class Trajet < ActiveRecord::Base
  belongs_to :circuit
  has_many :arrets
  has_and_belongs_to_many :enfants

end
