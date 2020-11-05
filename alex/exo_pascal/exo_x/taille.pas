program algo_x;

uses crt;

VAR
car : char;
 i, j, taille: integer;
BEGIN
    clrscr;
    writeln('Veuillez entrer le caractère');
    readln(car);
    writeln('Veuillez entrer la taille');
    readln(taille);
    for i:= 1 to taille do
        BEGIN
            for j:= 1 to taille do
                BEGIN
                    if((i=j) or (i + j = taille + 1))then
                        write(car)
                    else
                        write(' ');
                END;
        writeln;
        END;
    readln();
END.

