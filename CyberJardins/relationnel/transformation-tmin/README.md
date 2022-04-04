Transformation TMin
Auteurs:
	l3miage-duongti
	l3miage-barryma
	l3miage-diallo20
	l3miage-cholvyj

Classeur
https://docs.google.com/spreadsheets/d/1b8EIzjrZAc_dRmpbePHy-HPu-wFUzXRLqhjeR92JmkQ/edit?usp=sharing

Feuille Google SpreadSheet


Transformations
	LesEtudiants	TC(Etudiant)
	LesBatiments	TC(Batiment)
	LesJardins		TC(Jardins)
	LesAppartements	TC(Appartements) + THU(AppartPlus, Chambre)
	Contient		TAG(Contient)
	Garde			TCAG(Garde) + TAG(Garde) 
	Inspecte		TAG(Inspecte)
	Occupe			TAG(Occupe)
	Partage			TCAG(Partage)  + TAG(Partage)
Statut:
	OK
Execution:
	./build.sh
