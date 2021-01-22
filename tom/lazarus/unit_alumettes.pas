unit unit_alumettes;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

Type
  Tjoueur=(joueur1=1,joueur2);

type

  { TTmap }

  TTmap = class(TForm)
    BTour: TButton;
    LVictoire: TLabel;
    LTour: TLabel;
    LJoueur: TLabel;
    Tallum1: TImage;
    Tallum10: TImage;
    Tallum11: TImage;
    Tallum12: TImage;
    Tallum13: TImage;
    Tallum14: TImage;
    Tallum15: TImage;
    Tallum16: TImage;
    Tallum2: TImage;
    Tallum3: TImage;
    Tallum4: TImage;
    Tallum5: TImage;
    Tallum6: TImage;
    Tallum7: TImage;
    Tallum8: TImage;
    Tallum9: TImage;
    procedure BTourClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tallum13Click(Sender: TObject);
    procedure Tallum16Click(Sender: TObject);
    procedure Tallum1Click(Sender: TObject);
    procedure affiche_1 (mode:boolean);
    procedure affiche_2 (mode:boolean);
    procedure affiche_3 (mode:boolean);
    procedure affiche_4 (mode:boolean);
    procedure Tallum8Click(Sender: TObject);
  private

  public

  end;

var
  Tmap: TTmap;
  j:integer;
  verif:integer;

implementation

{$R *.lfm}

{ TTmap }
procedure TTmap.affiche_1 (mode:boolean);
begin
     Tallum1.Enabled:=mode;
     Tallum2.Enabled:=mode;
     Tallum3.Enabled:=mode;
     Tallum4.Enabled:=mode;
     Tallum5.Enabled:=mode;
     Tallum6.Enabled:=mode;
     Tallum7.Enabled:=mode;
end;
procedure TTmap.affiche_2(mode:boolean);

begin
     Tallum8.Enabled:=mode;
     Tallum9.Enabled:=mode;
     Tallum10.Enabled:=mode;
     Tallum11.Enabled:=mode;
     Tallum12.Enabled:=mode;
end;
procedure TTmap.affiche_3 (mode:boolean);
begin
     Tallum13.Enabled:=mode;
     Tallum14.Enabled:=mode;
     Tallum15.Enabled:=mode;
end;
procedure TTmap.affiche_4 (mode:boolean);
begin
     Tallum16.Enabled:=mode;
end;

procedure TTmap.Tallum1Click(Sender: TObject);
begin
     if verif<3 then
     begin
     verif:=verif+1;
     (sender as TImage).Visible:=false;
     end
     else
     begin
     (sender as TImage).Enabled:=false;
     end;

     affiche_1(true);
     affiche_2(false);
     affiche_3(false);
     affiche_4(false);
end;

procedure TTmap.Tallum8Click(Sender: TObject);
begin
     if verif<3 then
     begin
     verif:=verif+1;
     (sender as TImage).Visible:=false;
     end
     else
     begin
     (sender as TImage).Enabled:=false;
     end;

     affiche_1(false);
     affiche_2(true);
     affiche_3(false);
     affiche_4(false);
end;

procedure TTmap.Tallum13Click(Sender: TObject);
begin
     if verif<3 then
     begin
     verif:=verif+1;
     (sender as TImage).Visible:=false;
     end
     else
     begin
     (sender as TImage).Enabled:=false;
     end;

     affiche_1(false);
     affiche_2(false);
     affiche_3(true);
     affiche_4(false);
end;

procedure TTmap.Tallum16Click(Sender: TObject);
begin
     if verif<1 then
     begin
     verif:=verif+1;
     (sender as TImage).Visible:=false;
     end
     else
     begin
     (sender as TImage).Enabled:=false;
     end;

     affiche_1(false);
     affiche_2(false);
     affiche_3(false);
     affiche_4(true);
end;

procedure TTmap.FormCreate(Sender: TObject);
begin
     affiche_1(true);
     affiche_2(true);
     affiche_3(true);
     affiche_4(true);
      verif:=0;
      J:=0;
      randomize;
      J:=random(2)+1;
      IF j=1 then
      begin
           LJoueur.Caption:='Joueur 1';
           j:=j+1;
      end
      else if j=2 then
      begin
           Ljoueur.Caption:='Joueur 2';
           j:=j-1;
      end;
end;

procedure TTmap.BTourClick(Sender: TObject);
begin
     if LJoueur.Caption = 'Joueur 1' then
        LJoueur.Caption := 'Joueur 2'
     else
     begin
        LJoueur.Caption := 'Joueur 1';
     end;

     affiche_1(true);
     affiche_2(true);
     affiche_3(true);
     affiche_4(true);
     verif:=0;

     if (Tallum1.Visible=false) and (Tallum2.Visible=false) and (Tallum3.Visible=false) and (Tallum4.Visible=false) and (Tallum5.Visible=false) and (Tallum6.Visible=false) and (Tallum7.Visible=false) and (Tallum8.Visible=false) and (Tallum9.Visible=false) and (Tallum10.Visible=false) and (Tallum11.Visible=false) and (Tallum12.Visible=false) and (Tallum13.Visible=false) and (Tallum14.Visible=false) and (Tallum15.Visible=false) and (Tallum16.Visible=false) then
     begin
        if LJoueur.Caption = 'Joueur 1' then
        begin
           LVictoire.Caption:='Le joueur 1 a gagné';
        end
        else
        begin
           LVictoire.Caption:='Le joueur 2 a gagné';
        end;
     end;

end;

end.

