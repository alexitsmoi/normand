program Eval_pendu;

USES crt;

VAR
    mot, base : STRING;
    lettre: CHAR;
    ent,i,j,intru,restant,perdu : INTEGER;


 FUNCTION AffichagePendu(perdu:INTEGER) : STRING; //Affichage du pendu
BEGIN
  IF (perdu = 1) THEN
    BEGIN
      writeln('');
      writeln('');
      writeln('');
      writeln('');
      writeln('__');
    END;
    IF (perdu = 2) THEN
      BEGIN
        writeln('');
        writeln('|');
        writeln('|');
        writeln('|');
        writeln('|__');
      END;
      IF (perdu = 3) THEN
        BEGIN
          writeln('______');
          writeln('|');
          writeln('|');
          writeln('|');
          writeln('|__');
        END;
        IF (perdu = 4) THEN
          BEGIN
            writeln('______');
            writeln('|   |');
            writeln('|');
            writeln('|');
            writeln('|__');
          END;
          IF (perdu = 5) THEN
            BEGIN
              writeln('______');
              writeln('|   |');
              writeln('|   0');
              writeln('|');
              writeln('|__');
            END;
            IF (perdu = 6) THEN
              BEGIN
                writeln('______');
                writeln('|   |');
                writeln('|   0');
                writeln('|   |');
                writeln('|__');
              END;
              IF (perdu = 7) THEN
                BEGIN
                  writeln('______');
                  writeln('|   |');
                  writeln('|   0');
                  writeln('|  /|');
                  writeln('|__');
                END;
                IF (perdu = 8) THEN
                  BEGIN
                    writeln('______');
                    writeln('|   |');
                    writeln('|   0');
                    writeln('|  /|\');
                    writeln('|__');
                  END;
                  IF (perdu = 9) THEN
                    BEGIN
                      writeln('______');
                      writeln('|   |');
                      writeln('|   0');
                      writeln('|  /|\');
                      writeln('|__/');
                    END;
                    IF (perdu = 10) THEN
                      BEGIN
                        writeln('______');
                        writeln('|   |');
                        writeln('|   0');
                        writeln('|  /|\');
                        writeln('|__/ \');
                        writeln('Vous avez perdu');
                      END;
END;


FUNCTION Question(lettre:CHAR):STRING;
BEGIN
  REPEAT
  BEGIN            
    writeln('Choisissez un lettre');
    readln(lettre);    
    clrscr;
    intru := 0;
    FOR j := 1 TO ent DO
      BEGIN
        IF (lettre = mot[j])THEN
          BEGIN   
            IF (base[j] = '-')THEN
              BEGIN
                base[j] := lettre;                        
                intru := intru + 1;
              END;
          END;
          write(base[j]);
    END;
    writeln();
    IF (intru = 0)THEN
      BEGIN
        perdu := perdu + 1;
      END;
      writeln(AffichagePendu(perdu));    
    END;
    UNTIL (mot = base) OR (perdu = 10);
    IF(perdu=10)THEN
      BEGIN
        clrscr;
        writeln('vous avez perdu');
        readln();
      END;
END;


BEGIN //programme principale
  clrscr;
  perdu := 0;
  writeln('Saisissez un mot');
  readln(mot);
  clrscr;
  ent := LENGTH(mot);
  restant := ent;
  base := mot;    
  FOR i := 1 TO ent DO
    BEGIN
      base[i] := '-';
    END; 
    writeln(base);
    writeln(Question(lettre));
    IF (perdu<10)THEN
      BEGIN
        clrscr;
        writeln('VOUS AVEZ GAGNE');
        readln;
      END; 
END.