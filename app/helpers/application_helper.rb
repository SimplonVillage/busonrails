module ApplicationHelper

	def error_message_for(resource,field, options = {:prepend_text => ""})
	  error_message = resource.errors[field][0]
	  if error_message
	    raw "<span class='errors'>#{options[:prepend_text]} #{error_message} </span>"
	  end
  end


end
