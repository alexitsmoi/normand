program boucle_1;
//but : afficher toute les touches jusqu’à la touche “Q“
//entrée : afficher toutes les lettres
// sortie : sortir de l’inviter de commande


uses crt;

VAR
	car : char;
BEGIN
	REPEAT
		writeln('Taper sur une touche');
		readln(car);
		writeln(car);
	UNTIL ((car = 'q') or (car = 'Q'))
END.

