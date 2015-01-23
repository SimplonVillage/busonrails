class Classe < ActiveRecord::Base
  belongs_to :ecole
  has_and_belongs_to_many :niveaus
end
