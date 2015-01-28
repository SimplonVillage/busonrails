class Enfant < ActiveRecord::Base 
	belongs_to :user
  has_one :ecole
  has_one :classe
  has_one :niveau
  
  validates :nomenfant, format: { with: /\A[A-Za-zé\.¸UûÙùàÀèÈéÉïÏîÎôÔêÊçÇ \,\\\'-]+\z/, message: I18n.t('errors.messages.not_a_string') } 
  validates :prenomenfant, format: { with: /\A[A-Za-zé\.¸UûÙùàÀèÈéÉïÏîÎôÔêÊçÇ \,\\\'-]+\z/, message: I18n.t('errors.messages.not_a_string') } 
  

end
