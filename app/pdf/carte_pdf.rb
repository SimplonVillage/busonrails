class CartePdf < Prawn::Document

##doc pour custome le PDF http://prawnpdf.org/manual.pdf
## a partir de la page 40 pour le front 
## box page 66
## image et texte page 79


def initialize(enfant)
  super(top_margin: 40)
  @enfant = enfant
  text"COMMUNAUTE DE COMMUNES DES PORTES DU PERCHE",:align=>:center
  text"18 RUE DE LA GARE ",:align=>:center
  text"28 240 LA LOUPE",:align=>:center
  text"Télephone: 02.37.81.29 Fax: 02.37.81.04.91",:align=>:center
  text"Email: cdcdesportesduperche@wanadoo.fr",:align=>:center

  move_down 30
  text "La loupe,le XX xxxxxxx  201X",:align=>:right

  move_down 20
  text "Madame, Monsieur,"

  move_down 20
  text "Veuillez trouver ci-jointle titre de transport obligatoire devotre enfant pour l'année 2015/2016.",:align=>:justify

  move_down 20
  text "Il doit être impérativement agrafé ou collé dans le cahier de liaison pour ainsi le présenter à tout moment lors d'un contrôle.", :style => :bold,:align=>:justify

  move_down 20
  text "Extrait du règlement Départemental du Conseil Général d'Eure-et Loir des transport scolaires.", :style => :italic,:align=>:justify
  text "Chapitre IV - Article 4.1 TITRES DE TRANSPORT", :style => :italic,:align=>:justify
  text "Chaque élève bénéficiant d'un transport desservant les établissements scolaires à titre principal devra être muni d'un titre de transport délivré par l'organisation secondaire et le présenter sur demande du conducteur ou des contrôleurs mandatés par les entreprises ou par le Conseil Général.", :style => :italic,:align=>:justify

  move_down 20
  text "Le transport de votre enfant est subventionné a 80 % par le Conseil Général d'Eure-et-Loir le reste est pris en charge par la Communauté De Communes des Portes du Perches.",:align=>:justify

  move_down 20
  text "Recevez, Madame, Monsieur nos salutations les meilleures.",:align=>:justify

  move_down 20
  text "Éric Gérard",:align=>:center

  move_down 10
  text "Président de la CDC",:align=>:center

  move_down 10
  text "---------------------------------------------------------------------------------------------------------------",:align=>:center

  move_down 5
  image "#{Rails.root}/app/assets/images/carte1.png",:align=>:center,:width=>500,:height=>185
  # :at=>[200,y_position]



  move_down 50
  text "Nom :  #{@enfant.nomenfant}"
  text "Prenom :  #{@enfant.prenomenfant}"
  text "Sexe :  #{@enfant.sexe}"
  text "Classe :  #{@enfant.classe.nom}"
  text "Point d'arret: A FAIRE"

  # image "#{Prawn::DATADIR}/images/original.jpg"

end


end
