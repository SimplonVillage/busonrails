class CartePdf < Prawn::Document

##doc pour custome le PDF http://prawnpdf.org/manual.pdf
## a partir de la page 40 pour le front 
## box page 66
## image et texte page 79


def initialize(enfant)
  super(top_margin: 70)
  @enfant = enfant
  text"COMMUNAUTE DE COMMUNES DES PORTES DU PERCHE",:align=>:center
  text"18 RUE DE LA GARE ",:align=>:center
  text"28 240 LA LOUPE",:align=>:center
  text"Télephone: 02.37.81.29 Fax: 02.37.81.04.91",:align=>:center
  text"Email: cdcdesportesduperche@wanadoo.fr",:align=>:center

  move_down 30
  text "La loupe,le 19 janvier 2015",:align=>:right

  move_down 10
  text "Madame,Monsieur,"

  move_down 50
  text "Nom: #{@enfant.nomenfant}"
  text "Prenom: #{@enfant.prenomenfant}"
  text "Sexe: #{@enfant.sexe}"
  text "Classe: #{@enfant.classe.nom}"

  # image "#{Prawn::DATADIR}/images/original.jpg"

end


end
