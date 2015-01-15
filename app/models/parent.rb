class Parent < ActiveRecord::Base
	belongs_to :user

	validates_presence_of :civilite, 
												:nom, 
                        :prenom, 
                        :adresse,
                        :telpro1,
                        :urgnom, 
                        :urgprenom, 
                        :telport1,
                        :urgtelport,
                        :civilite2
end
