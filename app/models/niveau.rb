class Niveau < ActiveRecord::Base
  has_and_belongs_to_many :classes
  has_many :enfants
  validates_uniqueness_of :nom

  RailsAdmin.config do |config|
      config.model 'Niveau' do  
        # edit do
        #   field :enfant, :enum do
        #     enum do
        #       Niveau.all.map {|niveau| niveau.nom}
        #     end
        #   end
        # end
        list do 
          field :id do
            label "Id"
          end
          field :nom do
            label "Nom"
            end
          field :created_at do
            label "Créer le"
          end
          field :updated_at do
            label "Mis à jour le "
          end
        end
      end
    end

end
