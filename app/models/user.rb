class User < ActiveRecord::Base
	authenticates_with_sorcery!
  has_one :parent, dependent: :destroy
  has_many :enfants, dependent: :destroy

  validates :password, length: { minimum: 4 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create



  def is_admin?
  	admin
  end

  
  rails_admin do  
    list do 
      field :id do
        label "Id"
      end
      field :email do
        label "Email"
      end
      field :created_at do 
        label "classe"
      end
      field :created_at do
          label "Créer le"
      end
        field :updated_at do
          label "Mis à jour le "
      end
      field :admin do
        label "Admin"
      end
      # field :parent do
      #   label "Parent"
      # end
      # field :enfant do
      #   label "Enfant"
      # end
    end
  end 

end
