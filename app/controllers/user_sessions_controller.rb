class UserSessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_user(@user)
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