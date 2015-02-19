class Enfant < ActiveRecord::Base 
	belongs_to :user
  belongs_to :classe
  belongs_to :niveau
  belongs_to :station
  has_and_belongs_to_many :trajets
  
  validates_presence_of :sexe

  validates :nomenfant, format: { with: /\A[A-Za-zé\.¸UûÙùàÀèÈéÉïÏîÎôÔêÊçÇ \,\\\'-]+\z/, message: I18n.t('errors.messages.not_a_string') } 
  validates :prenomenfant, format: { with: /\A[A-Za-zé\.¸UûÙùàÀèÈéÉïÏîÎôÔêÊçÇ \,\\\'-]+\z/, message: I18n.t('errors.messages.not_a_string') }

  before_create :set_station
  
  def set_station
    self.station = classe.ecole.circuit.stations.min { |a, b| a.distance_from(location) <=> b.distance_from(location)}
  end
  def location
    [parent.latitude,parent.longitude]
  end



  RailsAdmin.config do |config|
    config.model 'Enfant' do  
      list do 
        field :id do
          label "Id"
        end
        field :nomenfant do
          label "Nom de l'enfant"
        end
        field :prenomenfant do
          label "Prénom de l'enfant"
        end
        field :birthday do
          label "Date de naissance"
        end
        field :classe_id do 
          label "classe"
        end
        field :created_at do
            label "Créer le"
        end
          field :updated_at do
            label "Mis à jour le "
        end
      end
      edit do
        field :nomenfant do
          label "Nom de l'enfant"
        end
        field :prenomenfant do 
          label "Prénom"
        end
        field :birthday do
          label "date de naissance"
        end
        # field :user, :enum do 
        #   enum do
        #     User.all.map {|user| email}
        #   end
        # end
        field :classe_id, :enum do
          enum do
            Classe.all.map {|classe| [classe.nom, classe.id]}
          end
        end
        field :niveau_id, :enum do
          enum do
            Niveau.all.map {|niveau| [niveau.nom, niveau.id]}
          end
        end
      end
    end
  end





end
