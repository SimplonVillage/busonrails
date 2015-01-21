class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :require_login

def require_admin
  if !logged_in?
    session[:return_to_url] = request.url if Config.save_return_to_url
    self.send(Config.not_authenticated_action)
  else 
  	redirect_to main_app.root_path unless current_user.is_admin? 
  end
end

def redirect_user(user)
  if user.is_admin?        
    redirect_to rails_admin_path 
  elsif user.enfants.count == 0
    redirect_back_or_to(new_enfant_path, notice: 'Vous êtes connecté')
  elsif user.parent
    redirect_back_or_to(parent_path(user.parent.id), notice: 'Vous êtes connecté')
  else 
    redirect_back_or_to(new_parent_path, notice: 'Vous êtes connecté')
  end
end

private
  def not_authenticated
  	redirect_to main_app.new_user_session_path, alert: "Merci de vous connecter"
	end
end
