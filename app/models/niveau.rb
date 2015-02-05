class Niveau < ActiveRecord::Base
  has_and_belongs_to_many :classes
  has_many :enfants
  validates_uniqueness_of :nom
end
