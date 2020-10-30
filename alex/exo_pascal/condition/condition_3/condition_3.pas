program condition_3;

uses crt;

VAR
	age : integer;
	categorie :char;
BEGIN
	writeln('que age a votre enfant');
	readln(age);
	case age of
		6..7 : writeln('POUSSINS');
		8..9 : writeln('PUPILLE');
		10,11 : writeln('MINIME');
		12: writeln('CADET');
		else writeln('valeur entree fausse')
	END;
	readln;
END.

