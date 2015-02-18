class CartePdf < Prawn::Document

##doc pour custome le PDF http://prawnpdf.org/manual.pdf
## a partir de la page 40 pour le front 

def initialize(enfant)
  super(top_margin: 70)
  @enfant = enfant
  text "Bonjour, " 

  text "Nom: #{@enfant.nomenfant}"
  text "Prenom: #{@enfant.prenomenfant}"
  text "Sexe: #{@enfant.sexe}"
  text "Classe: #{@enfant.classe.nom}"


end


end
