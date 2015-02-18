class EnfantsController < ApplicationController

  def new
    # renvoie le formulaire enfant
    @enfant = Enfant.new
    @ecoles = Ecole.all.map{ |ecole| [ecole.nom, ecole.id] }
    @classes = Classe.all.map do |classe|
      ["#{classe.ecole.nom} - #{classe.nom}", classe.id]
    end
  end

  def create
    # créer un ENfant ds la BDD à partir du formulaire
    # date = Date.new(enfant_params["datenaissance(1i)"].to_i, enfant_params["datenaissance(2i)"].to_i, enfant_params["datenaissance(3i)"].to_i)
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
# if @enfant== true
#redirect_to new_enfant_path
  def edit
    @classes = Classe.all.map do |classe|
      ["#{classe.ecole.nom} - #{classe.nom}", classe.id]
    end
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

  # def create_and_new
  #   binding.pry
  # end

  def show
    @enfant = Enfant.find(params[:id])
    respond_to do |format|
      #format.hmtl
      format.pdf do
        pdf = CartePdf.new(@enfant)
        send_data pdf.render, filename: "Carte_#{@enfant.id}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  private

  def enfant_params
    raw_params = params.require(:enfant).permit(:nomenfant,
                                  :prenomenfant,
                                  :ecole_id,
                                  :birthday,
                                  :classe_id,
                                  :sexe,)

    #raw_params[:datenaissance] = 
  end
	
end