program condition_2;
//BUT : Calcule le prix TTC selon la catégorie d’article
//ENTREE : Saisis du prix HT de l’article et de sa catégorie
//SORTIE : Prix TTC


uses crt;

VAR
	prix,prixttc :double;
	categorie :char;
BEGIN
	writeln('Saisir prix');
	readln(prix);
	writeln('Saisir categorie');
	if(categorie = 'luxe')then
		prixttc := prix * (19.6/100) + prix
	else
		prixttc := prix * (5.5/100) + prix;
	writeln('le prixttc est  de ',prixttc:1:2);
	readln;
END.

