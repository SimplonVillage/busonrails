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

validates_format_of :telpro1, :with =>  /\d[0-9]\)*\z/, :flash => { :success => "message"}





validates_format_of :telpro2, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"
validates_format_of :teldom, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"
validates_format_of :urgteldom, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"
validates_format_of :urgtelpro, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"
validates_format_of :telport1, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"
validates_format_of :telport2, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"
validates_format_of :urgtelport, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"                   
  
end