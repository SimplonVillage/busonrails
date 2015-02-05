class Classe < ActiveRecord::Base
  belongs_to :ecole
  has_many :enfants
  has_and_belongs_to_many :niveaus
end
