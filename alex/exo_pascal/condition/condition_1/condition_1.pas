program condition_exo_1;
//BUT : Savoir si l’élève a une note supérieure ou égale à 12
//ENTREE : Un élève entre sa moyenne 
//SORTIE : Indication si la note est supérieure ou égale à 12 ou non (donc réussite ou non)

uses crt;

VAR
	note:integer;
BEGIN
	writeln('Veuillez saisir votre note');
	readln(note);
	if(note >= 12)then
		writeln('vous avez reussi votre examen !')
	else
		writeln('echec de l examen');
	readln;
END.