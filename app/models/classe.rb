class Classe < ActiveRecord::Base
  belongs_to :ecole
  has_many :enfants
  has_and_belongs_to_many :niveaus

  def rails_ecole
    %{<a href="/admin/ecole/#{ecole.id}">#{ecole.nom}</a>}.html_safe
  end

  def rails_niveau
    niveaus.sort.map do |niveau| 
      %{<a href="/admin/niveau/#{niveau.id}">#{niveau.nom}</a>}
    end.join(",").html_safe
  end


  rails_admin do
    configure :rails_ecole do
      visible false
    end
    configure :rails_niveau do
      visible false
    end

     edit do 
      field :nom do
        label "Nom de l'école"
      end
      field :ecole_id, :enum do 
        label "École"
        enum do
          Ecole.all.map {|ecole| [ecole.nom, ecole.id]}
        end
      end
    #   field :niveaus, :enum do
    #     label "Niveaux"
    #     enum do
    #       Niveau.all.map {|niveau| [niveau.nom, niveau.id]}
    #     end
    #   end
    #   field :enfant_id, :enum do
    #     enum do
    #       Enfant.all.map {|enfant| [enfant.nom, enfant.id]}
    #     end
    #   end
    #   field :niveau_id, :enum do
    #     enum do
    #       Niveau.all.map {|niveau| [niveau.nom, niveau.id]}
    #     end
    #   end
    end
    list do 
      field :id do
        label "Id"
      end
      field :nom do
        label "Nom"
        end
      field :rails_ecole do
        label "Ecole"
      end
      field :rails_niveau do
        label "Niveau"
      end
      field :updated_at do
        label "Mis à jour le "
      end
    end
  end
end
