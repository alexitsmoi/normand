program purge;

uses crt;

//ALGORITHME : purge_caractere
//BUT : faire une fonction qui purge une chaine d un caractere
//ENTREE: 
//SORTIE:



FUNCTION purge(chaine_source:string;car_a_sup:char):string;

VAR
	temp_chaine,car_temp :string;
	ent,i:integer;

BEGIN
	ent:=length(chaine_source);
	temp_chaine:='';
	for i:=1 to ent do
	BEGIN
		car_temp:=copy(chaine_source,i,1);
		if(car_temp<>car_a_sup) then
			temp_chaine:=(temp_chaine+car_temp);
	END;
	purge:=temp_chaine;
END;	

//programme principal
VAR
	chaine_source :string;
	car_a_sup:char;
	

BEGIN
	clrscr;
	writeln('Veuillez entrer un mot/une phrase');
	readln(chaine_source);
	writeln('Veuillez saisir le caractere a supprimer');
	readln(car_a_sup);
	writeln(purge(chaine_source,car_a_sup));
	readln;
END.	


