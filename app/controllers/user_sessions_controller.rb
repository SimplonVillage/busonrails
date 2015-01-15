class UserSessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      if @user.is_admin?        
        redirect_to rails_admin_path 
      elsif @user.enfants.count == 0
        redirect_back_or_to(new_enfant_path, notice: 'Vous êtes connecté')
      elsif @user.parent
        redirect_back_or_to(parent_path(@user.parent.id), notice: 'Vous êtes connecté')
      else 
        redirect_back_or_to(new_parent_path, notice: 'Vous êtes connecté')
      end
 #   elsif 
  #      @user = logged_in
   #     x = <%= button_to "Suite de l'inscription", user_session_path(current_user.id), :class => "btn btn-info nav-btn", :method => :get %>

    else
      flash.now[:alert] = "Erreur d'identification"
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(root_path, notice: 'Vous êtes déconnecté')
  end
end