program Exemple_Tableaux;

uses crt;

CONST

     MAX=50;

VAR

	tab_entier:array [1..MAX] of integer;
	tab_caractere:array[1..MAX] of char; 
	matrice_entier:array[1..MAX,1..MAX]of integer;

	i,j:integer;

	ma_chaine:string;
	tab_chaine:array[1..MAX]of string;


BEGIN

	clrscr;
	//Init tab_entier avec 0
	for i:=1 to MAX do
		BEGIN
		tab_entier[i]:=0;
		write(tab_entier[i]);
		END;

	readln;


	//Init tab caractere avec car a
	for  i:=1 to MAX do
		BEGIN
		tab_caractere[i]:='a';
		write(tab_caractere[i]);
		END;

	readln;

	for i:=1 to MAX do
		BEGIN
			for j:=1 to MAX do
				BEGIN
					matrice_entier[i,j]:=0;
					write(matrice_entier[i,j]);
				END;
				writeln;
		END;

		readln;

	ma_chaine:='Chaine';

	writeln(ma_chaine[2]);

	readln;

	tab_chaine[1]:='chaine';
	writeln(tab_chaine[1]);

	readln;


END.

