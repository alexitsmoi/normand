
program condition_4;

uses crt;

VAR
	choix :integer;
BEGIN
	writeln('choix du menu');
	readln(choix);
	case choix of
		1 : writeln('nom du fichier : Algo1.txt');
		2 : writeln('NOM DU REPERTOIRE :C:');
		3 : writeln('nom complet: c:\Algo1.txt');
		else writeln('VALEUR ERRONE')
	END;
	readln;
END.

