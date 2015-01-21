class Parent < ActiveRecord::Base
	belongs_to :user
  validates :nom, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" } 
  validates :prenom, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" } 
  validates :urgnom, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" } 
  validates :urgprenom, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" } 


	validates_presence_of :civilite, 
                        :prenom, 
                        :adresse,
                        :urgnom, 
                        :urgprenom, 
                        :telport1,
                        :urgtelport,
                        :civilite2


  #validates :teldom, presence: true, numericality: true, length: { is: 10 }
  validates :telport1, presence: true, numericality: true, length: { is: 10 }
  validates :telport2, presence: true, numericality: true, length: { is: 10 }
  # validates :telpro1, numericality: true, length: { is: 10 }
  # validates :telpro2, numericality: true, length: { is: 10 }
  validates :urgteldom, presence: true, numericality: true, length: { is: 10 }
  validates :urgtelport, presence: true, numericality: true, length: { is: 10 }
  validates :urgtelpro, presence: true, numericality: true, length: { is: 10 }

  def a_method_used_for_validation_purposes
    errors.add(:name, "cannot contain the characters !@#%*()_-+=")
  end
 

end

  parent = Parent.create(nom: "!@#")
   
  parent.errors[:nom]
   # => ["cannot contain the characters !@#%*()_-+="]
   
  parent.errors.full_messages
   # => ["Name cannot contain the characters !@#%*()_-+="]