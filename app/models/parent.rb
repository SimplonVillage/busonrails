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
                        :urgprenom,
                        :origine1,
                        :origine2,
                        :origine3


  validates :tel1, presence: true, numericality: true, length: { is: 10 }
  validates :tel2, presence: true, numericality: true, length: { is: 10 }
  validates :tel3, presence: true, numericality: true, length: { is: 10 }
  validates :urgtel, presence: true, numericality: true, length: { is: 10 }
 

  RailsAdmin.config do |config|
      config.model 'Parent' do  
        list do 
          field :id do
            label "Id"
          end
          field :civilite do
            label "Civilité"
          end
          field :nom do
            label "Nom"
          end
          field :prenom do
            label "Prénom"
          end
          field :adresse do
            label "Adresse"
          end
          field :tel1 do
            label "Telephone 1"
          end
          field :origine1 do
            label "Origine 1"
          end
          field :tel2 do
            label "Telephone 2"
          end
          field :origine2 do
            label "Origine 2"
          end
          field :tel3 do
            label "Telephone 3"
          end
          field :origine3 do
            label "Origine 3"
          end
          field :user do
            label "Utilisateur"
          end
          field :civilite2 do
            label "Civilité en cas d'urgence"
          end
          field :urgnom do
            label "Nom d'urgence"
          end
          field :urgprenom do
            label "Prénom d'urgence"
          end
          field :urgadresse do
            label "Adresse d'urgence"
          end
          field :urgtel do
            label "Téléphone d'urgence"
          end
          field :created_at do
            label "Créer le"
          end
          field :updated_at do
            label "Mis à jour le "
          end
        end
        edit do
          field :civilite do
            label "Civilité"
          end
          field :nom do
            label "Nom"
          end
          field :prenom do
            label "Prénom"
          end
          field :adresse do
            label "Adresse"
          end
          field :tel1 do
            label "Telephone 1"
          end
          field :origine1 do
            label "Origine 1"
          end
          field :tel2 do
            label "Telephone 2"
          end
          field :origine2 do
            label "Origine 2"
          end
          field :tel3 do
            label "Telephone 3"
          end
          field :origine3 do
            label "Origine 3"
          end
          field :user do
            label "Utilisateur"
          end
          field :civilite2 do
            label "Civilité en cas d'urgence"
          end
          field :urgnom do
            label "Nom d'urgence"
          end
          field :urgprenom do
            label "Prénom d'urgence"
          end
          field :urgadresse do
            label "Adresse d'urgence"
          end
          field :urgtel do
            label "Téléphone d'urgence"
          end          
        end
      end
    end


















end