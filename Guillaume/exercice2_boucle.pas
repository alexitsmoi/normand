program exercie2;

uses crt;

VAR
	mot:String;

BEGIN
	
	REPEAT
		writeln('Veuillez taper un mot');
		readln(mot);
		writeln(mot);
	UNTIL(mot='fin');
	readln;

END.

