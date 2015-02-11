class Parent < ActiveRecord::Base
	belongs_to :user
  validates :nom, format: { with: /\A[A-Za-zé\.¸UûÙùàÀèÈéÉïÏîÎôÔêÊçÇ \,\\\'-]+\z/, message: I18n.t('errors.messages.not_a_string') } 
  validates :prenom, format: { with: /\A[A-Za-zé\.¸UûÙùàÀèÈéÉïÏîÎôÔêÊçÇ \,\\\'-]+\z/, message: I18n.t('errors.messages.not_a_string') } 
  validates :urgnom, format: { with: /\A[A-Za-zé\.¸UûÙùàÀèÈéÉïÏîÎôÔêÊçÇ \,\\\'-]+\z/, message: I18n.t('errors.messages.not_a_string') } 
  validates :urgprenom, format: { with: /\A[A-Za-zé\.¸UûÙùàÀèÈéÉïÏîÎôÔêÊçÇ \,\\\'-]+\z/, message: I18n.t('errors.messages.not_a_string') } 


	validates_presence_of :civilite, 
                        :prenom, 
                        :adresse,
                        :civilite2,
                        :urgnom, 
                        :urgprenom 


  validates :tel1, presence: true, numericality: true, length: { is: 10 }
  validates :tel2, presence: true, numericality: true, length: { is: 10 }
  validates :tel3, presence: true, numericality: true, length: { is: 10 }
  validates :urgtel, presence: true, numericality: true, length: { is: 10 }
 

end