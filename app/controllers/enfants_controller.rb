class EnfantsController < ApplicationController

  def new
    # renvoie le formulaire enfant
    @enfant = Enfant.new
    @ecoles = Ecole.all.map{ |ecole| [ecole.nom, ecole.id] }
    @classes = Classe.all.map{ |classe| ["#{classe.ecole.nom} - #{classe.nom}", classe.id]}
  end

  def create
    # créer un ENfant ds la BDD à partir du formulaire
		@enfant = current_user.enfants.new(enfant_params)
    if @enfant.save
      if @enfant.user.parent == nil 
        redirect_to new_parent_path
      else
        redirect_to parent_path(current_user)
      end
    else
      render action: 'new'
    end
  
  end

  def edit
    @enfant = Enfant.find(params[:id])
    if current_user.enfants.include?(@enfant)
    else
       redirect_to parent_path(current_user)
    end
  end

  def update
    @enfant = Enfant.find(params[:id])
   if  current_user.enfants.include?(@enfant)
      if @enfant.update(enfant_params)
        redirect_to parent_path(current_user.parent.id)
      else
        redirect_to edit_enfant_path(@enfant)
      end
    else
       redirect_to parent_path(current_user)
    end 
  end


  private

  def enfant_params
    params.require(:enfant).permit(:nomenfant,
                                  :prenomenfant,
                                  :datenaissance,
                                  :ecole,
                                  :classe)
  end
	
end