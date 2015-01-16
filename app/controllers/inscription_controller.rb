class InscriptionController < ApplicationController
	skip_before_filter :require_login
	# rediriger vers une autre page si loggé
	def index
		if current_user
			redirect_user(current_user)
		end
	end

end
