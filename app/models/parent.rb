class Parent < ActiveRecord::Base
	belongs_to :user
  validates :nom, format: { with: /\A[A-Za-zé\.¸UûÙùàÀèÈéÉïÏîÎôÔêÊçÇ \,\\\'-]+\z/, message: I18n.t('errors.messages.not_a_string') } 
  validates :prenom, format: { with: /\A[A-Za-zé\.¸UûÙùàÀèÈéÉïÏîÎôÔêÊçÇ \,\\\'-]+\z/, message: I18n.t('errors.messages.not_a_string') } 
  validates :urgnom, format: { with: /\A[A-Za-zé\.¸UûÙùàÀèÈéÉïÏîÎôÔêÊçÇ \,\\\'-]+\z/, message: I18n.t('errors.messages.not_a_string') } 
  validates :urgprenom, format: { with: /\A[A-Za-zé\.¸UûÙùàÀèÈéÉïÏîÎôÔêÊçÇ \,\\\'-]+\z/, message: I18n.t('errors.messages.not_a_string') } 


	validates_presence_of :civilite, 
                        :prenom, 
                        :adresse,
                        :urgnom, 
                        :urgprenom, 
                        :telport1,
                        :urgtelport,
                        :civilite2


  #validates :teldom, presence: true, numericality: true, length: { is: 10 }
  validates :telport1, presence: true, numericality: true, length: { is: 10 }
  validates :telport2, presence: true, numericality: true, length: { is: 10 }
  # validates :telpro1, numericality: true, length: { is: 10 }
  # validates :telpro2, numericality: true, length: { is: 10 }
  validates :urgteldom, presence: true, numericality: true, length: { is: 10 }
  validates :urgtelport, presence: true, numericality: true, length: { is: 10 }
  validates :urgtelpro, presence: true, numericality: true, length: { is: 10 }



end