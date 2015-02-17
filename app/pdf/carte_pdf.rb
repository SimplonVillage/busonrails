class CartePdf < Prawn::Document

def initialize(enfant)
  @enfant = enfant
  text ("Enfant #{@enfant.nom}")
end



end
