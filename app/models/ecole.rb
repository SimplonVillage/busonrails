class Ecole < ActiveRecord::Base
  has_many :classes
  belongs_to :enfants
end
