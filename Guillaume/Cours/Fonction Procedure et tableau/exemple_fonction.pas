program exemple_fonction;

uses crt;

CONST 

	N=5;



function Somme : integer;

	VAR 
		i,s:integer;
	BEGIN
		s:=0;
		for i:=1 to N do
			s:=s+i;

		Somme:=s;
	END;

function Somme_2(nb_i:integer) : integer;

	VAR 
		i,s:integer;
	BEGIN
		s:=0;
		for i:=1 to nb_i do
			s:=s+i;

		Somme_2:=s;
	END;


VAR
	res_somme:integer;
	nb_i:integer;

//Programme Principal (MAIN)
BEGIN
	clrscr;
	
	writeln('Saisir un entier');
	readln(nb_i);

	res_Somme:=Somme_2(nb_i);
	writeln('Le res de la somme de nb_i nombre est : ', res_Somme);

	readln;

END.

