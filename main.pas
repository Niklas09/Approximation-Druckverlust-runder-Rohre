unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TeeProcs, TeEngine, Chart, Grids, jpeg,
  Series, Math, ComCtrls, StrUtils, Buttons, Menus;

type
  TAnalyse = class(TForm)
    Einstellungen: TGroupBox;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    Chart1: TChart;
    Memo1: TMemo;
    Auswahl: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    Berechnen: TButton;
    Reset: TButton;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Image2: TImage;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Image3: TImage;
    Label24: TLabel;
    Label25: TLabel;
    ScrollBar1: TScrollBar;
    Label29: TLabel;
    StringGrid3: TStringGrid;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    StringGrid6: TStringGrid;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Edit5: TEdit;
    Edit6: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox7: TGroupBox;
    Edit7: TEdit;
    BitBtn4: TBitBtn;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label64: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    GroupBox6: TGroupBox;
    Definieren: TButton;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    MainMenu1: TMainMenu;
    Datei1: TMenuItem;
    Beenden1: TMenuItem;
    N1: TMenuItem;
    Hilfe1: TMenuItem;
    Info1: TMenuItem;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Series10: TLineSeries;
    Speichern1: TMenuItem;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    ffnen1: TMenuItem;
    Label112: TLabel;
    ScrollBar2: TScrollBar;
    ScrollBar3: TScrollBar;
    Label113: TLabel;
    Label123: TLabel;
    GroupBox8: TGroupBox;
    Label60: TLabel;
    Label62: TLabel;
    Label85: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label94: TLabel;
    Label38: TLabel;
    Edit8: TEdit;
    BitBtn3: TBitBtn;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    GroupBox9: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Button2: TButton;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Label5: TLabel;
    Label47: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label49: TLabel;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Label50: TLabel;
    Label68: TLabel;
    BitBtn5: TBitBtn;
    Label69: TLabel;
    Label80: TLabel;
    GroupBox10: TGroupBox;
    BitBtn6: TBitBtn;
    Edit2: TEdit;
    Label74: TLabel;
    Label75: TLabel;
    Label81: TLabel;
    Label86: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    Label63: TLabel;
    Label65: TLabel;
    Label87: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button3: TButton;
    Label26: TLabel;
    Label30: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure BerechnenClick(Sender: TObject);
    procedure ResetClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DefinierenClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AuswahlChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Beenden1Click(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure Info1Click(Sender: TObject);
    procedure Speichern1Click(Sender: TObject);
    procedure ffnen1Click(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure ScrollBar3Change(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Analyse: TAnalyse;
  Kontrolle_ZeichnenButton,selection,moodyDiagram:Integer;
  Anzahl_Stringgrid4,Anzahl_Stringgrid5:Integer;
  uebersetzter_Wert_max_SB1,c_min_SB1:Real;
  max_x_Wert_Tabellenwert_Approximation2,max_y_Wert_Tabellenwert_Approximation2,max_y_Wert_Approximation2:Real;
  max_x_Wert_Tabellenwert_Approximation1,max_y_Wert_Tabellenwert_Approximation1,max_y_Wert_Approximation1:Real;
  startIndex:Integer;
  scrollBar_enable:Integer;
  y_ScrollBar2,y_ScrollBar3:Real;
  Exponent_global,Faktor_a_global:Real;
  Faktor_c_Appr_1,Faktor_c_opt_Appr_1:Real;
  Faktor_c_opt_Appr_2,Exponent_n_Appr_2:Real;
  m_min,m_max,m_min_var,m_max_var:Real;
  aenderung_Auswahl_NormRohr:Integer;

const
  PI=3.141592654;


implementation

uses Hinweis_1, Rohrdefinition, Moody_Diagramm, Hinweise, Information,
  Eingabe_1, Tabellen;

{$R *.dfm}

// eigene Funktion 'Runden()'
function Runden(Zahl:Real; Nachkommastellen:Integer):Real;
var
  x:Real;
begin
  x:=IntPower(10, Nachkommastellen);
  Zahl:=round(Zahl*x);
  result:=Zahl/x;
end;

// eigene Funktion 'LadeStringGrid()'
procedure LadeStringGrid(x:Integer; Stringgrid:TStringGrid);
var
  i:Integer;
  Dateiname:String;
  Zeile:String;
  Position_Trennzeichen_1, Position_Trennzeichen_2:Integer;
begin
  // Auswahl zwischen Kupferrohr und Stahlrohr
  case x of
    0:
      Dateiname:='Tabellen\Cu-Rohr_8x1.txt';
    1:
      Dateiname:='Tabellen\Cu-Rohr_10x1.txt';
    2:
      Dateiname:='Tabellen\Cu-Rohr_12x1.txt';
    3:
      Dateiname:='Tabellen\Cu-Rohr_15x1.txt';
    4:
      Dateiname:='Tabellen\Cu-Rohr_18x1.txt';
    5:
      Dateiname:='Tabellen\Cu-Rohr_22x1.txt';
    6:
      Dateiname:='Tabellen\Cu-Rohr_28x1,5.txt';
    7:
      Dateiname:='Tabellen\Cu-Rohr_35x1,5.txt';
    8:
      Dateiname:='Tabellen\Cu-Rohr_42x1,5.txt';
    9:
      Dateiname:='Tabellen\Cu-Rohr_54x2.txt';
    10:
      Dateiname:='Tabellen\Stahlrohr_10.txt';
    11:
      Dateiname:='Tabellen\Stahlrohr_15.txt';
    12:
      Dateiname:='Tabellen\Stahlrohr_20.txt';
    13:
      Dateiname:='Tabellen\Stahlrohr_25.txt';
    14:
      Dateiname:='Tabellen\Stahlrohr_32.txt';
    15:
      Dateiname:='Tabellen\Stahlrohr_40.txt';
    16:
      Dateiname:='Tabellen\Stahlrohr_50.txt';
    17:
      Dateiname:='Tabellen\Stahlrohr_65.txt';
    18:
      Dateiname:='Tabellen\Stahlrohr_80.txt';
    19:
      Dateiname:='Tabellen\Stahlrohr_100.txt';
    20:
      Dateiname:='Tabellen\Stahlrohr_125.txt';
    end;

  // Inhalt der txt-Datei ins Memo1 laden
  Analyse.Memo1.Lines.LoadFromFile(Analyse.Label112.Caption+'\'+Dateiname);

  i:=1;

  // txt-Datei ins Stringgrid1 laden
  // (-> Umweg über ein Memo1)
  Repeat
    // in der ersten Zeile des Memo1 beginnen
    Zeile:=Analyse.Memo1.Lines[i-1];

    // die Position der zwei Trennzeichen ';' ermitteln
    Position_Trennzeichen_1:=Pos(char(59), Zeile);
    Position_Trennzeichen_2:=PosEx(char(59), Zeile, Position_Trennzeichen_1+1);

    // Geschwindigkeiten in die erste Spalte des Stringgrid1 laden
    Stringgrid.Cells[0,i]:=Copy(Zeile,1,Position_Trennzeichen_1-1);

    // x-Werte (=Massenstrom) in die zweite Spalte des Stringgrid1 laden
    Stringgrid.Cells[1,i]:=FloatToStr(Runden(StrToFloat(Copy(Zeile,Position_Trennzeichen_1+1,8)),2));

    // y-Werte (=Druckverlust) in die dritte Spalte des Stringgrid1 laden
    Stringgrid.Cells[2,i]:=Copy(Zeile,Position_Trennzeichen_2+1,Length(Zeile)-Position_Trennzeichen_2+1);

    i:=i+1;
    StringGrid.RowCount:=i;
  until i>Analyse.Memo1.Lines.Count;

end;

// eigene Funktion 'Messwerte_laden()'
procedure Messwerte_laden(x:Integer; Stringgrid:TStringGrid);
var
  i,Anzahl,spalte_1,spalte_2,spalte_3:Integer;
  stringgrid_Messwerte:TStringGrid;
begin
  // Cu 8x1
  if (x=0) then
    begin
      spalte_1:=0;
      spalte_2:=1;
      spalte_3:=2;
      Anzahl:=17;
      stringgrid_Messwerte:=Messwerte.Stringgrid2;
    end
    else
      begin
        // Cu 10x1
        if (x=1) then
          begin
            spalte_1:=0;
            spalte_2:=1;
            spalte_3:=2;
            Anzahl:=25;
            stringgrid_Messwerte:=Messwerte.Stringgrid3;
          end
          else
            begin
              // Cu 12x1
              if (x=2) then
                begin
                  spalte_1:=0;
                  spalte_2:=1;
                  spalte_3:=2;
                  Anzahl:=30;
                  stringgrid_Messwerte:=Messwerte.Stringgrid4;
                end
                else
                  begin
                    // Cu 15x1
                    if (x=3) then
                      begin
                        spalte_1:=3;
                        spalte_2:=4;
                        spalte_3:=5;
                        Anzahl:=30;
                        stringgrid_Messwerte:=Messwerte.Stringgrid4;
                      end
                      else
                        begin
                          // Cu 18x1
                          if (x=4) then
                            begin
                              spalte_1:=6;
                              spalte_2:=7;
                              spalte_3:=8;
                              Anzahl:=30;
                              stringgrid_Messwerte:=Messwerte.Stringgrid4;
                            end
                            else
                              begin
                                // Cu 22x1
                                if (x=5) then
                                  begin
                                    spalte_1:=9;
                                    spalte_2:=10;
                                    spalte_3:=11;
                                    Anzahl:=30;
                                    stringgrid_Messwerte:=Messwerte.Stringgrid4;
                                  end
                                  else
                                    begin
                                      // Cu 28x1,5
                                      if (x=6) then
                                        begin
                                          spalte_1:=12;
                                          spalte_2:=13;
                                          spalte_3:=14;
                                          Anzahl:=30;
                                          stringgrid_Messwerte:=Messwerte.Stringgrid4;
                                        end
                                        else
                                          begin
                                             // Cu 35x1,5
                                             if (x=7) then
                                              begin
                                                spalte_1:=15;
                                                spalte_2:=16;
                                                spalte_3:=17;
                                                Anzahl:=30;
                                                stringgrid_Messwerte:=Messwerte.Stringgrid4;
                                              end
                                              else
                                                begin
                                                  // Cu 42x1,5
                                                  if (x=8) then
                                                    begin
                                                      spalte_1:=18;
                                                      spalte_2:=19;
                                                      spalte_3:=20;
                                                      Anzahl:=30;
                                                      stringgrid_Messwerte:=Messwerte.Stringgrid4;
                                                    end
                                                    else
                                                      begin
                                                        // Cu 54x2
                                                        if (x=9) then
                                                          begin
                                                            spalte_1:=21;
                                                            spalte_2:=22;
                                                            spalte_3:=23;
                                                            Anzahl:=30;
                                                            stringgrid_Messwerte:=Messwerte.Stringgrid4;
                                                          end
                                                          else
                                                            begin
                                                              // Stahl DN10
                                                              if (x=10) then
                                                                begin
                                                                  spalte_1:=0;
                                                                  spalte_2:=1;
                                                                  spalte_3:=2;
                                                                  Anzahl:=30;
                                                                  stringgrid_Messwerte:=Messwerte.Stringgrid5;
                                                                end
                                                                else
                                                                  begin
                                                                    // Stahl DN15
                                                                    if (x=11) then
                                                                      begin
                                                                        spalte_1:=3;
                                                                        spalte_2:=4;
                                                                        spalte_3:=5;
                                                                        Anzahl:=30;
                                                                        stringgrid_Messwerte:=Messwerte.Stringgrid5;
                                                                      end
                                                                      else
                                                                        begin
                                                                          // Stahl DN20
                                                                          if (x=12) then
                                                                            begin
                                                                              spalte_1:=6;
                                                                              spalte_2:=7;
                                                                              spalte_3:=8;
                                                                              Anzahl:=30;
                                                                              stringgrid_Messwerte:=Messwerte.Stringgrid5;
                                                                            end
                                                                            else
                                                                              begin
                                                                                // Stahl DN25
                                                                                if (x=13) then
                                                                                  begin
                                                                                    spalte_1:=9;
                                                                                    spalte_2:=10;
                                                                                    spalte_3:=11;
                                                                                    Anzahl:=30;
                                                                                    stringgrid_Messwerte:=Messwerte.Stringgrid5;
                                                                                  end
                                                                                  else
                                                                                    begin
                                                                                      // Stahl DN32
                                                                                      if (x=14) then
                                                                                        begin
                                                                                          spalte_1:=12;
                                                                                          spalte_2:=13;
                                                                                          spalte_3:=14;
                                                                                          Anzahl:=30;
                                                                                          stringgrid_Messwerte:=Messwerte.Stringgrid5;
                                                                                        end
                                                                                        else
                                                                                          begin
                                                                                            // Stahl DN40
                                                                                            if (x=15) then
                                                                                              begin
                                                                                                spalte_1:=15;
                                                                                                spalte_2:=16;
                                                                                                spalte_3:=17;
                                                                                                Anzahl:=30;
                                                                                                stringgrid_Messwerte:=Messwerte.Stringgrid5;
                                                                                              end
                                                                                              else
                                                                                                begin
                                                                                                  // Stahl DN50
                                                                                                  if (x=16) then
                                                                                                    begin
                                                                                                      spalte_1:=18;
                                                                                                      spalte_2:=19;
                                                                                                      spalte_3:=20;
                                                                                                      Anzahl:=30;
                                                                                                      stringgrid_Messwerte:=Messwerte.Stringgrid5;
                                                                                                    end
                                                                                                    else
                                                                                                      begin
                                                                                                        // Stahl DN65
                                                                                                        if (x=17) then
                                                                                                          begin
                                                                                                            spalte_1:=21;
                                                                                                            spalte_2:=22;
                                                                                                            spalte_3:=23;
                                                                                                            Anzahl:=30;
                                                                                                            stringgrid_Messwerte:=Messwerte.Stringgrid5;
                                                                                                          end
                                                                                                          else
                                                                                                            begin
                                                                                                              // Stahl DN80
                                                                                                              if (x=18) then
                                                                                                                begin
                                                                                                                  spalte_1:=24;
                                                                                                                  spalte_2:=25;
                                                                                                                  spalte_3:=26;
                                                                                                                  Anzahl:=30;
                                                                                                                  stringgrid_Messwerte:=Messwerte.Stringgrid5;
                                                                                                                end
                                                                                                                else
                                                                                                                  begin
                                                                                                                    // Stahl DN100
                                                                                                                    if (x=19) then
                                                                                                                      begin
                                                                                                                        spalte_1:=27;
                                                                                                                        spalte_2:=28;
                                                                                                                        spalte_3:=29;
                                                                                                                        Anzahl:=30;
                                                                                                                        stringgrid_Messwerte:=Messwerte.Stringgrid5;
                                                                                                                      end
                                                                                                                      else
                                                                                                                        begin
                                                                                                                          // Stahl DN125
                                                                                                                          if (x=20) then
                                                                                                                            begin
                                                                                                                              spalte_1:=30;
                                                                                                                              spalte_2:=31;
                                                                                                                              spalte_3:=32;
                                                                                                                              Anzahl:=30;
                                                                                                                              stringgrid_Messwerte:=Messwerte.Stringgrid5;
                                                                                                                            end;
                                                                                                                        end;
                                                                                                                  end;
                                                                                                            end;
                                                                                                      end;
                                                                                                end;
                                                                                          end;
                                                                                    end;
                                                                              end;
                                                                        end;
                                                                  end;
                                                            end;
                                                      end;
                                                end;
                                          end;
                                    end;
                              end;
                        end;
                  end;
            end;
      end;

  // Messwerte zuordnen
  for i:=1 to Anzahl do
    begin
      Stringgrid.Cells[0,i]:=stringgrid_Messwerte.Cells[spalte_1,i];
      Stringgrid.Cells[1,i]:=stringgrid_Messwerte.Cells[spalte_2,i];
      Stringgrid.Cells[2,i]:=stringgrid_Messwerte.Cells[spalte_3,i];
    end;
end;

// eigene Funktion 'Messwerte_einzeichnen()'
procedure Messwerte_einzeichnen();
var
  x_value,y_value:Real;
  i,Anzahl,j:Integer;
  dp_vorher,dp_nachher,dp,m_vorher,m_nachher,m:Real;
  Merker_x1, Merker_y1, Merker_x2, Merker_y2:Real;
  x1,x2,y1,y2,x,y:Real;
begin
  if Analyse.Auswahl.ItemIndex<=9 then
    begin
      Analyse.Chart1.Series[0].Title:='DIN EN 1057';
    end;
  if Analyse.Auswahl.ItemIndex>=10 then
    begin
      if Analyse.Auswahl.ItemIndex<=14 then
        begin
          Analyse.Chart1.Series[0].Title:='DIN 2440';
        end;
    end;
  if Analyse.Auswahl.ItemIndex>=15 then
    begin
      if Analyse.Auswahl.ItemIndex<=20 then
        begin
          Analyse.Chart1.Series[0].Title:='DIN 2448'
        end;
    end;

  // (Funktion LadeStringGrid() braucht ein Unterverzeichnis)
  //LadeStringGrid(Analyse.Auswahl.ItemIndex, Analyse.StringGrid1);
  //
  // (Funktion Messwerte_laden() braucht kein Unterverzeichnis)
  Messwerte_laden(Analyse.Auswahl.ItemIndex, Analyse.StringGrid1);

  {*// Variante 2 mit Tabelle (Druckverlust und Massenstrom linear interpolieren)
  // Werte linear interpolieren
  // -> Massenstrom linear interpolieren
  case Analyse.Auswahl.ItemIndex of
    0:
      Anzahl:=17;
    1:
      Anzahl:=25;
    else
      Anzahl:=30;
    end;

  Anzahl:=Anzahl-1;
  j:=1;
  x1:=StrToFLoat(Analyse.StringGrid1.Cells[2,1]);
  y1:=StrToFloat(Analyse.StringGrid1.Cells[1,1]);
  Analyse.StringGrid4.Cells[0,j]:=FloatToStr(x1);
  Analyse.StringGrid4.Cells[1,j]:=FloatToStr(y1);
  x:=x1;

  for i:=1 to Anzahl do
    begin
      x1:=StrToFloat(Analyse.StringGrid1.Cells[2,i]);
      y1:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);

      if(x>=1.0) then
        begin
          x:=x+0.1;
          //x:=x+0.5
        end
        else
          begin
            if(x<1.0) then
              begin
                x:=x+0.01;
                //x:=x+0.5
              end;
          end;

      x2:=StrToFloat(Analyse.StringGrid1.Cells[2,i+1]);
      y2:=StrToFloat(Analyse.StringGrid1.Cells[1,i+1]);

      while(x<x2) do
        begin
          if(x>x1) then
            begin
              // interpolieren
              j:=j+1;
              y:=((y2-y1)/(x2-x1))*(x-x1)+y1;

              Analyse.StringGrid4.Cells[0,j]:=FloatToStr(x);
              Analyse.StringGrid4.Cells[1,j]:=FloatToSTr(y);

              if(x>=1.0) then
                begin
                  x:=x+0.1;
                  //x:=x+0.5
                end
                else
                  begin
                    if(x<1.0) then
                      begin
                        x:=x+0.01;
                        //x:=x+0.5
                      end;
                  end;

            end;
        end;

      j:=j+1;
      Analyse.StringGrid4.Cells[0,j]:=FloatToStr(x2);
      Analyse.StringGrid4.Cells[1,j]:=FloatToStr(y2);

    end;

  if (Analyse.Auswahl.ItemIndex<=9) then
    begin
      Analyse.StringGrid4.Rows[j].Clear;
      Anzahl_Stringgrid4:=j-1;
    end
    else
      begin
        if (Analyse.Auswahl.ItemIndex>10) then
          begin
            Anzahl_Stringgrid4:=j;
          end;
      end;


  // Variante 2 mit Tabelle (Druckverlust und Massenstrom linear interpolieren)
  // Werte linear interpolieren
  // -> Druckverlust linear interpolieren
  case Analyse.Auswahl.ItemIndex of
    0:
      Anzahl:=17;
    1:
      Anzahl:=25;
    else
      Anzahl:=30;
    end;

  Anzahl:=Anzahl-1;
  j:=1;
  x1:=StrToFloat(Analyse.StringGrid1.Cells[1,1]);
  y1:=StrToFloat(Analyse.StringGrid1.Cells[2,1]);
  Analyse.StringGrid5.Cells[0,j]:=FloatToStr(x1);
  Analyse.StringGrid5.Cells[1,j]:=FloatToStr(y1);

  for i:=1 to Anzahl do
    begin
      x1:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
      y1:=StrToFloat(Analyse.StringGrid1.Cells[2,i]);
      //x:=x1+1;
      x:=x1+50;
      x2:=StrToFloat(Analyse.StringGrid1.Cells[1,i+1]);
      y2:=StrToFloat(Analyse.StringGrid1.Cells[2,i+1]);

      while(x<x2) do
        begin
          if(x>x1) then
            begin
              // interpolieren
              j:=j+1;
              y:=((y2-y1)/(x2-x1))*(x-x1)+y1;

              Analyse.StringGrid5.Cells[0,j]:=FloatToStr(x);
              Analyse.StringGrid5.Cells[1,j]:=FloatToStr(y);
              //x:=x+1;
              x:=x+50;
            end;

        end;

      j:=j+1;
      Analyse.StringGrid5.Cells[0,j]:=FloatToStr(x2);
      Analyse.StringGrid5.Cells[1,j]:=FloatToStr(y2);

    end;
  Anzahl_Stringgrid5:=j;*}


  // Diagramm
  case Analyse.Auswahl.ItemIndex of
    0:
      Anzahl:=17;
    1:
      Anzahl:=25;
    else
      Anzahl:=30;
    end;

  // untere und obere Grenze einstellen
  Analyse.Chart1.Series[5].Title:='untere Grenze';
  Analyse.Chart1.Series[6].Title:='obere Grenze';
  Analyse.Chart1.Series[5].AddXY(StrToFloat(Analyse.StringGrid1.Cells[1,1]), 0);
  Analyse.Chart1.Series[6].AddXY(StrToFloat(Analyse.StringGrid1.Cells[1,Anzahl]), 0);

  m_min:=StrToFloat(Analyse.StringGrid1.Cells[1,1]);
  Analyse.Label7.Caption:=Analyse.StringGrid1.Cells[1,1]+' kg/h';
  m_max:=StrToFloat(Analyse.StringGrid1.Cells[1, Anzahl]);
  Analyse.Label8.Caption:=Analyse.StringGrid1.Cells[1, Anzahl]+' kg/h';
  m_min_var:=StrToFloat(Analyse.StringGrid1.Cells[1,1]);
  Analyse.Label113.Caption:=Analyse.StringGrid1.Cells[1,1]+' kg/h';
  m_max_var:=StrToFloat(Analyse.StringGrid1.Cells[1, Anzahl]);
  Analyse.Label123.Caption:=Analyse.StringGrid1.Cells[1, Anzahl]+' kg/h';
  {*Analyse.Label7.Caption:=Analyse.StringGrid1.Cells[1,1];
  Analyse.Label8.Caption:=Analyse.StringGrid1.Cells[1, Anzahl];
  Analyse.Label113.Caption:=Analyse.StringGrid1.Cells[1,1];
  Analyse.Label123.Caption:=Analyse.StringGrid1.Cells[1, Anzahl];*}

  if Analyse.Auswahl.ItemIndex<10 then
    begin
      Analyse.Chart1.Series[5].AddXY(StrToFloat(Analyse.StringGrid1.Cells[1,1]), 8);
      Analyse.Chart1.Series[6].AddXY(StrToFloat(Analyse.StringGrid1.Cells[1,Anzahl]), 8);
    end;
  if Analyse.Auswahl.ItemIndex>=10 then
    begin
      Analyse.Chart1.Series[5].AddXY(StrToFloat(Analyse.StringGrid1.Cells[1,1]), 5);
      Analyse.Chart1.Series[6].AddXY(StrToFloat(Analyse.StringGrid1.Cells[1,Anzahl]), 5);
    end;

  for i:=1 to Anzahl do
    begin
      x_value:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
      y_value:=StrToFloat(Analyse.StringGrid1.Cells[2,i]);
      Analyse.Chart1.Series[0].AddXY(x_value, y_value);
    end;
end;

// eigene Funktion 'Massenstrom_oder_Druckverlust_rechnerisch_Modell1()'
procedure Massenstrom_oder_Druckverlust_rechnerisch_Modell1(typ:Integer; Stringgrid:TStringGrid; Spalte:Integer; c:Real);
var
  x:Real;
  i, Anzahl:Integer;
begin
  // -> Massenstrom rechnerisch mit 2. Potenz bestimmen
  if typ=0 then
    begin
        Anzahl:=Anzahl_Stringgrid4;
    end;
  // -> Druckverlust rechnerisch mit 2. Potenz bestimmen
  if typ=1 then
    begin
      Anzahl:=Anzahl_Stringgrid5;
    end;

    //i:=1;
    //while (Stringgrid.Cells[Spalte,i]<>'') do
    for i:=1 to Anzahl do
      begin
        // -> Massenstrom
        if typ=0 then
          begin
            x:=StrToFloat(Stringgrid.Cells[Spalte,i])/c;
            Stringgrid.Cells[2,i]:=FloatToStr(Exp(Ln(x)/2));
          end;
        // -> Druckverlust
        if typ=1 then
          begin
            Stringgrid.Cells[2,i]:=FloatToStr(c*StrToFloat(Stringgrid.Cells[Spalte,i])*StrToFloat(Stringgrid.Cells[Spalte,i]));
          end;
        //i:=i+1;
      end;
end;

// eigene Funktion Massenstrom_oder_Druckverlust_rechnerisch_Modell2()'
procedure Massenstrom_oder_Druckverlust_rechnerisch_Modell2(typ:Integer; Stringgrid:TStringGrid; Spalte:Integer);
var
  i,Anzahl:Integer;
  delta_p, x, n:Real;
begin

  // -> Massenstrom rechnerisch mit n. Potenz bestimmen
  if typ=0 then
    begin
      Anzahl:=Anzahl_Stringgrid4;
    end;
  // -> Druckverlust rechnerisch mit n. Potenz bestimmen
  if typ=1 then
    begin
      Anzahl:=Anzahl_Stringgrid5;
    end;

    for i:=1 to Anzahl do
      begin
        // ---> Berechnung des Massenstroms : m' = e^(ln(x)/n) (= n-te Wurzel!)
        if typ=0 then
          begin
            delta_p:=StrToFloat(Stringgrid.Cells[Spalte,i]);
            x:=delta_p/StrToFloat(Analyse.Label21.Caption);
            n:=StrToFloat(Analyse.Label22.Caption);
            Stringgrid.Cells[3,i]:=FloatToStr(Exp(Ln(x)/n));
          end;
        // ---> Druckverlust
        if typ=1 then
          begin
            n:=StrToFloat(Analyse.Label22.Caption);
            Stringgrid.Cells[3,i]:=FloatToStr(StrToFloat(Analyse.Label21.Caption)*Power(StrToFloat(Stringgrid.Cells[0,i]), n));
          end;
      end;
end;

// eigene Funktion Fehler_Massenstrom_oder_Druckverlust()'
procedure Fehler_Massenstrom_oder_Druckverlust(typ:Integer; x:Integer; Stringgrid:TStringGrid; Spalte_1:Integer; Spalte_2:Integer);
var
  i, Anzahl:Integer;
  Ergebnis:Real;
begin
  // -> Massenstrom
  if typ=0 then
    begin
      Anzahl:=Anzahl_Stringgrid4;
    end;

  // -> Druckverlust
  if typ=1 then
    begin
      Anzahl:=Anzahl_Stringgrid5;
    end;

  // Fehler Massenstrom_rechnerisch_1/Massenstrom_graphisch
  // bzw. Fehler Druckverlust_rechnerisch_1/Druckverlust_graphisch
  if x=0 then
    begin
      //i:=1;
      //while (Stringgrid.Cells[Spalte_1,i]<>'') do
      for i:=1 to Anzahl do
        begin
          Ergebnis:=((StrToFloat(Stringgrid.Cells[Spalte_1,i])/StrToFloat(Stringgrid.Cells[Spalte_2,i]))-1)*100;

          if Ergebnis<0 then
            begin
              Ergebnis:=Ergebnis*-1;
            end;

          Stringgrid.Cells[4,i]:=FloatToStr(Ergebnis);
          //i:=i+1;
        end;
    end;

  // Fehler Massenstrom_rechnerisch_2/Massenstrom_graphisch
  // bzw. Fehler Druckverlust_rechnerisch_2/Druckverlust_graphisch
  if x=1 then
    begin
      //i:=1;
      //while (Stringgrid.Cells[Spalte_1,i]<>'') do
      for i:=1 to Anzahl do
        begin
          Ergebnis:=((StrToFloat(Stringgrid.Cells[Spalte_1,i])/StrToFloat(Stringgrid.Cells[Spalte_2,i]))-1)*100;

          if Ergebnis<0 then
            begin
              Ergebnis:=Ergebnis*-1;
            end;

          Stringgrid.Cells[5,i]:=FloatToStr(Ergebnis);
          //i:=i+1;
        end;
    end;

end;

// eigene Funktion 'Parabel_manipulieren()' (= Approximation_1)
procedure Parabel_manipulieren();
var
  x, y:Real;
  x_min, y_min:Real;
  x_max, y_max:Real;
  c_max:Real;
  i:Integer;
  Anzahl:Integer;
  nachkommastellen:Integer;
begin
  Analyse.Chart1.Series[1].Title:='Approximation 1';

  case Analyse.Auswahl.ItemIndex of
    0:
      Anzahl:=17;
    1:
      Anzahl:=25;
    else
      Anzahl:=30
    end;

  case Analyse.Auswahl.ItemIndex of
    0:
      nachkommastellen:=4;
    1:
      nachkommastellen:=4;
    2:
      nachkommastellen:=4;
    3:
      nachkommastellen:=8;
    4:
      nachkommastellen:=8;
    5:
      nachkommastellen:=9;
    6:
      nachkommastellen:=9;
    7:
      nachkommastellen:=10;
    8:
      nachkommastellen:=10;
    9:
      nachkommastellen:=11;
    10:
      nachkommastellen:=8;
    11:
      nachkommastellen:=8;
    12:
      nachkommastellen:=9;
    13:
      nachkommastellen:=9;
    14:
      nachkommastellen:=10;
    15:
      nachkommastellen:=10;
    16:
      nachkommastellen:=11;
    17:
      nachkommastellen:=12;
    18:
      nachkommastellen:=12;
    19:
      nachkommastellen:=12;
    20:
      nachkommastellen:=13;
    end;

  x_min:=m_min;
  x_max:=m_max;
  //x_min:=StrToFloat(Analyse.Label7.Caption);
  //x_max:=StrToFloat(Analyse.Label8.Caption);
  y_min:=StrToFloat(Analyse.StringGrid1.Cells[2,1]);
  y_max:=StrToFloat(Analyse.StringGrid1.Cells[2,Anzahl]);
  c_max:=y_min/(x_min*x_min);
  c_min_SB1:=y_max/(x_max*x_max);
  uebersetzter_Wert_max_SB1:=c_max-c_min_SB1;
  Faktor_c_Appr_1:=c_min_SB1;
  Analyse.Label25.Caption:=FloatToStr(Runden(c_min_SB1, nachkommastellen))+' mbar/((kg/h)²)';
  //Analyse.Label25.Caption:=FloatToStr(Runden(c_min_SB1,nachkommastellen));

  for i:=1 to Anzahl do
    begin
      x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
      y:=c_min_SB1*(x*x);
      Analyse.Chart1.Series[1].AddXY(x, y);
    end;
  Analyse.ScrollBar1.Position:=0;
end;

{*// eigene Funktion 'Parabel_manipulieren_mit_variablen_Grenzen()' (= Approximation_1 mit variablen Grenzen)
procedure Parabel_manipulieren_mit_variablen_Grenzen();
var
  i, Anzahl_StringGrid1, Anzahl_StringGrid5:Integer;
  x, y, x_min, x_max, y_min, y_max:Real;
  l, l1, l2:Real;
  j:Integer;
begin
  Analyse.Chart1.Series[1].Clear;
  Analyse.Chart1.Series[2].Clear;

  case Analyse.Auswahl.ItemIndex of
    0:
      Anzahl_StringGrid5:=27;
    1:
      Anzahl_StringGrid5:=73;
    2:
      Anzahl_StringGrid5:=140;
    3:
      Anzahl_StringGrid5:=286;
    4:
      Anzahl_StringGrid5:=496;
    5:
      Anzahl_StringGrid5:=897;
    6:
      Anzahl_StringGrid5:=1633;
    7:
      Anzahl_StringGrid5:=3141;
    8:
      Anzahl_StringGrid5:=5331;
    9:
      Anzahl_StringGrid5:=10291;
    10:
      Anzahl_StringGrid5:=184;
    11:
      Anzahl_StringGrid5:=357;
    12:
      Anzahl_StringGrid5:=785;
    13:
      Anzahl_StringGrid5:=1461;
    14:
      Anzahl_StringGrid5:=3061;
    15:
      Anzahl_StringGrid5:=3911;
    16:
      Anzahl_StringGrid5:=7861;
    17:
      Anzahl_StringGrid5:=17961;
    18:
      Anzahl_StringGrid5:=27361;
    19:
      Anzahl_StringGrid5:=46201;
    20:
      Anzahl_StringGrid5:=81501;
    end;

  case Analyse.Auswahl.ItemIndex of
    0:
      Anzahl_StringGrid1:=17;
    1:
      Anzahl_StringGrid1:=25;
    else
      Anzahl_StringGrid1:=30;
    end;

  x_min:=StrToFloat(Analyse.StringGrid1.Cells[1,1]);
  x_max:=StrToFloat(Analyse.StringGrid1.Cells[1,Anzahl_StringGrid1]);
  l1:=StrToFloat(Analyse.Label113.Caption)-x_min;
  l2:=x_max-StrToInt(Analyse.Label123.Caption);
  l:=Anzahl_StringGrid5-l1-l2;
  y_max:=StrToFloat(Analyse.StringGrid1.Cells[2,Anzahl_StringGrid1]);
  c_min_SB1:=y_max/(x_max*x_max);

  for i:=1 to Anzahl_StringGrid5 do
    begin
      if StrToFloat(Analyse.StringGrid5.Cells[0,i])=Runden(StrToFloat(Analyse.Label113.Caption), 0) then
        begin
          j:=i;
        end;
    end;

  for i:=1 to Trunc(l) do
    begin
      x:=StrToFloat(Analyse.StringGrid5.Cells[0,j]);
      y:=c_min_SB1*(x*x);
      Analyse.Chart1.Series[1].AddXY(x,y);
      j:=j+1;
    end;
end;*}

// eigene Funktion 'y_Kriterium()'
procedure y_Kriterium(c:Real);
var
  i,x:Integer;
  y_Approximation:Real;
  y_max_Messwert, y_max_manipuliert:Real;
  Anzahl:Integer;
  Fehler, Fehler_neu:Real;
  Fehler_in_Prozent, Fehler_in_Prozent_neu:Real;
  max_y_Wert_Approximation_1, max_y_Wert_Tabellenwerte, max_x_Wert_Tabellenwerte:Real;
  index:Integer;
  m,p:Real;
begin
  Analyse.Chart1.Series[2].Clear;

  // vorgegebenes Rohr aus der Tabelle
  if selection=1 then
    begin
      index:=1;

      case Analyse.Auswahl.ItemIndex of
        0:
          Anzahl:=17;
        1:
          Anzahl:=25;
        else
          Anzahl:=30;
        end;
    end
    else
      // selbst definiertes Rohr
      if selection=2 then
        begin
          Anzahl:=StrToInt(eigenesRohr.Label21.Caption);
          // (wenn der index=1 ist, dann wird nicht berücksichtigt, dass im laminaren Bereich nicht approximiert werden darf!!!)
          index:=startIndex;
        end;

  x:=index;
  for i:=index to Anzahl do
    begin
      if StrToFloat(Analyse.StringGrid1.Cells[2,i])=0.0 then
        begin
          
        end
        else
          begin
            // y-Wert der Kurve Approximation_1 bilden und den absoluten und relativen Fehler berechnen
            y_Approximation:=c*(StrToFloat(Analyse.StringGrid1.Cells[1,i])*StrToFloat(Analyse.StringGrid1.Cells[1,i]));
            Fehler_in_Prozent:=100*((StrToFloat(Analyse.StringGrid1.Cells[2,i])-y_Approximation)/StrToFloat(Analyse.StringGrid1.Cells[2,i]));
            Fehler:=StrToFloat(Analyse.StringGrid1.Cells[2,i])-y_Approximation;

            // Betrag bilden
            if Fehler<0 then
              begin
                Fehler:=Fehler*-1;
                Fehler_in_Prozent:=Fehler_in_Prozent*-1;
              end;
      
            // den größten Wert suchen
            if i=index then
              begin
                Fehler_neu:=Fehler;
                Fehler_in_Prozent_neu:=Fehler_in_Prozent;
                max_y_Wert_Approximation_1:=y_Approximation;
                max_y_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[2,i]);
                max_x_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
              end
              else
                begin
                  if i=x then
                    begin
                      if Fehler>Fehler_neu then
                        begin
                          Fehler_neu:=Fehler;
                          Fehler_in_Prozent_neu:=Fehler_in_Prozent;
                          max_y_Wert_Approximation_1:=y_Approximation;
                          max_y_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[2,i]);
                          max_x_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                        end;

                    end;
                end;
            x:=x+1;

            Analyse.StringGrid3.Cells[6,i]:=FloatToStr(Fehler);
            Analyse.StringGrid3.Cells[7,i]:=FloatToStr(Fehler_neu);
          end;
    end;

  // -> max. Fehler als Zahl und im Diagramm anzeigen
  Analyse.Label47.Caption:=FloatToStr(Runden(Fehler_neu, 4))+' mbar bzw. '+FloatToStr(Runden(Fehler_in_Prozent_neu, 4))+' %';
  //Analyse.Label47.Caption:=FloatToStr(Runden(Fehler_neu, 4));
  //Analyse.Label47.Caption:=FloatToStr(Fehler_neu);
  //Analyse.Label48.Caption:=FloatToStr(Runden(Fehler_in_Prozent_neu, 4));
  //Analyse.Label48.Caption:=FloatToStr(Fehler_in_Prozent);

  //
  if (StrToInt(Analyse.Label11.Caption)=1) then
    begin
      max_x_Wert_Tabellenwerte:=StrToFloat(eigenesRohr.Label25.Caption);
      max_y_Wert_Tabellenwerte:=StrToFloat(eigenesRohr.Label26.Caption);
      max_y_Wert_Approximation_1:=StrToFloat(eigenesRohr.Label27.Caption);
      //Analyse.Label11.Caption:='0';
    end;

  Analyse.Chart1.Series[2].Title:='max. Abweichung Appr. 1';
  Analyse.Chart1.Series[2].AddXY(max_x_Wert_Tabellenwerte, max_y_Wert_Tabellenwerte);
  Analyse.Chart1.Series[2].AddXY(max_x_Wert_Tabellenwerte, max_y_Wert_Approximation_1);
  max_x_Wert_Tabellenwert_Approximation1:=max_x_Wert_Tabellenwerte;
  max_y_Wert_Tabellenwert_Approximation1:=max_y_Wert_Tabellenwerte;
  max_y_Wert_Approximation1:=max_y_Wert_Approximation_1;
end;

// eigene Funktion 'y_Kriterium_bei_variablen_Grenzen()'
// -> als Basis wird das StringGrid1 verwendet (!)
procedure y_Kriterium_bei_variablen_Grenzen(c:Real);
var
  i,x,Anzahl:Integer;
  y_Approximation:Real;
  y_max_Messwert, y_max_manipuliert:Real;
  Fehler, Fehler_neu:Real;
  Fehler_in_Prozent, Fehler_in_Prozent_neu:Real;
  max_y_Wert_Approximation_1, max_y_Wert_Tabellenwerte, max_x_Wert_Tabellenwerte:Real;
  index_unten_von_x_nach, index_oben_von_x_vor:Integer;
  untereGrenze, obereGrenze:Real;
begin
  Analyse.Chart1.Series[2].Clear;

  case Analyse.Auswahl.ItemIndex of
    0:
      Anzahl:=17;
    1:
      Anzahl:=25;
    else
      Anzahl:=30;
    end;

  untereGrenze:=m_min_var;
  obereGrenze:=m_max_var;
  //untereGrenze:=StrToFloat(Analyse.Label113.Caption);
  //obereGrenze:=StrToFloat(Analyse.Label123.Caption);

  // -> Werte zwischen den eingestellten Grenzen bestimmen
  // ---> untere Grenze bestimmen
  for i:=1 to Anzahl do
    begin
      if StrToFloat(Analyse.StringGrid1.Cells[1,i])=untereGrenze then
        begin
          index_unten_von_x_nach:=i;
          break;
        end
        else
          begin
            if StrToFloat(Analyse.StringGrid1.Cells[1,i])>untereGrenze then
              begin
                index_unten_von_x_nach:=i;
                break;
              end;
          end;
    end;

  // ---> obere Grenze bestimmen
  for i:=1 to Anzahl do
    begin
      if StrToFloat(Analyse.StringGrid1.Cells[1,i])=obereGrenze then
        begin
          index_oben_von_x_vor:=i;
          break;
        end
        else
          begin
            if StrToFloat(Analyse.StringGrid1.Cells[1,i])>obereGrenze then
              begin
                index_oben_von_x_vor:=i-1;
                break;
              end;
          end;
    end;

  x:=index_unten_von_x_nach;
  for i:=index_unten_von_x_nach to index_oben_von_x_vor do
    begin
      // y-Wert der Kurve Approximation_1 bilden und den absoluten und relativen Fehler berechnen
      y_Approximation:=c*(StrToFloat(Analyse.StringGrid1.Cells[1,i])*StrToFloat(Analyse.StringGrid1.Cells[1,i]));
      Fehler_in_Prozent:=100*((StrToFloat(Analyse.StringGrid1.Cells[2,i])-y_Approximation)/StrToFloat(Analyse.StringGrid1.Cells[2,i]));
      Fehler:=StrToFloat(Analyse.StringGrid1.Cells[2,i])-y_Approximation;
      Analyse.StringGrid3.Cells[6,i]:=FloatToStr(y_Approximation);
      Analyse.StringGrid3.Cells[7,i]:=FloatToStr(Fehler);

      // Betrag bilden
      if Fehler<0 then
        begin
          Fehler:=Fehler*-1;
          Fehler_in_Prozent:=Fehler_in_Prozent*-1;
        end;

      // den größten Wert suchen
      if i=index_unten_von_x_nach then
        begin
          Fehler_neu:=Fehler;
          Fehler_in_Prozent_neu:=Fehler_in_Prozent;
          max_y_Wert_Approximation_1:=y_Approximation;
          max_y_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[2,i]);
          max_x_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
        end
        else
          begin
            if i=x then
              begin
                if Fehler>Fehler_neu then
                  begin
                    Fehler_neu:=Fehler;
                    Fehler_in_Prozent_neu:=Fehler_in_Prozent;
                    max_y_Wert_Approximation_1:=y_Approximation;
                    max_y_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[2,i]);
                    max_x_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                  end;

              end;
          end;
      x:=x+1;

      Analyse.StringGrid3.Cells[8,i]:=FloatToStr(Fehler);
      Analyse.StringGrid3.Cells[9,i]:=FloatToStr(Fehler_neu);
    end;

  // -> max. Fehler als Zahl und im Diagramm anzeigen
  Analyse.Label47.Caption:=FloatToStr(Runden(Fehler_neu, 4))+' mbar bzw. '+FloatToStr(Runden(Fehler_in_Prozent_neu, 4))+' %';
  //Analyse.Label47.Caption:=FloatToStr(Runden(Fehler_neu, 4));
  //Analyse.Label48.Caption:=FloatToStr(Runden(Fehler_in_Prozent_neu, 4));
  Analyse.Chart1.Series[2].Title:='max. Abweichung Appr. 1';
  // (es muss verhindert werden, dass das Diagramm seine Dimensionen verändert)
  if (max_x_Wert_Tabellenwerte=0) and (max_y_Wert_Tabellenwerte=0) and (max_y_Wert_Approximation_1=0) then
    begin

    end
    else
      begin
        Analyse.Chart1.Series[2].AddXY(max_x_Wert_Tabellenwerte, max_y_Wert_Tabellenwerte);
        Analyse.Chart1.Series[2].AddXY(max_x_Wert_Tabellenwerte, max_y_Wert_Approximation_1);
      end;
  max_x_Wert_Tabellenwert_Approximation1:=max_x_Wert_Tabellenwerte;
  max_y_Wert_Tabellenwert_Approximation1:=max_y_Wert_Tabellenwerte;
  max_y_Wert_Approximation1:=max_y_Wert_Approximation_1;
end;

// eigene Funktion 'Ausgleichskurve_Potenzfunktion()'
procedure Ausgleichskurve_Potenzfunktion();
var
  u,v,u2,uv:Real;
  Summe_u,Summe_v,Summe_u2,Summe_uv:Real;
  i,e,n,j:Integer;
  delta,delta_c,delta_d:Real;
  Faktor_d:Real;
  x,y:Real;
  Anzahl:Integer;
  y_Approximation:Real;
  Fehler, Fehler_neu, Fehler_in_Prozent, Fehler_in_Prozent_neu:Real;
  max_x_Wert_Tabellenwerte, max_y_Wert_Tabellenwerte, max_y_Wert_Approximation_2:Real;
  nachkommastellen:Integer;
begin
  Analyse.Chart1.Series[3].Title:='Approximation 2';

  case Analyse.Auswahl.ItemIndex of
    0:
      Anzahl:=17;
    1:
      Anzahl:=25;
    else
      Anzahl:=30;
    end;

  case Analyse.Auswahl.ItemIndex of
    0:
      nachkommastellen:=4;
    1:
      nachkommastellen:=4;
    2:
      nachkommastellen:=4;
    3:
      nachkommastellen:=4;
    4:
      nachkommastellen:=8;
    5:
      nachkommastellen:=8;
    6:
      nachkommastellen:=9;
    7:
      nachkommastellen:=9;
    8:
      nachkommastellen:=10;
    9:
      nachkommastellen:=10;
    10:
      nachkommastellen:=4;
    11:
      nachkommastellen:=8;
    12:
      nachkommastellen:=8;
    13:
      nachkommastellen:=9;
    14:
      nachkommastellen:=10;
    15:
      nachkommastellen:=10;
    16:
      nachkommastellen:=11;
    17:
      nachkommastellen:=11;
    18:
      nachkommastellen:=12;
    19:
      nachkommastellen:=12;
    20:
      nachkommastellen:=13;
    end;

  // y = a * x^b <=> ln(y) = ln(a) + b * ln(x)
  // -> Spalte 1: u = ln(x) = ln(m')
  // -> Spalte 2: v = ln(y) = ln(delta_p)
  for i:=1 to Anzahl do
    begin
      Analyse.StringGrid3.Cells[0,i]:=FloatToStr(ln(StrToFloat(Analyse.StringGrid1.Cells[1,i])));
      Analyse.StringGrid3.Cells[1,i]:=FloatToStr(ln(StrToFloat(Analyse.StringGrid1.Cells[2,i])));
      Analyse.StringGrid3.RowCount:=i+1;
    end;

  // -> Spalte 3: u2
  // -> Spalte 4: uv
  for i:=1 to Anzahl do
    begin
      Analyse.StringGrid3.Cells[2,i]:=FloatToStr(StrToFloat(Analyse.StringGrid3.Cells[0,i])*StrToFloat(Analyse.StringGrid3.Cells[0,i]));
      Analyse.StringGrid3.Cells[3,i]:=FloatToStr(StrToFloat(Analyse.StringGrid3.Cells[0,i])*StrToFloat(Analyse.StringGrid3.Cells[1,i]));
      Analyse.StringGrid3.RowCount:=i+1;
    end;

  // -> Summen von u, v, u2, uv
  e:=1;
  for i:=1 to Anzahl do
    begin
      u:=StrToFloat(Analyse.StringGrid3.Cells[0,i]);
      v:=StrToFloat(Analyse.StringGrid3.Cells[1,i]);
      u2:=StrToFloat(Analyse.StringGrid3.Cells[2,i]);
      uv:=StrToFloat(Analyse.StringGrid3.Cells[3,i]);

      if i=1 then
        begin
          Summe_u:=u;
          Summe_v:=v;
          Summe_u2:=u2;
          Summe_uv:=uv;
        end;
      if e>1 then
        begin
          if i=e then
             begin
               Summe_u:=u+Summe_u;
               Summe_v:=v+Summe_v;
               Summe_u2:=u2+Summe_u2;
               Summe_uv:=uv+Summe_uv;
             end;
        end;
      e:=e+1;
    end;

    // -> Determinaten
    n:=Anzahl;
    delta:=Summe_u2*n-Summe_u*Summe_u;
    delta_c:=Summe_uv*n-Summe_v*Summe_u;
    delta_d:=Summe_u2*Summe_v-Summe_u*Summe_uv;

    // (genaue Werte des Exponenten und des Faktors merken; dazu werden globale Variablen verwendet)
    // -> Exponent
    Exponent_global:=delta_c/delta;

    // -> Faktor
    Faktor_d:=delta_d/delta;
    Faktor_a_global:=Exp(Faktor_d);

    // -> Ausgabe des Exponenten und des Faktors
    Exponent_n_Appr_2:=Exponent_global;
    Analyse.Label22.Caption:=FloatToStr(Runden(Exponent_global, 4));
    Faktor_c_opt_Appr_2:=Faktor_a_global;
    Analyse.Label21.Caption:=FloatToStr(Runden(Faktor_a_global, nachkommastellen))+' mbar';
    //Analyse.Label21.Caption:=FloatToStr(Runden(Faktor_a_global, nachkommastellen));

    // -> Ausgleichs-Potenzfunktion plotten
    for i:=1 to Anzahl do
      begin
        x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
        y:=Faktor_a_global*Power(x, Exponent_global);
        Analyse.Chart1.Series[3].AddXY(x, y);
      end;

    // max. Abweichung zwischen Tabellenwerte und 2. Approximation
    // -> Anwendung des y-Kriteriums
    j:=1;
    for i:=1 to Anzahl do
      begin
        // y-Wert der Kurve Approximation 2 bestimmen und den absoluten und relativen Fehler berechnen
        y_Approximation:=Faktor_a_global*Power(StrToFloat(Analyse.StringGrid1.Cells[1,i]), Exponent_global);
        Fehler_in_Prozent:=100*((StrToFloat(Analyse.StringGrid1.Cells[2,i])-y_Approximation)/StrToFloat(Analyse.StringGrid1.Cells[2,i]));
        Fehler:=StrToFloat(Analyse.StringGrid1.Cells[2,i])-y_Approximation;

        Analyse.StringGrid3.Cells[10,i]:=FloatToStr(y_Approximation);
        Analyse.StringGrid3.Cells[11,i]:=FloatToStr(Fehler_in_Prozent);
        Analyse.StringGrid3.Cells[12,i]:=FloatToStr(Fehler);

        // Betrag bilden
        if Fehler<0 then
          begin
            Fehler:=Fehler*-1;
            Fehler_in_Prozent:=Fehler_in_Prozent*-1;
          end;

        // den größten Wert suchen
        if i=1 then
          begin
            Fehler_neu:=Fehler;
            Fehler_in_Prozent_neu:=Fehler_in_Prozent;
            max_y_Wert_Approximation_2:=y_Approximation;
            max_x_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
          end
          else
            begin
              if i=j then
                begin
                  if Fehler>Fehler_neu then
                    begin
                      Fehler_neu:=Fehler;
                      Fehler_in_Prozent_neu:=Fehler_in_Prozent;
                      max_y_Wert_Approximation_2:=y_Approximation;
                      max_y_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[2,i]);
                      max_x_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                    end;
                end;
            end;
        j:=j+1;
      end;

      // Ausgabe des max. absoluten und relativen Fehlers
      Analyse.Label23.Caption:=FloatToStr(Runden(Fehler_neu, 4))+' mbar bzw. '+FloatToStr(Runden(Fehler_in_Prozent_neu, 4))+' %';
      Analyse.Chart1.Series[4].Title:='max. Abweichung Appr. 2';
      Analyse.Chart1.Series[4].AddXY(max_x_Wert_Tabellenwerte, max_y_Wert_Tabellenwerte);
      Analyse.Chart1.Series[4].AddXY(max_x_Wert_Tabellenwerte, max_y_Wert_Approximation_2);
      max_x_Wert_Tabellenwert_Approximation2:=max_x_Wert_Tabellenwerte;
      max_y_Wert_Tabellenwert_Approximation2:=max_y_Wert_Tabellenwerte;
      max_y_Wert_Approximation2:=max_y_Wert_Approximation_2;
end;

// eigene Funktion 'Ausgleichskurve_Potenzfunktion_mit_variablen_Grenzen()'
procedure Ausgleichskurve_Potenzfunktion_mit_variablen_Grenzen();
var
  u,v,u2,uv:Real;
  Summe_u,Summe_v,Summe_u2,Summe_uv:Real;
  i,e,n,j:Integer;
  delta,delta_c,delta_d:Real;
  Faktor_d:Real;
  x,y:Real;
  Anzahl:Integer;
  y_Approximation:Real;
  Fehler, Fehler_neu, Fehler_in_Prozent, Fehler_in_Prozent_neu:Real;
  max_x_Wert_Tabellenwerte, max_y_Wert_Tabellenwerte, max_y_Wert_Approximation_2:Real;
  index_unten_von_x_nach, index_oben_von_x_vor:Integer;
  untereGrenze, obereGrenze:Real;
  index_unten, index_oben:Integer;
  nachkommastellen:Integer;
begin
  Analyse.Chart1.Series[3].Title:='Approximation 2';
  Analyse.Chart1.Series[3].Clear;
  Analyse.Chart1.Series[4].Clear;

  case Analyse.Auswahl.ItemIndex of
    0:
      Anzahl:=17;
    1:
      Anzahl:=25;
    else
      Anzahl:=30;
    end;
  case Analyse.Auswahl.ItemIndex of
    0:
      nachkommastellen:=4;
    1:
      nachkommastellen:=4;
    2:
      nachkommastellen:=4;
    3:
      nachkommastellen:=4;
    4:
      nachkommastellen:=8;
    5:
      nachkommastellen:=8;
    6:
      nachkommastellen:=9;
    7:
      nachkommastellen:=9;
    8:
      nachkommastellen:=10;
    9:
      nachkommastellen:=10;
    10:
      nachkommastellen:=4;
    11:
      nachkommastellen:=8;
    12:
      nachkommastellen:=8;
    13:
      nachkommastellen:=9;
    14:
      nachkommastellen:=10;
    15:
      nachkommastellen:=10;
    16:
      nachkommastellen:=11;
    17:
      nachkommastellen:=11;
    18:
      nachkommastellen:=12;
    19:
      nachkommastellen:=12;
    20:
      nachkommastellen:=13;
    end;

  untereGrenze:=m_min_var;
  obereGrenze:=m_max_var;
  //untereGrenze:=StrToFloat(Analyse.Label113.Caption);
  //obereGrenze:=StrToFloat(Analyse.Label123.Caption);

  // -> Werte zwischen den eingestellten Grenzen bestimmen
  // ---> untere Grenze bestimmen
  for i:=1 to Anzahl do
    begin
      if StrToFloat(Analyse.StringGrid1.Cells[1,i])=untereGrenze then
        begin
          index_unten_von_x_nach:=i;
          index_unten:=i;
          break;
        end
        else
          begin
            if StrToFloat(Analyse.StringGrid1.Cells[1,i])>untereGrenze then
              begin
                index_unten_von_x_nach:=i-1;
                index_unten:=i;

                //
                if index_unten_von_x_nach=0 then
                  begin
                    index_unten_von_x_nach:=1;
                  end;

                break;
              end;
          end;
    end;

  // ---> obere Grenze bestimmen
  for i:=1 to Anzahl do
    begin
      if StrToFloat(Analyse.StringGrid1.Cells[1,i])=obereGrenze then
        begin
          index_oben_von_x_vor:=i;
          index_oben:=i;
          break;
        end
        else
          begin
            if StrToFloat(Analyse.StringGrid1.Cells[1,i])>obereGrenze then
              begin
                index_oben_von_x_vor:=i;
                index_oben:=i-1;
                break;
              end;
          end;
    end;

  // y = a * x^b <=> ln(y) = ln(a) + b * ln(x)
  // -> Spalte 1: u = ln(x) = ln(m')
  // -> Spalte 2: v = ln(y) = ln(delta_p)
  for i:=index_unten_von_x_nach to index_oben_von_x_vor do
    begin
      Analyse.StringGrid3.Cells[0,i]:=FloatToStr(ln(StrToFloat(Analyse.StringGrid1.Cells[1,i])));
      Analyse.StringGrid3.Cells[1,i]:=FloatToStr(ln(StrToFloat(Analyse.StringGrid1.Cells[2,i])));
      Analyse.StringGrid3.RowCount:=i+1;
    end;

  // -> Spalte 3: u2
  // -> Spalte 4: uv
  for i:=index_unten_von_x_nach to index_oben_von_x_vor do
    begin
      Analyse.StringGrid3.Cells[2,i]:=FloatToStr(StrToFloat(Analyse.StringGrid3.Cells[0,i])*StrToFloat(Analyse.StringGrid3.Cells[0,i]));
      Analyse.StringGrid3.Cells[3,i]:=FloatToStr(StrToFloat(Analyse.StringGrid3.Cells[0,i])*StrToFloat(Analyse.StringGrid3.Cells[1,i]));
      Analyse.StringGrid3.RowCount:=i+1;
    end;

  // -> Summen von u, v, u2, uv
  e:=index_unten_von_x_nach;
  for i:=index_unten_von_x_nach to index_oben_von_x_vor do
    begin
      u:=StrToFloat(Analyse.StringGrid3.Cells[0,i]);
      v:=StrToFloat(Analyse.StringGrid3.Cells[1,i]);
      u2:=StrToFloat(Analyse.StringGrid3.Cells[2,i]);
      uv:=StrToFloat(Analyse.StringGrid3.Cells[3,i]);

      if i=index_unten_von_x_nach then
        begin
          Summe_u:=u;
          Summe_v:=v;
          Summe_u2:=u2;
          Summe_uv:=uv;
        end;
      if e>index_unten_von_x_nach then
        begin
          if i=e then
             begin
               Summe_u:=u+Summe_u;
               Summe_v:=v+Summe_v;
               Summe_u2:=u2+Summe_u2;
               Summe_uv:=uv+Summe_uv;
             end;
        end;
      e:=e+1;
    end;

    // -> Determinaten
    n:=(index_oben_von_x_vor-index_unten_von_x_nach)+1;
    delta:=Summe_u2*n-Summe_u*Summe_u;
    delta_c:=Summe_uv*n-Summe_v*Summe_u;
    delta_d:=Summe_u2*Summe_v-Summe_u*Summe_uv;

    // (genaue Werte des Exponenten und des Faktors merken; dazu werden globale Variablen verwendet)
    // -> Exponent
    Exponent_global:=delta_c/delta;

    // -> Faktor
    Faktor_d:=delta_d/delta;
    Faktor_a_global:=Exp(Faktor_d);

    // -> Ausgabe des Exponenten und des Faktors
    Exponent_n_Appr_2:=Exponent_global;
    Analyse.Label22.Caption:=FloatToStr(Runden(Exponent_global, 4));
    Faktor_c_opt_Appr_2:=Faktor_a_global;
    Analyse.Label21.Caption:=FloatToStr(Runden(Faktor_a_global, nachkommastellen))+' mbar';
    //Analyse.Label21.Caption:=FloatToStr(Runden(Faktor_a_global, nachkommastellen));

    // -> Ausgleichs-Potenzfunktion plotten
    for i:=index_unten_von_x_nach to index_oben_von_x_vor do
      begin
        // -> ist Wert vom unterer Index in StringGrid1 enthalten?
        if i=index_unten_von_x_nach then
          begin
            if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_min_var then
              begin
                x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
              end
              else
                begin
                  if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_min_var then
                    begin
                      x:=m_min_var;
                      //x:=StrToFloat(Analyse.Label113.Caption);
                    end;
                end;
          end
          else
            if i<>index_unten_von_x_nach then
              begin
                x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
              end;
        // -> ist Wert vom oberen Index in StringGrid1 enthalten?
        if i=index_oben_von_x_vor then
          begin
            if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_max_var then
              begin
                x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
              end
              else
                begin
                  if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_max_var then
                    begin
                      x:=m_max_var;
                      //x:=StrToFloat(Analyse.Label123.Caption);
                    end;
                end;
          end;
        // (es muss ohne den gerundeten Werten gerechnet werden, sonst gibt es unterschiedliche Ergebnisse!!!)
        y:=Faktor_a_global*Power(x, Exponent_global);
        Analyse.Chart1.Series[3].AddXY(x, y);
      end;

    // max. Abweichung zwischen Tabellenwerte und 2. Approximation
    // -> Anwendung des y-Kriteriums
    j:=index_unten;
    for i:=index_unten to index_oben do
      begin
        // y-Wert der Kurve Approximation 2 bestimmen und den absoluten und relativen Fehler berechnen
        y_Approximation:=Faktor_a_global*Power(StrToFloat(Analyse.StringGrid1.Cells[1,i]), Exponent_global);
        Fehler_in_Prozent:=100*((StrToFloat(Analyse.StringGrid1.Cells[2,i])-y_Approximation)/StrToFloat(Analyse.StringGrid1.Cells[2,i]));
        Fehler:=StrToFloat(Analyse.StringGrid1.Cells[2,i])-y_Approximation;

        Analyse.StringGrid3.Cells[10,i]:=FloatToStr(y_Approximation);
        Analyse.StringGrid3.Cells[11,i]:=FloatToStr(Fehler_in_Prozent);
        Analyse.StringGrid3.Cells[12,i]:=FloatToStr(Fehler);

        // Betrag bilden
        if Fehler<0 then
          begin
            Fehler:=Fehler*-1;
            Fehler_in_Prozent:=Fehler_in_Prozent*-1;
          end;

        // den größten Wert suchen
        if i=index_unten then
          begin
            Fehler_neu:=Fehler;
            Fehler_in_Prozent_neu:=Fehler_in_Prozent;
            max_y_Wert_Approximation_2:=y_Approximation;
            max_x_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
          end
          else
            begin
              if i=j then
                begin
                  if Fehler>Fehler_neu then
                    begin
                      Fehler_neu:=Fehler;
                      Fehler_in_Prozent_neu:=Fehler_in_Prozent;
                      max_y_Wert_Approximation_2:=y_Approximation;
                      max_y_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[2,i]);
                      max_x_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                    end;
                end;
            end;
        j:=j+1;
      end;

      // Ausgabe des max. absoluten und relativen Fehlers
      Analyse.Label23.Caption:=FloatToStr(Runden(Fehler_neu, 4))+' mbar bzw. '+FloatToStr(Runden(Fehler_in_Prozent_neu, 4))+' %';
      Analyse.Chart1.Series[4].Title:='max. Abweichung Appr. 2';

      // (es darf nur eine Linie eingezeichnet werden, wenn kein y-Wert null ist)
      if (max_y_Wert_Tabellenwerte<>0) then
        begin
          Analyse.Chart1.Series[4].AddXY(max_x_Wert_Tabellenwerte, max_y_Wert_Tabellenwerte);
          Analyse.Chart1.Series[4].AddXY(max_x_Wert_Tabellenwerte, max_y_Wert_Approximation_2);
        end;
end;

// eigene Funktion 'neue_Kurve_bei_variablen_Grenzen()' (= Approximation_1 mit variablen Grenzen)
procedure neue_Kurve_bei_variablen_Grenzen(c:Real);
var
  Anzahl, i:Integer;
  untereGrenze, obereGrenze:Real;
  index_unten_von_x_nach, index_oben_von_x_vor:Integer;
  x, y:Real;
begin
  case Analyse.Auswahl.ItemIndex of
    0:
      Anzahl:=17;
    1:
      Anzahl:=25;
    else
      Anzahl:=30;
    end;

  untereGrenze:=m_min_var;
  obereGrenze:=m_max_var;
  //untereGrenze:=StrToFloat(Analyse.Label113.Caption);
  //obereGrenze:=StrToFloat(Analyse.Label123.Caption);

  // -> Werte zwischen den eingestellten Grenzen bestimmen
  // ---> untere Grenze bestimmen
  for i:=1 to Anzahl do
    begin
      if StrToFloat(Analyse.StringGrid1.Cells[1,i])=untereGrenze then
        begin
          index_unten_von_x_nach:=i;
          break;
        end
        else
          begin
            if StrToFloat(Analyse.StringGrid1.Cells[1,i])>untereGrenze then
              begin
                index_unten_von_x_nach:=i-1;

                //
                if index_unten_von_x_nach=0 then
                  begin
                    index_unten_von_x_nach:=1;
                  end;

                break;
              end;
          end;
    end;

  // ---> obere Grenze bestimmen
  for i:=1 to Anzahl do
    begin
      if StrToFloat(Analyse.StringGrid1.Cells[1,i])=obereGrenze then
        begin
          index_oben_von_x_vor:=i;
          break;
        end
        else
          begin
            if StrToFloat(Analyse.StringGrid1.Cells[1,i])>obereGrenze then
              begin
                index_oben_von_x_vor:=i;
                break;
              end;
          end;
    end;

  // -> neue Kurve zeichnen
  for i:=index_unten_von_x_nach to index_oben_von_x_vor do
    begin
      // -> ist Wert vom unterer Index in StringGrid1 enthalten?
      if i=index_unten_von_x_nach then
        begin
          if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_min_var then
            begin
              x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
            end
            else
              begin
                if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_min_var then
                  begin
                    x:=m_min_var;
                    //x:=StrToFloat(Analyse.Label113.Caption);
                  end;
              end;
        end
        else
          if i<>index_unten_von_x_nach then
            begin
              x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
            end;
      // -> ist Wert vom oberen Index in StringGrid1 enthalten?
      if i=index_oben_von_x_vor then
        begin
          if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_max_var then
            begin
              x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
            end
            else
              begin
                if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_max_var then
                  begin
                    x:=m_max_var;
                    //x:=StrToFloat(Analyse.Label123.Caption);
                  end;
              end;
        end;
      y:=c*x*x;
      Analyse.Chart1.Series[1].AddXY(x,y);
    end;
end;

// eigene Funktion 'Automatisches_Suchen_nach_Optimum()'
procedure Automatisches_Suchen_nach_Optimum();
var
  i,j,x,Anzahl,nr:Integer;
  neuer_uebersetzter_Wert,c_neu,c_opt,c_opt_neu:Real;
  index_unten_von_x_nach,index_oben_von_x_vor:Integer;
  untereGrenze,obereGrenze:Real;
  y_Approximation:Real;
  Fehler,Fehler_neu:Real;
  Fehler_in_Prozent,Fehler_in_Prozent_neu:Real;
  merker_PositionScrollbar,merker_PositionScrollbar_neu:Integer;
begin
  nr:=1;
  for i:=-50 to 50 do
    begin
      neuer_uebersetzter_Wert:=(uebersetzter_Wert_max_SB1/100)*i;
      c_neu:=c_min_SB1+neuer_uebersetzter_Wert;

      case Analyse.Auswahl.ItemIndex of
        0:
          Anzahl:=17;
        1:
          Anzahl:=25;
        else
          Anzahl:=30;
        end;

      untereGrenze:=m_min_var;
      obereGrenze:=m_max_var;
      //untereGrenze:=StrToFloat(Analyse.Label113.Caption);
      //obereGrenze:=StrToFloat(Analyse.Label123.Caption);

      // -> Werte zwischen den eingestellten Grenzen bestimmen
      // ---> untere Grenze bestimmen
      for j:=1 to Anzahl do
        begin
          if StrToFloat(Analyse.StringGrid1.Cells[1,j])=untereGrenze then
            begin
              index_unten_von_x_nach:=j;
              break;
            end
            else
              begin
                if StrToFloat(Analyse.StringGrid1.Cells[1,j])>untereGrenze then
                  begin
                    index_unten_von_x_nach:=j;

                    //
                    if index_unten_von_x_nach=0 then
                      begin
                        index_unten_von_x_nach:=1;
                      end;

                    break;
                  end;
              end;
        end;

      // ---> obere Grenze bestimmen
      for j:=1 to Anzahl do
        begin
          if StrToFloat(Analyse.StringGrid1.Cells[1,j])=obereGrenze then
            begin
              index_oben_von_x_vor:=j;
              break;
            end
            else
              begin
                if StrToFloat(Analyse.StringGrid1.Cells[1,j])>obereGrenze then
                  begin
                    index_oben_von_x_vor:=j-1;
                    break;
                  end;
              end;
        end;

      x:=index_unten_von_x_nach;
      for j:=index_unten_von_x_nach to index_oben_von_x_vor do
        begin
          // y-Wert der Kurve Approximation_1 bilden und den absoluten und relativen Fehler berechnen
          y_Approximation:=c_neu*(StrToFloat(Analyse.StringGrid1.Cells[1,j])*StrToFloat(Analyse.StringGrid1.Cells[1,j]));
          Fehler_in_Prozent:=100*((StrToFloat(Analyse.StringGrid1.Cells[2,j])-y_Approximation)/StrToFloat(Analyse.StringGrid1.Cells[2,j]));
          Fehler:=StrToFloat(Analyse.StringGrid1.Cells[2,j])-y_Approximation;
          Analyse.StringGrid6.Cells[0,j]:=FloatToStr(Runden(y_Approximation, 4));
          Analyse.StringGrid6.Cells[1,j]:=FloatToStr(Runden(Fehler, 4));

          // Betrag bilden
          if Fehler<0 then
            begin
              Fehler:=Fehler*-1;
              Fehler_in_Prozent:=Fehler_in_Prozent*-1;
            end;

          // den größten Wert suchen
          if j=index_unten_von_x_nach then
            begin
              Fehler_neu:=Fehler;
              Fehler_in_Prozent_neu:=Fehler_in_Prozent;
              c_opt:=c_neu;
              merker_PositionScrollbar:=i;
            end
            else
              begin
                if j=x then
                  begin
                    if Fehler>Fehler_neu then
                      begin
                        Fehler_neu:=Fehler;
                        Fehler_in_Prozent_neu:=Fehler_in_Prozent;
                        c_opt:=c_neu;
                        merker_PositionScrollbar:=i;
                      end;

                  end;
              end;
          x:=x+1;
        end;
      Analyse.StringGrid6.Cells[2,nr]:=FloatToStr(Runden(Fehler_neu, 4));
      Analyse.StringGrid6.Cells[3,nr]:=FloatToStr(Runden(Fehler_in_Prozent_neu, 4));
      Analyse.StringGrid6.Cells[4,nr]:=FloatToStr(c_opt);
      Analyse.StringGrid6.Cells[14,nr]:=IntToStr(merker_PositionScrollbar);
      nr:=nr+1;
    end;

    // -> den kleinsten Wert (= Optimum) suchen
    x:=1;
    for i:=1 to 100 do
      begin
        Fehler:=StrToFloat(Analyse.StringGrid6.Cells[2,i]);
        Fehler_in_Prozent:=StrToFloat(Analyse.StringGrid6.Cells[3,i]);
        c_opt:=StrToFloat(Analyse.StringGrid6.Cells[4,i]);
        merker_PositionScrollbar:=StrToInt(Analyse.Stringgrid6.Cells[14,i]);

        if i=1 then
          begin
            Fehler_neu:=Fehler;
            Fehler_in_Prozent_neu:=Fehler_in_Prozent;
            c_opt_neu:=c_opt;
            merker_PositionScrollbar_neu:=merker_PositionScrollbar;
          end
          else
            begin
              if i=x then
                begin
                  if Fehler<Fehler_neu then
                    begin
                      Fehler_neu:=Fehler;
                      Fehler_in_Prozent_neu:=Fehler_in_Prozent;
                      c_opt_neu:=c_opt;
                      merker_PositionScrollbar_neu:=merker_PositionScrollbar;
                    end;
                end;
            end;
        x:=x+1;
      end;
    Analyse.Label16.Caption:=FloatToStr(Runden(Fehler_neu, 4))+' mbar bzw. '+FloatToStr(Runden(Fehler_in_Prozent_neu, 4))+' %';
    //Analyse.Label16.Caption:=FloatToStr(Runden(Fehler_neu, 4));
    //Analyse.Label17.Caption:=FloatToStr(Runden(Fehler_in_Prozent_neu, 4));
    //Analyse.Label28.Caption:=FloatToStr(Runden(c_opt_neu, 10))+' mbar/((kg/h)²)';
    Faktor_c_opt_Appr_1:=c_opt_neu;
    Analyse.Label28.Caption:=FloatToStr(Runden(c_opt_neu, 10))+' mbar/((kg/h)²)';
    //Analyse.Label28.Caption:=FloatToStr(Runden(c_opt_neu,10));

    // (der Scrollbar soll auf das Optimum gestellt werden)
    Analyse.ScrollBar1.Position:=merker_PositionScrollbar_neu;
    Analyse.Label65.Caption:=IntToStr(merker_PositionScrollbar_neu);
    Analyse.Label47.Caption:=FloatToStr(Runden(Fehler_neu, 4))+' mbar bzw: '+FloatToStr(Runden(Fehler_in_Prozent_neu, 4))+' %';
    //Analyse.Label47.Caption:=FloatToStr(Runden(Fehler_neu, 4));
    //Analyse.Label48.Caption:=FloatToStr(Runden(Fehler_in_Prozent_neu, 4));
    //Analyse.Label87.Caption:='1';
end;

// eigene Funktion 'Graphik_leeren()'
procedure Graphik_leeren();
var
  i,Anzahl:Integer;
begin
  // -> Graphiken leeren
  for i:=0 to 6 do
    begin
      Analyse.Chart1.Series[i].Clear;
      Analyse.Chart1.Series[i].Title:='not available';
    end;

  // -> Labels wieder "initialisieren"
  Analyse.Label47.Caption:='-';
  Analyse.Label21.Caption:='-';
  Analyse.Label22.Caption:='-';
  Analyse.Label23.Caption:='-';
  Analyse.Label25.Caption:='-';

  // -> StringGrid1 mit leeren Zeichen befüllen
  case Analyse.Auswahl.ItemIndex of
    0:
      Anzahl:=17;
    1:
      Anzahl:=25;
    else
      Anzahl:=30;
    end;

  for i:=1 to Anzahl do
    begin
      Analyse.StringGrid1.Cells[0,i]:='0,0';
      Analyse.StringGrid1.Cells[1,i]:='0,0';
      Analyse.StringGrid1.Cells[2,i]:='0,0';
    end;
end;

// eigene Funktion 'Druckverlust_MoodyDiagramm()'
procedure Druckverlust_MoodyDiagramm(dichte:Real; kinematischeViskositaet:Real; spalte:Integer);
var
  funktion,ersteAbleitung:Real;
  w,massenstrom,durchmesser,Druckverlust:Real;
  Reynoldzahl,Rohrreibungszahl,Rohrreibungszahl_alt,Rohrreibungszahl_neu:Real;
  epsilon,alpha:Real;
  x_Achse,y_Achse:Integer;
  hydraulisch_rau,karman_nikuradse,Anzahl,i:Integer;
  //untereGrenze,obereGrenze,zwischenWert:Real;
begin
  // Berechnung bei 60°C oder 80°C wie bei der Rohrdefinition

  case Analyse.Auswahl.ItemIndex of
    0:
      Anzahl:=17;
    1:
      Anzahl:=25;
    else
      Anzahl:=30;
    end;

  case Analyse.Auswahl.ItemIndex of
    0:
      durchmesser:=8-2*1;
    1:
      durchmesser:=10-2*1;
    2:
      durchmesser:=12-2*1;
    3:
      durchmesser:=15-2*1;
    4:
      durchmesser:=18-2*1;
    5:
      durchmesser:=22-2*1;
    6:
      durchmesser:=28-2*1.5;
    7:
      durchmesser:=35-2*1.5;
    8:
      durchmesser:=42-2*1.5;
    9:
      durchmesser:=54-2*2;
    10:
      durchmesser:=17.2-2*2.35;
    11:
      durchmesser:=21.3-2*2.65;
    12:
      durchmesser:=26.9-2*2.65;
    13:
      durchmesser:=33.7-2*3.25;
    14:
      durchmesser:=42.4-2*3.25;
    15:
      durchmesser:=44.5-2*2.6;
    16:
      durchmesser:=57-2*2.9;
    17:
      durchmesser:=76.1-2*2.9;
    18:
      durchmesser:=88.9-2*3.2;
    19:
      durchmesser:=108-2*3.6;
    20:
      durchmesser:=133-2*4;
    end;

  for i:=1 to Anzahl do
    begin
      // Variante 1
      massenstrom:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);

      // Variante 2
      {*untereGrenze:=StrToFloat(Analyse.Stringgrid1.Cells[1,1]);
      obereGrenze:=StrToFloat(Analyse.Stringgrid1.Cells[1,Anzahl]);
      zwischenWert:=log10(obereGrenze/untereGrenze);
      massenstrom:=untereGrenze*Power(10, zwischenWert/Anzahl*i);*}

      // -> Strömungsgeschwindigkeit berechnen
      w:=((massenstrom/3600)*4)/(dichte*PI*(durchmesser/1000)*(durchmesser/1000));

      // -> Re-Zahl berechnen
      Reynoldzahl:=(w*(durchmesser/1000))/kinematischeViskositaet;
      Analyse.Stringgrid6.Cells[13,i]:=FloatToStr(Reynoldzahl);

      // -> wenn die Rauhigkeit gleich null ist, dann ist es hydraulisch glatt
      // -> wenn die Rauhigkeit ungleich null ist, dann ist es auf jeden Fall hydraulisch rau
      hydraulisch_rau:=1;

      // -> Berechnung von alpha=Rauhigkeit/Durchmesser
      if (Analyse.Label116.Caption='0,0015 mm') then
        begin
          alpha:=0.0015/durchmesser;
        end
        else
          begin
            if (Analyse.Label116.Caption='0,045 mm') then
              begin
                alpha:=0.045/durchmesser;
              end;
          end;

      // -> prüfen, ob das selbst definierte Rohr hydraulisch glatt oder hydraulisch rau ist
      //    ( mit 1/(Rohrreibungszahl^1/2)=(Reynoldszahl*Rauhigkeit)/(200*Durchmesser) und Gleichung von 'Karman-Nikuradse' )
      Rohrreibungszahl:=1/((1.74-2*log10(2*alpha))*(1.74-2*log10(2*alpha)));


      // hydraulisch rau nach Karman-Nikuradse???
      // -> hydraulische rau nach Karman-Nikuradse
      if alpha>=(200/(Reynoldzahl*Power(Rohrreibungszahl, 1/2))) then
        begin
          karman_nikuradse:=1;

        end
        else
          begin
            // -> nicht hydraulisch rau nach Karman-Nikuradse
            if alpha<(200/(Reynoldzahl*Power(Rohrreibungszahl, 1/2))) then
              begin
                karman_nikuradse:=0;

                // Prüfen nach Colebrook
                // - siehe unten -
              end;
          end;

      // -> Rohrreibungszahl berechnen
      // ---> Hagen-Poiseuille
      //      -> laminare Strömung
      if (Reynoldzahl<2320) then
        begin
          Rohrreibungszahl:=64/Reynoldzahl;
          hydraulisch_rau:=0;
        end;

      // ---> Blasius
      //      -> hydraulisch glatt + turbulente Strömung
      if (hydraulisch_rau=0) and (Reynoldzahl>2320) then
        begin
          if (Reynoldzahl>2320) and (Reynoldzahl<100000) then
            begin
              Rohrreibungszahl:=0.3164*Power(Reynoldzahl, -0.25);
              hydraulisch_rau:=0;
            end;
        end;

      // ---> Prandtl
      //      -> hydraulisch glatt + turbulente Strömung
      if (hydraulisch_rau=0) and (Reynoldzahl>100000) and (Reynoldzahl<10000000) then
        begin
          Rohrreibungszahl_alt:=0.018-0.005*(log10(Reynoldzahl)-5);
          epsilon:=1;

          // ---> Anwendung des Newtonsches Iterationsverfahren
          while abs(epsilon)>0.00000000001 do
            begin
              funktion:=2*log10(Reynoldzahl*Sqrt(Rohrreibungszahl_alt))-0.9-1/(Sqrt(Rohrreibungszahl_alt));
              ersteAbleitung:=1/(Rohrreibungszahl_alt*ln(10))+1/(2*Rohrreibungszahl_alt*Sqrt(Rohrreibungszahl_alt));
              Rohrreibungszahl_neu:=Rohrreibungszahl_alt-(funktion/ersteAbleitung);
              epsilon:=(Rohrreibungszahl_neu-Rohrreibungszahl_alt)/Rohrreibungszahl_neu;
              Rohrreibungszahl_alt:=Rohrreibungszahl_neu;
            end;

          Rohrreibungszahl:=Rohrreibungszahl_neu;
          hydraulisch_rau:=0;
        end;

      // ---> Colebrook
      //      -> hydraulisch rau + turbulente Strömung
      if (Reynoldzahl>2320) and (hydraulisch_rau=1) and (karman_nikuradse=0) then
        begin
          Rohrreibungszahl_alt:=0.015;
          epsilon:=1;

          // ---> Anwendung des Newtonsches Iterationsverfahren
          while abs(epsilon)>0.00000000001 do
            begin
              funktion:=1/(Sqrt(Rohrreibungszahl_alt))+2*log10(2*alpha+18.7/(Reynoldzahl*Sqrt(Rohrreibungszahl_alt)))-1.74;
              ersteAbleitung:=-0.5/(Rohrreibungszahl_alt*Sqrt(Rohrreibungszahl_alt))+(2/ln(10))*(1/(2*alpha+18.7/(Reynoldzahl*Sqrt(Rohrreibungszahl_alt))))*(18.7/Reynoldzahl)*-0.5/(Rohrreibungszahl_alt*Sqrt(Rohrreibungszahl_alt));
              Rohrreibungszahl_neu:=Rohrreibungszahl_alt-(funktion/ersteAbleitung);
              epsilon:=(Rohrreibungszahl_neu-Rohrreibungszahl_alt)/Rohrreibungszahl_neu;
              Rohrreibungszahl_alt:=Rohrreibungszahl_neu;
            end;

          Rohrreibungszahl:=Rohrreibungszahl_neu;
        end;

      // ---> Karman-Nikuradse
      //      -> hydraulisch rau + turbulente Strömung
      if (Reynoldzahl>2320) and (hydraulisch_rau=1) and (karman_nikuradse=1) then
        begin
          Rohrreibungszahl:=1/((1.74-2*log10(2*alpha))*(1.74-2*log10(2*alpha)));
        end;

      // -> Werte in das Moody-Diagramm eintragen
      // ***** vorgedrucktes Moody-Diagramm *****
      if Reynoldzahl<2320 then
        begin
          x_Achse:=round((ln(Reynoldzahl/1000)/ln(100000000/1000))*697);
          y_Achse:=round(590-(ln(Rohrreibungszahl/0.006)/ln(0.1/0.006))*590);
          Analyse.Stringgrid6.Cells[11,i]:=FloatToStr(x_Achse);
          Analyse.Stringgrid6.Cells[12,i]:=FloatToStr(y_Achse);

          // ***** selbst-gezeichnetes Moody-Diagramm *****
          //MoodyDiagramm.Chart1.Series[25].AddXY(Reynoldzahl, Rohrreibungszahl);
        end
        else
          begin
            if Reynoldzahl>=2320 then
              begin
                x_Achse:=round((ln(Reynoldzahl/1000)/ln(100000000/1000))*697);
                y_Achse:=round(590-(ln(Rohrreibungszahl/0.006)/ln(0.1/0.006))*590);
                Analyse.Stringgrid6.Cells[11,i]:=FloatToStr(x_Achse);
                Analyse.Stringgrid6.Cells[12,i]:=FloatToStr(y_Achse);

                // ***** selbst-gezeichnetes Moody-Diagramm *****
                //MoodyDiagramm.Chart1.Series[26].AddXY(Reynoldzahl,Rohrreibungszahl);
              end;
          end;

        // -> Druckverlust berechnen
        Druckverlust:=(Rohrreibungszahl*1*dichte*w*w)/((durchmesser/1000)*2);
        Druckverlust:=(Druckverlust/100000)*1000;
        Analyse.StringGrid1.Cells[spalte,i]:=FloatToStr(Runden(Druckverlust,2));
    end;

  // prüfen, ob Initialisierungen des Programms beendet sind
  if StrToInt(Analyse.Label59.Caption)=1 then
    begin

    end
    else
      begin
        if StrToInt(Analyse.Label59.Caption)=0 then
          begin
            MoodyDiagramm.Image1.Canvas.Pen.Color:=clgreen;
            MoodyDiagramm.Image1.Canvas.Pen.Width:=2;

            // -> Punkte der Rohre miteinander verbinden
            //
            // ---> laminarer Teil
            for i:=1 to Anzahl do
              begin
                x_Achse:=StrToInt(Analyse.StringGrid6.Cells[11,i]);
                y_Achse:=StrToInt(Analyse.StringGrid6.Cells[12,i]);
                MoodyDiagramm.Image1.Canvas.MoveTo(x_Achse,y_Achse);

                if(i<Anzahl) then
                  begin
                    // es soll verhindert werden, dass über Re_kritsch eine Linie gezeichnet wird
                    if (StrToFloat(Analyse.Stringgrid6.Cells[13,i+1])<2320) then
                      begin
                        x_Achse:=StrToInt(Analyse.StringGrid6.Cells[11,i+1]);
                        y_Achse:=StrToInt(Analyse.StringGrid6.Cells[12,i+1]);
                        MoodyDiagramm.Image1.Canvas.LineTo(x_Achse,y_Achse);
                      end;
                  end;
              end;

            // ---> turbulenter Teil
            for i:=1 to Anzahl do
              begin
                if (StrToFloat(Analyse.StringGrid6.Cells[13,i])>2320) then
                  begin
                    x_Achse:=StrToInt(Analyse.StringGrid6.Cells[11,i]);
                    y_Achse:=StrToInt(Analyse.StringGrid6.Cells[12,i]);
                    MoodyDiagramm.Image1.Canvas.MoveTo(x_Achse,y_Achse);

                    if(i<Anzahl) then
                      begin
                        // es soll verhindert werden, dass über Re_kritsch eine Linie gezeichnet wird
                        if (StrToFloat(Analyse.Stringgrid6.Cells[13,i+1])>2320) then
                          begin
                            x_Achse:=StrToInt(Analyse.StringGrid6.Cells[11,i+1]);
                            y_Achse:=StrToInt(Analyse.StringGrid6.Cells[12,i+1]);
                            MoodyDiagramm.Image1.Canvas.LineTo(x_Achse,y_Achse);
                          end;
                      end;
                  end;
              end;
    
          end;
      end;
end;

// eigene Funktion 'ScrollBar_initialisieren()'
procedure ScrollBar_initialisieren(Scrollbar:TScrollBar; typ:Integer);
begin
  Scrollbar.Min:=0;
  Scrollbar.Max:=100;

  if (typ=0) then
    begin
      Scrollbar.Position:=0;
    end
    else
      begin
      if (typ=1) then
        begin
          Scrollbar.Position:=100;
        end;
      end;
      
end;

// Initialisierungen
procedure TAnalyse.FormCreate(Sender: TObject);
var
  i:Integer;
  maxi,mini,pos:Integer;
  x_value,y_value:Real;
begin
  Kontrolle_ZeichnenButton:=0;
  Auswahl.ItemIndex:=5;
  selection:=0;
  moodyDiagram:=1;
  scrollBar_enable:=0;
  Label59.Caption:='1';
  CheckBox4.Enabled:=True;
  Label87.Caption:='0';
  Analyse.Label17.Caption:='0';
  Analyse.Label11.Caption:='0';

  // ausgewähltes Rohr
  Label101.Caption:='22 mm';
  Label103.Caption:='1 mm';

  Label3.Caption:='Kupferrohr 22x1';
  Label7.Caption:='184';
  Label8.Caption:='1080';
  Label16.Caption:='-';
  //Label17.Caption:='-';
  Label21.Caption:='-';
  Label22.Caption:='-';
  Label23.Caption:='-';
  Label25.Caption:='-';
  Label28.Caption:='-';
  Label47.Caption:='-';
  //Label48.Caption:='-';
  Label53.Caption:='-';
  Label54.Caption:='-';
  Label70.Caption:='-';
  Label71.Caption:='-';
  Label72.Caption:='-';
  Label57.Caption:='-';
  Label58.Caption:='-';
  Label76.Caption:='-';
  Label77.Caption:='-';
  Label78.Caption:='-';
  Label66.Caption:='-';
  Label82.Caption:='-';
  Label83.Caption:='-';
  Label84.Caption:='-';
  Label62.Caption:='-';
  Label88.Caption:='-';
  Label89.Caption:='-';
  Label90.Caption:='-';
  Label80.Caption:='-';
  Label81.Caption:='-';
  Label98.Caption:='-';
  Label99.Caption:='-';
  Label105.Caption:='-';
  Label108.Caption:='-';
  Label109.Caption:='-';
  Label111.Caption:='-';
  Label113.Caption:='184';
  Label116.Caption:='0,0015 mm';
  Label120.Caption:='983,21 kg/m³';
  Label121.Caption:='0,0004664 kg/(m*s)';
  Label122.Caption:='4,74E-7 m²/s';
  Label123.Caption:='1080';

  Label63.Visible:=False;

  Analyse.Edit1.Text:='0';
  Analyse.Edit2.Text:='0';
  Analyse.Edit5.Text:='0';
  Analyse.Edit6.Text:='0';
  Analyse.Edit7.Text:='0';
  Analyse.Edit8.Text:='0';

  CheckBox1.Caption:='nicht verfügbar';
  CheckBox2.Caption:='nicht verfügbar';
  CheckBox4.Caption:='nicht verfügbar';

  StringGrid1.Cells[0,0]:='Geschwindigkeit [m/s]';
  StringGrid1.Cells[1,0]:='Massenstrom [kg/h]';
  //StringGrid1.Cells[2,0]:='Druckverlust [mbar]';
  //Stringgrid1.Cells[3,0]:='';
  //Stringgrid1.Cells[4,0]:='';
  Stringgrid1.Cells[2,0]:='Druckverlust (Norm) [mbar/m]';
  Stringgrid1.Cells[3,0]:='Druckverlust bei 60°C [mbar/m]';
  Stringgrid1.Cells[4,0]:='Druckverlust bei 80°C [mbar/m]';

  StringGrid3.Cells[0,0]:='u';
  StringGrid3.Cells[1,0]:='v';
  StringGrid3.Cells[2,0]:='u^2';
  StringGrid3.Cells[3,0]:='uv';
  StringGrid3.Cells[4,0]:='y_Approximation 1';
  StringGrid3.Cells[5,0]:='Fehler';
  StringGrid3.Cells[6,0]:='|Fehler|';
  StringGrid3.Cells[7,0]:='Fehler_neu';
  StringGrid3.Cells[8,0]:='y_Approximation 2';
  StringGrid3.Cells[9,0]:='Fehler in % (Appr. 2)';
  StringGrid3.Cells[10,0]:='Fehler (Appr. 2)';
  Stringgrid3.Cells[11,0]:='neuer_uebersetzter_Wert';
  Stringgrid3.Cells[12,0]:='c_neu';
  Stringgrid3.Cells[13,0]:='y_Approximation';
  Stringgrid3.Cells[14,0]:='Fehler_in_Prozent';
  Stringgrid3.Cells[15,0]:='Fehler';
  Stringgrid3.Cells[16,0]:='Fehler_neu';
  Stringgrid3.Cells[17,0]:='Massenstrom';
  Stringgrid3.Cells[18,0]:='Druckverlust';

  {*StringGrid4.Cells[0,0]:='Druckverlust [mbar]';
  StringGrid4.Cells[1,0]:='Massenstrom [kg/h]';
  StringGrid4.Cells[2,0]:='Massenstrom_rechn_1 [kg/h]';
  StringGrid4.Cells[3,0]:='Massenstrom_rechn_2 [kg/h]';
  StringGrid4.Cells[4,0]:='Fehler m1/m [%]';
  StringGrid4.Cells[5,0]:='Fehler m2/m [%]';

  StringGrid5.Cells[0,0]:='Massenstrom [kg/h]';
  StringGrid5.Cells[1,0]:='Druckverlust [mbar]';
  StringGrid5.Cells[2,0]:='Druckverlust_rechn_1 [mbar]';
  StringGrid5.Cells[3,0]:='Druckverlust_rechn_2 [mbar]';
  StringGrid5.Cells[4,0]:='Fehler dp1/dp [%]';
  StringGrid5.Cells[5,0]:='Fehler dp2/dp [%]';*}

  Stringgrid6.Cells[0,0]:='neuer_uebersetzter_Wert';
  Stringgrid6.Cells[1,0]:='c_neu';
  Stringgrid6.Cells[2,0]:='y_Approximation';
  Stringgrid6.Cells[3,0]:='Fehler_in_Prozent';
  Stringgrid6.Cells[4,0]:='Fehler';
  Stringgrid6.Cells[5,0]:='Fehler_neu';
  StringGrid6.Cells[6,0]:='Fehler_in_Prozent_neu';
  Stringgrid6.Cells[7,0]:='c_opt';
  Stringgrid6.Cells[8,0]:=' ';
  Stringgrid6.Cells[9,0]:='Massenstrom';
  Stringgrid6.Cells[10,0]:='Druckverlust';

  // Diagramme
  for i:=0 to 6 do
    begin
      Chart1.Series[i].Clear;
      Chart1.Series[i].Title:='nicht verfügbar';
    end;

  // StringGrid1
  for i:=1 to 30 do
    begin
      StringGrid1.Cells[0,i]:='0,0';
      StringGrid1.Cells[1,i]:='0,0';
      StringGrid1.Cells[2,i]:='0,0';
    end;
    
  // Scrollbar 1
  mini:=-100;
  maxi:=100;
  pos:=0;
  ScrollBar1.Min:=mini;
  ScrollBar1.Max:=maxi;
  ScrollBar1.position:=pos;
  ScrollBar1.LargeChange:=1;
  ScrollBar1.SmallChange:=1;

  // Scrollbar 2
  mini:=0;
  maxi:=100;
  pos:=0;
  ScrollBar2.Min:=mini;
  ScrollBar2.Max:=maxi;
  ScrollBar2.Position:=pos;
  ScrollBar2.LargeChange:=1;
  ScrollBar2.SmallChange:=1;

  // Scrollbar 3
  mini:=0;
  maxi:=100;
  pos:=100;
  ScrollBar3.Min:=mini;
  ScrollBar3.Max:=maxi;
  ScrollBar3.Position:=pos;
  ScrollBar3.LargeChange:=1;
  ScrollBar3.SmallChange:=1;

  // nach Start des Programms ist die Berechnung des Cu-Rohrs 22x1 abgeschlossen/durchgeführt worden
  // -> Werte eintragen
  Stringgrid1.Cells[0,1]:='0,17';
  Stringgrid1.Cells[0,2]:='0,18';
  Stringgrid1.Cells[0,3]:='0,18';
  Stringgrid1.Cells[0,4]:='0,19';
  Stringgrid1.Cells[0,5]:='0,20';
  Stringgrid1.Cells[0,6]:='0,21';
  Stringgrid1.Cells[0,7]:='0,22';
  Stringgrid1.Cells[0,8]:='0,24';
  Stringgrid1.Cells[0,9]:='0,25';
  Stringgrid1.Cells[0,10]:='0,27';
  Stringgrid1.Cells[0,11]:='0,30';
  Stringgrid1.Cells[0,12]:='0,33';
  Stringgrid1.Cells[0,13]:='0,35';
  Stringgrid1.Cells[0,14]:='0,38';
  Stringgrid1.Cells[0,15]:='0,40';
  Stringgrid1.Cells[0,16]:='0,44';
  Stringgrid1.Cells[0,17]:='0,48';
  Stringgrid1.Cells[0,18]:='0,52';
  Stringgrid1.Cells[0,19]:='0,56';
  Stringgrid1.Cells[0,20]:='0,56';
  Stringgrid1.Cells[0,21]:='0,59';
  Stringgrid1.Cells[0,22]:='0,62';
  Stringgrid1.Cells[0,23]:='0,68';
  Stringgrid1.Cells[0,24]:='0,71';
  Stringgrid1.Cells[0,25]:='0,74';
  Stringgrid1.Cells[0,26]:='0,78';
  Stringgrid1.Cells[0,27]:='0,82';
  Stringgrid1.Cells[0,28]:='0,87';
  Stringgrid1.Cells[0,29]:='0,93';
  Stringgrid1.Cells[0,30]:='0,99';
  Stringgrid1.Cells[1,1]:='184';
  Stringgrid1.Cells[1,2]:='194';
  Stringgrid1.Cells[1,3]:='203';
  Stringgrid1.Cells[1,4]:='212';
  Stringgrid1.Cells[1,5]:='220';
  Stringgrid1.Cells[1,6]:='233';
  Stringgrid1.Cells[1,7]:='244';
  Stringgrid1.Cells[1,8]:='259';
  Stringgrid1.Cells[1,9]:='277';
  Stringgrid1.Cells[1,10]:='294';
  Stringgrid1.Cells[1,11]:='328';
  Stringgrid1.Cells[1,12]:='357';
  Stringgrid1.Cells[1,13]:='385';
  Stringgrid1.Cells[1,14]:='412';
  Stringgrid1.Cells[1,15]:='437';
  Stringgrid1.Cells[1,16]:='485';
  Stringgrid1.Cells[1,17]:='529';
  Stringgrid1.Cells[1,18]:='571';
  Stringgrid1.Cells[1,19]:='610';
  Stringgrid1.Cells[1,20]:='647';
  Stringgrid1.Cells[1,21]:='683';
  Stringgrid1.Cells[1,22]:='717';
  Stringgrid1.Cells[1,23]:='750';
  Stringgrid1.Cells[1,24]:='782';
  Stringgrid1.Cells[1,25]:='813';
  Stringgrid1.Cells[1,26]:='859';
  Stringgrid1.Cells[1,27]:='901';
  Stringgrid1.Cells[1,28]:='956';
  Stringgrid1.Cells[1,29]:='1015';
  Stringgrid1.Cells[1,30]:='1080';
  Stringgrid1.Cells[2,1]:='0,22';
  Stringgrid1.Cells[2,2]:='0,24';
  Stringgrid1.Cells[2,3]:='0,26';
  Stringgrid1.Cells[2,4]:='0,28';
  Stringgrid1.Cells[2,5]:='0,30';
  Stringgrid1.Cells[2,6]:='0,33';
  Stringgrid1.Cells[2,7]:='0,36';
  Stringgrid1.Cells[2,8]:='0,40';
  Stringgrid1.Cells[2,9]:='0,45';
  Stringgrid1.Cells[2,10]:='0,50';
  Stringgrid1.Cells[2,11]:='0,60';
  Stringgrid1.Cells[2,12]:='0,70';
  Stringgrid1.Cells[2,13]:='0,80';
  Stringgrid1.Cells[2,14]:='0,90';
  Stringgrid1.Cells[2,15]:='1,0';
  Stringgrid1.Cells[2,16]:='1,20';
  Stringgrid1.Cells[2,17]:='1,40';
  Stringgrid1.Cells[2,18]:='1,60';
  Stringgrid1.Cells[2,19]:='1,80';
  Stringgrid1.Cells[2,20]:='2,0';
  Stringgrid1.Cells[2,21]:='2,20';
  Stringgrid1.Cells[2,22]:='2,40';
  Stringgrid1.Cells[2,23]:='2,60';
  Stringgrid1.Cells[2,24]:='2,80';
  Stringgrid1.Cells[2,25]:='3,0';
  Stringgrid1.Cells[2,26]:='3,30';
  Stringgrid1.Cells[2,27]:='3,60';
  Stringgrid1.Cells[2,28]:='4,0';
  Stringgrid1.Cells[2,29]:='4,50';
  Stringgrid1.Cells[2,30]:='5,0';

  // -> untere und obere Grenze einstellen
  Chart1.Series[5].Title:='untere Grenze';
  Chart1.Series[6].Title:='obere Grenze';
  Chart1.Series[5].AddXY(StrToFloat(StringGrid1.Cells[1,1]), 0);
  Chart1.Series[6].AddXY(StrToFloat(StringGrid1.Cells[1,30]), 0);
  m_min:=StrToFloat(Stringgrid1.Cells[1,1]);
  m_max:=StrToFloat(Stringgrid1.Cells[1,30]);
  m_min_var:=StrToFloat(Stringgrid1.Cells[1,1]);
  m_max_var:=StrToFloat(Stringgrid1.Cells[1,30]);
  Label7.Caption:=StringGrid1.Cells[1,1]+' kg/h';
  Label8.Caption:=StringGrid1.Cells[1,30]+' kg/h';
  Label113.Caption:=StringGrid1.Cells[1,1]+' kg/h';
  Label123.Caption:=StringGrid1.Cells[1,30]+' kg/h';
  //Label7.Caption:=StringGrid1.Cells[1,1];
  //Label8.Caption:=StringGrid1.Cells[1,30];
  //Label113.Caption:=StringGrid1.Cells[1,1];
  //Label123.Caption:=StringGrid1.Cells[1,30];
  Chart1.Series[5].AddXY(StrToFloat(StringGrid1.Cells[1,1]), 8);
  Chart1.Series[6].AddXY(StrToFloat(StringGrid1.Cells[1,30]), 8);

  // -> Werte einzeichnen
  Chart1.Series[0].Title:='DIN EN 1057';
  for i:=1 to 30 do
    begin
      x_value:=StrToFloat(StringGrid1.Cells[1,i]);
      y_value:=StrToFloat(StringGrid1.Cells[2,i]);
      Chart1.Series[0].AddXY(x_value, y_value);
    end;

  Parabel_manipulieren();
  selection:=1;
  y_Kriterium(c_min_SB1);
  Ausgleichskurve_Potenzfunktion();
  CheckBox1.Caption:='DIN EN 1057';
  CheckBox1.Checked:=True;
  CheckBox2.Caption:='Approximation 1';
  CheckBox2.Checked:=True;
  CheckBox4.Caption:='Approximation 2';
  CheckBox4.Checked:=True;
  Automatisches_Suchen_nach_Optimum();
  Kontrolle_ZeichnenButton:=1;
  scrollBar_enable:=1;
  Chart1.Series[7].AddXY(m_min, 0);
  Chart1.Series[7].AddXY(m_max, 0);
  //Chart1.Series[7].AddXY(StrToFloat(Label7.Caption),0);
  //Chart1.Series[7].AddXY(StrToFloat(Label8.Caption),0);
  ScrollBar_initialisieren(ScrollBar2, 0);
  ScrollBar_initialisieren(ScrollBar3, 1);
  Label61.Caption:='0';
  Label26.Caption:='0';
  aenderung_Auswahl_NormRohr:=0;

  // -> zusätzlich Druckverlust bei 60°C und 80°C berechnen
  Druckverlust_MoodyDiagramm(983.21, 0.000000474, 3);
  Druckverlust_MoodyDiagramm(971.80, 0.000000365, 4);

  // aktuelles Verzeichnis des exe-Programms bestimmen
  Label112.Caption:=GetCurrentDir;
end;


// Scrollbar 1
procedure TAnalyse.ScrollBar1Change(Sender: TObject);
var
  neuer_uebersetzter_Wert:Real;
  x,y:Real;
  c_neu:Real;
  i,Anzahl:Integer;
  index_unten_von_x_nach,index_oben_von_x_vor:Integer;
  untereGrenze, obereGrenze:Real;
  nachkommastellen:Integer;
  zw:Real;
begin
  // der Scrollbar zum Verändern des Faktors c darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
  if (aenderung_Auswahl_NormRohr=0) then
    begin
  // (Werte den globalen Variablen zuweisen)
  if (StrToInt(Label17.Caption)=1) then
    begin
      Faktor_c_Appr_1:=StrToFloat(Label6.Caption);
      Faktor_c_opt_Appr_1:=StrToFloat(Label15.Caption);

      //
      if Label22.Caption<>'-' then
        begin
          Faktor_c_opt_Appr_2:=StrToFloat(Label14.Caption);
          Exponent_n_Appr_2:=StrToFloat(Label12.Caption);
        end;
        
      Label17.Caption:='0';
    end;

  // der Scrollbar darf nur die Approximationskurve 1 anzeigen, wenn die CheckBox2 aktiviert ist
  if CheckBox2.Checked=True then
    begin
      // vorgegebenes Rohr aus Tabelle
      if selection=1 then
        begin
          case Analyse.Auswahl.ItemIndex of
            0:
              Anzahl:=17;
            1:
              Anzahl:=25;
            else
              Anzahl:=30;
            end;

          case Analyse.Auswahl.ItemIndex of
            0:
              nachkommastellen:=4;
            1:
              nachkommastellen:=4;
            2:
              nachkommastellen:=4;
            3:
              nachkommastellen:=8;
            4:
              nachkommastellen:=8;
            5:
              nachkommastellen:=9;
            6:
              nachkommastellen:=9;
            7:
              nachkommastellen:=10;
            8:
              nachkommastellen:=10;
            9:
              nachkommastellen:=11;
            10:
              nachkommastellen:=8;
            11:
              nachkommastellen:=8;
            12:
              nachkommastellen:=9;
            13:
              nachkommastellen:=9;
            14:
              nachkommastellen:=10;
            15:
              nachkommastellen:=10;
            16:
              nachkommastellen:=11;
            17:
              nachkommastellen:=12;
            18:
              nachkommastellen:=12;
            19:
              nachkommastellen:=12;
            20:
              nachkommastellen:=13;
            end;
        end
        else
          // selbst definiertes Rohr
          if selection=2 then
            begin
              Anzahl:=StrToInt(eigenesRohr.Label21.Caption);
              c_min_SB1:=StrToFloat(eigenesRohr.Label19.Caption);
              uebersetzter_Wert_max_SB1:=StrToFloat(eigenesRohr.Label20.Caption);
              startIndex:=StrToInt(eigenesRohr.Label17.Caption);
              nachkommastellen:=15;
            end;

      // (nachdem das Optimum gefunden wurde, soll die Position des ScrollBar1 nur einmal übernommen werden)
      if (StrToInt(Label87.Caption)=1) then
        begin
          ScrollBar1.Position:=StrToInt(Label65.Caption);
          Label87.Caption:='0';
        end;

      neuer_uebersetzter_Wert:=(uebersetzter_Wert_max_SB1/100)*ScrollBar1.Position;
      c_neu:=c_min_SB1+neuer_uebersetzter_Wert;
      Stringgrid3.Cells[11,1]:=FloatToStr(neuer_uebersetzter_Wert);
      Stringgrid3.Cells[12,1]:=FloatToStr(c_neu);
      Stringgrid3.Cells[19,1]:=IntToStr(ScrollBar1.Position);
      Faktor_c_Appr_1:=c_neu;
      //Faktor_c_Appr_1:=Runden(c_neu, nachkommastellen);
      Label25.Caption:=FloatToStr(Runden(c_neu, nachkommastellen))+' mbar/((kg/h)²)';
      //Label25.Caption:=FloatToStr(Runden(c_neu, nachkommastellen));
      Chart1.Series[1].Clear;
      Chart1.Series[2].Clear;

      // vorgegebenes Rohr aus der Tabelle
      if selection=1 then
        begin
          untereGrenze:=m_min_var;
          obereGrenze:=m_max_var;
          //untereGrenze:=StrToFloat(Analyse.Label113.Caption);
          //obereGrenze:=StrToFloat(Analyse.Label123.Caption);

          // -> Werte zwischen den eingestellten Grenzen bestimmen
          // ---> untere Grenze bestimmen
          for i:=1 to Anzahl do
            begin
              if StrToFloat(Analyse.StringGrid1.Cells[1,i])=untereGrenze then
                begin
                  index_unten_von_x_nach:=i;
                  break;
                end
                else
                  begin
                    if StrToFloat(Analyse.StringGrid1.Cells[1,i])>untereGrenze then
                      begin
                        index_unten_von_x_nach:=i-1;

                        //
                        if index_unten_von_x_nach=0 then
                          begin
                            index_unten_von_x_nach:=1;
                          end;

                        break;
                      end;
                    end;
            end;

          // ---> obere Grenze bestimmen
          for i:=1 to Anzahl do
            begin
              if StrToFloat(Analyse.StringGrid1.Cells[1,i])=obereGrenze then
                begin
                  index_oben_von_x_vor:=i;
                  break;
                end
                else
                  begin
                    if StrToFloat(Analyse.StringGrid1.Cells[1,i])>obereGrenze then
                      begin
                        index_oben_von_x_vor:=i;
                        break;
                      end;
                    end;
            end;

          // -> neue Kurve zeichnen
          for i:=index_unten_von_x_nach to index_oben_von_x_vor do
            begin
              // -> ist Wert vom unterer Index in StringGrid1 enthalten?
              if i=index_unten_von_x_nach then
                begin
                  if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_min_var then
                    begin
                      x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                    end
                    else
                    begin
                      if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_min_var then
                        begin
                        x:=m_min_var
                          //x:=StrToFloat(Analyse.Label113.Caption);
                        end;
                    end;
                end
                else
                  if i<>index_unten_von_x_nach then
                    begin
                      x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                    end;
              // -> ist Wert vom oberen Index in StringGrid1 enthalten?
              if i=index_oben_von_x_vor then
                begin
                  if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_max_var then
                    begin
                      x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                    end
                    else
                      begin
                        if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_max_var then
                          begin
                          x:=m_max_var
                            //x:=StrToFloat(Analyse.Label123.Caption);
                          end;
                      end;
                end;
              y:=c_neu*x*x;
              Analyse.Chart1.Series[1].AddXY(x,y);
            end;
          y_Kriterium_bei_variablen_Grenzen(c_neu);

          {*// Variante 2 mit Tabelle (Druckverlust und Massenstrom linear interpolieren)
          Massenstrom_oder_Druckverlust_rechnerisch_Modell1(0, Analyse.StringGrid4, 0, c_neu);
          Massenstrom_oder_Druckverlust_rechnerisch_Modell1(1, Analyse.StringGrid5, 0, c_neu);
          Fehler_Massenstrom_oder_Druckverlust(0, 0, Analyse.StringGrid4, 2, 1);
          Fehler_Massenstrom_oder_Druckverlust(1, 0, Analyse.StringGrid5, 2, 1);*}
        end
        else
          // eigenes definiertes Rohr
          if selection=2 then
            begin
              // -> neue Kurve zeichnen
              for i:=startIndex to Anzahl do
                begin
                  x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                  y:=c_neu*x*x;
                  Analyse.Chart1.Series[1].AddXY(x,y);
                end;

              // y-Kriterium
              y_Kriterium(c_neu);

            end;

    end
    else
      // die CheckBox2 ist deaktiviert, deshalb darf nichts angezeigt werden
      if CheckBox2.Checked=False then
        begin

        end;
    end;
end;

// Berechnen-Button
procedure TAnalyse.BerechnenClick(Sender: TObject);
var
  i:Integer;
begin
  // (sobald ein anderes Kupfer- oder Stahlrohr nach den Initialisierungen ausgewählt wurde, kann der Button "Berechnen" gedrückt werden)
  if (StrToInt(Label59.Caption)=0) then
    begin

  // der Button "Berechnen" darf nur ein einziges Mal zum Berechnen eines Rohres gedrückt werden können
  if (StrToInt(Label61.Caption)=1) then
    begin

      // "Aufräumen" und "Initialisieren"
      for i:=0 to 9 do
        begin
          Chart1.Series[i].Clear;
          Chart1.Series[i].Title:='nicht verfügbar';
        end;
  
      Label3.Caption:='-';
      Label53.Caption:='-';
      Label54.Caption:='-';
      Label57.Caption:='-';
      Label58.Caption:='-';
      Label62.Caption:='-';
      Label66.Caption:='-';
      Label70.Caption:='-';
      Label71.Caption:='-';
      Label72.Caption:='-';
      Label76.Caption:='-';
      Label77.Caption:='-';
      Label78.Caption:='-';
      Label80.Caption:='-';
      Label81.Caption:='-';
      Label82.Caption:='-';
      Label83.Caption:='-';
      Label84.Caption:='-';
      Label88.Caption:='-';
      Label89.Caption:='-';
      Label90.Caption:='-';
      Label98.Caption:='-';
      Label99.Caption:='-';
      Label47.Caption:='-';
      //Label48.Caption:='-';
      Label21.Caption:='-';
      Label22.Caption:='-';
      Label23.Caption:='-';
      Label25.Caption:='-';
      Label105.Caption:='-';
      Label108.Caption:='-';
      Label109.Caption:='-';
      Label111.Caption:='-';
      Label51.Caption:='Norm:';
      Label55.Caption:='Norm:';
      Label69.Caption:='Norm:';
      Label75.Caption:='Norm:';

      //Label63.Visible:=False;
      Label30.Visible:=False;

      eigenesRohr.Label11.Caption:='0';

      Edit1.Text:='0,0';
      Edit2.Text:='0,0';
      Edit5.Text:='0,0';
      Edit6.Text:='0,0';
      Edit7.Text:='0,0';
      Edit8.Text:='0,0';

      CheckBox2.Enabled:=True;
      CheckBox4.Enabled:=True;

      // -> Stringgrid1 leeren
      for i:=0 to StringGrid1.ColCount do
        begin
          StringGrid1.Cols[i].Clear;
        end;

      StringGrid1.Cells[0,0]:='Geschwindigkeit [m/s]';
      Stringgrid1.Cells[1,0]:='Massenstrom [kg/h]';
      Stringgrid1.Cells[2,0]:='Druckverlust (Norm) [mbar/m]';
      Stringgrid1.Cells[3,0]:='Druckverlust bei 60°C [mbar/m]';
      Stringgrid1.Cells[4,0]:='Druckverlust bei 80°C [mbar/m]';

      {*// Variante 2 mit Tabelle (Druckverlust und Massenstrom linear interpolieren)
      // -> Stringgrid5 leeren
      for i:=0 to StringGrid5.ColCount do
        begin
          StringGrid5.Cols[i].Clear;
        end;

      Stringgrid5.Cells[0,0]:='Massenstrom [kg/h]';
      Stringgrid5.Cells[1,0]:='Druckverlust [mbar]';
      Stringgrid5.Cells[2,0]:='Druckverlust_rechn_1 [mbar]';
      Stringgrid5.Cells[3,0]:='Druckverlust_rechn_2 [mbar]';
      Stringgrid5.Cells[4,0]:='Fehler dp1/dp [%]';
      Stringgrid5.Cells[5,0]:='Fehler dp2/dp [%]';*}

      // Auswahl der Rohrart
      case Auswahl.ItemIndex of
        0:
          Label3.Caption:='Kupferrohr 8x1';
        1:
          Label3.Caption:='Kupferrohr 10x1';
        2:
          Label3.Caption:='Kupferrohr 12x1';
        3:
          Label3.Caption:='Kupferrohr 15x1';
        4:
          Label3.Caption:='Kupferrohr 18x1';
        5:
          Label3.Caption:='Kupferrohr 22x1';
        6:
          Label3.Caption:='Kupferrohr 28x1,5';
        7:
          Label3.Caption:='Kupferrohr 35x1,5';
        8:
          Label3.Caption:='Kupferrohr 42x1,5';
        9:
          Label3.Caption:='Kupferrohr 54x2';
        10:
          Label3.Caption:='Stahlrohr DN10';
        11:
          Label3.Caption:='Stahlrohr DN15';
        12:
          Label3.Caption:='Stahlrohr DN20';
        13:
          Label3.Caption:='Stahlrohr DN25';
        14:
          Label3.Caption:='Stahlrohr DN32';
        15:
          Label3.Caption:='Stahlrohr DN40';
        16:
          Label3.Caption:='Stahlrohr DN50';
        17:
          Label3.Caption:='Stahlrohr DN65';
        18:
          Label3.Caption:='Stahlrohr DN80';
        19:
          Label3.Caption:='Stahlrohr DN100';
        20:
          Label3.Caption:='Stahlrohr DN125';
        end;

      Graphik_leeren();

      // Auswahl zwischen Kupferrohr und Stahlrohr
      case Auswahl.ItemIndex of
        0:
          i:=0;
        1:
          i:=1;
        2:
          i:=2;
        3:
          i:=3;
        4:
          i:=4;
        5:
          i:=5;
        6:
          i:=6;
        7:
          i:=7;
        8:
          i:=8;
        9:
          i:=9;
        10:
          i:=10;
        11:
          i:=11;
        12:
          i:=12;
        13:
          i:=13;
        14:
          i:=14;
        15:
          i:=15;
        16:
          i:=16;
        17:
          i:=17;
        18:
          i:=18;
        19:
          i:=19;
        20:
          i:=20;
        end;

      if Auswahl.ItemIndex=i then
        begin
          selection:=1;
          Label59.Caption:='0';

          // Messwerte einzeichnen
          Messwerte_einzeichnen();

          // manipulierte Parabel einzeichnen
          Parabel_manipulieren();

          // y-Kriterium
          y_Kriterium(c_min_SB1);

          // optimale Potenzfunktion einzeichnen
          Ausgleichskurve_Potenzfunktion();

          {*// Variante 2 mit Tabelle (Druckverlust und Massenstrom linear interploieren)
          // Massenstrom_rechnerisch mit 2. und n. Potenz bestimmen
          // Druckverlust_rechnerisch mit 2. und n. Potenz bestimmen
          Massenstrom_oder_Druckverlust_rechnerisch_Modell1(0, Analyse.StringGrid4, 0, c_min_SB1);
          Massenstrom_oder_Druckverlust_rechnerisch_Modell2(0, Analyse.StringGrid4, 0);
          Massenstrom_oder_Druckverlust_rechnerisch_Modell1(1, Analyse.StringGrid5, 0, c_min_SB1);
          Massenstrom_oder_Druckverlust_rechnerisch_Modell2(1, Analyse.StringGrid5, 1);
          Fehler_Massenstrom_oder_Druckverlust(0, 0, Analyse.StringGrid4, 2, 1);
          Fehler_Massenstrom_oder_Druckverlust(0, 1, Analyse.StringGrid4, 3, 1);
          Fehler_Massenstrom_oder_Druckverlust(1, 0, Analyse.StringGrid5, 2, 1);
          Fehler_Massenstrom_oder_Druckverlust(1, 1, Analyse.StringGrid5, 3, 1);*}

          // Automation
          Automatisches_Suchen_nach_Optimum();

          Kontrolle_ZeichnenButton:=1;

          // Graphen im Diagramm über CheckBoxes auswählen
          if Auswahl.ItemIndex<=9 then
            begin
              CheckBox1.Caption:='DIN EN 1057';
            end
            else
              begin
              if (Auswahl.ItemIndex>=10) and (Auswahl.ItemIndex<=14) then
                begin
                  CheckBox1.Caption:='DIN 2440';
                end
                else
                  begin
                    if (Auswahl.ItemIndex>=15) and (Auswahl.ItemIndex<=20) then
                      begin
                        CheckBox1.Caption:='DIN 2448';
                      end;
                  end;
              end;

          eigenesRohr.Label16.Caption:='0';
          eigenesRohr.Label18.Caption:='0';
          CheckBox1.Checked:=True;
          CheckBox2.Caption:='Approximation 1';
          CheckBox2.Checked:=True;
          CheckBox4.Caption:='Approximation 2';
          CheckBox4.Checked:=True;
        end;

      scrollBar_enable:=1;
      Chart1.Series[7].AddXY(m_min, 0);
      Chart1.Series[7].AddXY(m_max, 0);
      //Chart1.Series[7].AddXY(StrToFloat(Label7.Caption),0);
      //Chart1.Series[7].AddXY(StrToFloat(Label8.Caption),0);
      ScrollBar_initialisieren(ScrollBar2, 0);
      ScrollBar_initialisieren(ScrollBar3, 1);
      Label61.Caption:='0';
      Label26.Caption:='0';
      aenderung_Auswahl_NormRohr:=0;

      // 60°C ausgewählt
      if (RadioButton3.Checked=True) then
        begin
          // Kupferrohr 8x1
          if Auswahl.ItemIndex=0 then
            begin
              Label3.Caption:='Kupferrohr 8x1';
              Label101.Caption:='8 mm';
              Label103.Caption:='1 mm';
              m_min:=15;
              m_max:=41;
              Label7.Caption:='15 kg/h';
              Label8.Caption:='41 kg/h';
              //Label7.Caption:='15';
              //Label8.Caption:='41';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Kupferrohr 10x1
          if Auswahl.ItemIndex=1 then
            begin
              Label3.Caption:='Kupferrohr 10x1';
              Label101.Caption:='10 mm';
              Label103.Caption:='1 mm';
              m_min:=19;
              m_max:=91;
              Label7.Caption:='19 kg/h';
              Label8.Caption:='91 kg/h';
              //Label7.Caption:='19';
              //Label8.Caption:='91';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Kupferrohr 12x1
          if Auswahl.ItemIndex=2 then
            begin
              Label3.Caption:='Kupferrohr 12x1';
              Label101.Caption:='12 mm';
              Label103.Caption:='1 mm';
              m_min:=28;
              m_max:=167;
              Label7.Caption:='28 kg/h';
              Label8.Caption:='167 kg/h';
              //Label7.Caption:='28';
              //Label8.Caption:='167';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Kupferrohr 15x1
          if Auswahl.ItemIndex=3 then
            begin
              Label3.Caption:='Kupferrohr 15x1';
              Label101.Caption:='15 mm';
              Label103.Caption:='1 mm';
              m_min:=57;
              m_max:=342;
              Label7.Caption:='57 kg/h';
              Label8.Caption:='342 kg/h';
              //Label7.Caption:='57';
              //Label8.Caption:='342';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Kupferrohr 18x1
          if Auswahl.ItemIndex=4 then
            begin
              Label3.Caption:='Kupferrohr 18x1';
              Label101.Caption:='18 mm';
              Label103.Caption:='1 mm';
              m_min:=100;
              m_max:=595;
              Label7.Caption:='100 kg/h';
              Label8.Caption:='595 kg/h';
              //Label7.Caption:='100';
              //Label8.Caption:='595';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Kupferrohr 22x1
          if Auswahl.ItemIndex=5 then
            begin
              Label3.Caption:='Kupferrohr 22x1';
              Label101.Caption:='22 mm';
              Label103.Caption:='1 mm';
              m_min:=184;
              m_max:=1080;
              Label7.Caption:='184 kg/h';
              Label8.Caption:='1080 kg/h';
              //Label7.Caption:='184';
              //Label8.Caption:='1080';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Kupferrohr 28x1,5
          if Auswahl.ItemIndex=6 then
            begin
              Label3.Caption:='Kupferrohr 28x1,5';
              Label101.Caption:='28 mm';
              Label103.Caption:='1,5 mm';
              m_min:=338;
              m_max:=1970;
              Label7.Caption:='338 kg/h';
              Label8.Caption:='1970 kg/h';
              //Label7.Caption:='338';
              //Label8.Caption:='1970';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Kupferrohr 35x1,5
          if Auswahl.ItemIndex=7 then
            begin
              Label3.Caption:='Kupferrohr 35x1,5';
              Label101.Caption:='35 mm';
              Label103.Caption:='1,5 mm';
              m_min:=660;
              m_max:=3800;
              Label7.Caption:='660 kg/h';
              Label8.Caption:='3800 kg/h';
              //Label7.Caption:='660';
              //Label8.Caption:='3800';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Kupferrohr 42x1,5
          if Auswahl.ItemIndex=8 then
            begin
              Label3.Caption:='Kupferrohr 42x1,5';
              Label101.Caption:='42 mm';
              Label103.Caption:='1,5 mm';
              m_min:=1130;
              m_max:=6460;
              Label7.Caption:='1130 kg/h';
              Label8.Caption:='6460 kg/h';
              //Label7.Caption:='1130';
              //Label8.Caption:='6460';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Kupferrohr 54x2
          if Auswahl.ItemIndex=9 then
            begin
              Label3.Caption:='Kupferrohr 54x2';
              Label101.Caption:='54 mm';
              Label103.Caption:='2 mm';
              m_min:=2210;
              m_max:=12500;
              Label7.Caption:='2210 kg/h';
              Label8.Caption:='12500 kg/h';
              //Label7.Caption:='2210';
              //Label8.Caption:='12500';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Stahlrohr DN10
          if Auswahl.ItemIndex=10 then
            begin
              Label3.Caption:='Stahlrohr DN10';
              Label101.Caption:='17,2 mm';
              Label103.Caption:='2,35 mm';
              m_min:=40.1;
              m_max:=223;
              Label7.Caption:='40,1 kg/h';
              Label8.Caption:='223 kg/h';
              //Label7.Caption:='40,1';
              //Label8.Caption:='223';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Stahlrohr DN15
          if Auswahl.ItemIndex=11 then
            begin
              Label3.Caption:='Stahlrohr DN15';
              Label101.Caption:='21,3 mm';
              Label103.Caption:='2,65 mm';
              m_min:=78.8;
              m_max:=434;
              Label7.Caption:='78,8 kg/h';
              Label8.Caption:='434 kg/h';
              //Label7.Caption:='78,8';
              //Label8.Caption:='434';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Stahlrohr DN20
          if Auswahl.ItemIndex=12 then
            begin
              Label3.Caption:='Stahlrohr DN20';
              Label101.Caption:='26,9 mm';
              Label103.Caption:='2,65 mm';
              m_min:=179;
              m_max:=963;
              Label7.Caption:='179 kg/h';
              Label8.Caption:='963 kg/h';
              //Label7.Caption:='179';
              //Label8.Caption:='963';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Stahlrohr DN25
          if Auswahl.ItemIndex=13 then
            begin
              Label3.Caption:='Stahlrohr DN25';
              Label101.Caption:='33,7 mm';
              Label103.Caption:='3,25 mm';
              m_min:=336;
              m_max:=1796;
              Label7.Caption:='336 kg/h';
              Label8.Caption:='1796 kg/h';
              //Label7.Caption:='336';
              //Label8.Caption:='1796';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Stahlrohr DN32
          if Auswahl.ItemIndex=14 then
            begin
              Label3.Caption:='Stahlrohr DN32';
              Label101.Caption:='42,4 mm';
              Label103.Caption:='3,25 mm';
              m_min:=720;
              m_max:=3780;
              Label7.Caption:='720 kg/h';
              Label8.Caption:='3780 kg/h';
              //Label7.Caption:='720';
              //Label8.Caption:='3780';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Stahlrohr DN40
          if Auswahl.ItemIndex=15 then
            begin
              Label3.Caption:='Stahlrohr DN40';
              Label101.Caption:='44,5 mm';
              Label103.Caption:='2,6 mm';
              m_min:=920;
              m_max:=4830;
              Label7.Caption:='920 kg/h';
              Label8.Caption:='4830 kg/h';
              //Label7.Caption:='920';
              //Label8.Caption:='4830';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Stahlrohr DN50
          if Auswahl.ItemIndex=16 then
            begin
              Label3.Caption:='Stahlrohr DN50';
              Label101.Caption:='57 mm';
              Label103.Caption:='2,9 mm';
              m_min:=1890;
              m_max:=9750;
              Label7.Caption:='1890 kg/h';
              Label8.Caption:='9750 kg/h';
              //Label7.Caption:='1890';
              //Label8.Caption:='9750';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Stahlrohr DN65
          if Auswahl.ItemIndex=17 then
            begin
              Label3.Caption:='Stahlrohr DN65';
              Label101.Caption:='76,1 mm';
              Label103.Caption:='2,9 mm';
              m_min:=4340;
              m_max:=22300;
              Label7.Caption:='4340 kg/h';
              Label8.Caption:='22300 kg/h';
              //Label7.Caption:='4340';
              //Label8.Caption:='22300';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Stahlrohr DN80
          if Auswahl.ItemIndex=18 then
            begin
              Label3.Caption:='Stahlrohr DN80';
              Label101.Caption:='88,9 mm';
              Label103.Caption:='3,2 mm';
              m_min:=6640;
              m_max:=34000;
              Label7.Caption:='6640 kg/h';
              Label8.Caption:='34000 kg/h';
              //Label7.Caption:='6640';
              //Label8.Caption:='34000';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Stahlrohr DN100
          if Auswahl.ItemIndex=19 then
            begin
              Label3.Caption:='Stahlrohr DN100';
              Label101.Caption:='108 mm';
              Label103.Caption:='3,6 mm';
              m_min:=11400;
              m_max:=57600;
              Label7.Caption:='11400 kg/h';
              Label8.Caption:='57600 kg/h';
              //Label7.Caption:='11400';
              //Label8.Caption:='57600';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;

          // Stahlrohr DN125
          if Auswahl.ItemIndex=20 then
            begin
              Label3.Caption:='Stahlrohr DN125';
              Label101.Caption:='133 mm';
              Label103.Caption:='4 mm';
              m_min:=20100;
              m_max:=101600;
              Label7.Caption:='20100 kg/h';
              Label8.Caption:='101600 kg/h';
              //Label7.Caption:='20100';
              //Label8.Caption:='101600';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='983,21 kg/m³';
              Label121.Caption:='0,0004664 kg/(m*s)';
              Label122.Caption:='4,74E-7 m²/s';
            end;
          end;

          // 80°C ausgewählt
          if (RadioButton4.Checked=True) then
            begin
              // Kupferrohr 8x1
          if Auswahl.ItemIndex=0 then
            begin
              Label3.Caption:='Kupferrohr 8x1';
              Label101.Caption:='8 mm';
              Label103.Caption:='1 mm';
              m_min:=15;
              m_max:=41;
              Label7.Caption:='15 kg/h';
              Label8.Caption:='41 kg/h';
              //Label7.Caption:='15';
              //Label8.Caption:='41';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Kupferrohr 10x1
          if Auswahl.ItemIndex=1 then
            begin
              Label3.Caption:='Kupferrohr 10x1';
              Label101.Caption:='10 mm';
              Label103.Caption:='1 mm';
              m_min:=19;
              m_max:=91;
              Label7.Caption:='19 kg/h';
              Label8.Caption:='91 kg/h';
              //Label7.Caption:='19';
              //Label8.Caption:='91';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Kupferrohr 12x1
          if Auswahl.ItemIndex=2 then
            begin
              Label3.Caption:='Kupferrohr 12x1';
              Label101.Caption:='12 mm';
              Label103.Caption:='1 mm';
              m_min:=28;
              m_max:=167;
              Label7.Caption:='28 kg/h';
              Label8.Caption:='167 kg/h';
              //Label7.Caption:='28';
              //Label8.Caption:='167';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Kupferrohr 15x1
          if Auswahl.ItemIndex=3 then
            begin
              Label3.Caption:='Kupferrohr 15x1';
              Label101.Caption:='15 mm';
              Label103.Caption:='1 mm';
              m_min:=57;
              m_max:=342;
              Label7.Caption:='57 kg/h';
              Label8.Caption:='342 kg/h';
              //Label7.Caption:='57';
              //Label8.Caption:='342';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Kupferrohr 18x1
          if Auswahl.ItemIndex=4 then
            begin
              Label3.Caption:='Kupferrohr 18x1';
              Label101.Caption:='18 mm';
              Label103.Caption:='1 mm';
              m_min:=100;
              m_max:=595;
              Label7.Caption:='100 kg/h';
              Label8.Caption:='595 kg/h';
              //Label7.Caption:='100';
              //Label8.Caption:='595';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Kupferrohr 22x1
          if Auswahl.ItemIndex=5 then
            begin
              Label3.Caption:='Kupferrohr 22x1';
              Label101.Caption:='22 mm';
              Label103.Caption:='1 mm';
              m_min:=184;
              m_max:=1080;
              Label7.Caption:='184 kg/h';
              Label8.Caption:='1080 kg/h';
              //Label7.Caption:='184';
              //Label8.Caption:='1080';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 /(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Kupferrohr 28x1,5
          if Auswahl.ItemIndex=6 then
            begin
              Label3.Caption:='Kupferrohr 28x1,5';
              Label101.Caption:='28 mm';
              Label103.Caption:='1,5 mm';
              m_min:=338;
              m_max:=1970;
              Label7.Caption:='338 kg/h';
              Label8.Caption:='1970 kg/h';
              //Label7.Caption:='338';
              //Label8.Caption:='1970';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Kupferrohr 35x1,5
          if Auswahl.ItemIndex=7 then
            begin
              Label3.Caption:='Kupferrohr 35x1,5';
              Label101.Caption:='35 mm';
              Label103.Caption:='1,5 mm';
              m_min:=660;
              m_max:=3800;
              Label7.Caption:='660 kg/h';
              Label8.Caption:='3800 kg/h';
              //Label7.Caption:='660';
              //Label8.Caption:='3800';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Kupferrohr 42x1,5
          if Auswahl.ItemIndex=8 then
            begin
              Label3.Caption:='Kupferrohr 42x1,5';
              Label101.Caption:='42 mm';
              Label103.Caption:='1,5 mm';
              m_min:=1130;
              m_max:=6460;
              Label7.Caption:='1130 kg/h';
              Label8.Caption:='6460 kg/h';
              //Label7.Caption:='1130';
              //Label8.Caption:='6460';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Kupferrohr 54x2
          if Auswahl.ItemIndex=9 then
            begin
              Label3.Caption:='Kupferrohr 54x2';
              Label101.Caption:='54 mm';
              Label103.Caption:='2 mm';
              m_min:=22100;
              m_max:=12500;
              Label7.Caption:='2210 kg/h';
              Label8.Caption:='12500 kg/h';
              //Label7.Caption:='2210';
              //Label8.Caption:='12500';
              Label116.Caption:='0,0015 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Stahlrohr DN10
          if Auswahl.ItemIndex=10 then
            begin
              Label3.Caption:='Stahlrohr DN10';
              Label101.Caption:='17,2 mm';
              Label103.Caption:='2,35 mm';
              m_min:=40.1;
              m_max:=223;
              Label7.Caption:='40,1 kg/h';
              Label8.Caption:='223 kg/h';
              //Label7.Caption:='40,1';
              //Label8.Caption:='223';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Stahlrohr DN15
          if Auswahl.ItemIndex=11 then
            begin
              Label3.Caption:='Stahlrohr DN15';
              Label101.Caption:='21,3 mm';
              Label103.Caption:='2,65 mm';
              m_min:=78.8;
              m_max:=434;
              Label7.Caption:='78,8 kg/h';
              Label8.Caption:='434 kg/h';
              //Label7.Caption:='78,8';
              //Label8.Caption:='434';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Stahlrohr DN20
          if Auswahl.ItemIndex=12 then
            begin
              Label3.Caption:='Stahlrohr DN20';
              Label101.Caption:='26,9 mm';
              Label103.Caption:='2,65 mm';
              m_min:=179;
              m_max:=963;
              Label7.Caption:='179 kg/h';
              Label8.Caption:='963 kg/h';
              //Label7.Caption:='179';
              //Label8.Caption:='963';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Stahlrohr DN25
          if Auswahl.ItemIndex=13 then
            begin
              Label3.Caption:='Stahlrohr DN25';
              Label101.Caption:='33,7 mm';
              Label103.Caption:='3,25 mm';
              m_min:=336;
              m_max:=1796;
              Label7.Caption:='336 kg/h';
              Label8.Caption:='1796 kg/h';
              //Label7.Caption:='336';
              //Label8.Caption:='1796';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Stahlrohr DN32
          if Auswahl.ItemIndex=14 then
            begin
              Label3.Caption:='Stahlrohr DN32';
              Label101.Caption:='42,4 mm';
              Label103.Caption:='3,25 mm';
              m_min:=720;
              m_max:=3780;
              Label7.Caption:='720 kg/h';
              Label8.Caption:='3780 kg/h';
              //Label7.Caption:='720';
              //Label8.Caption:='3780';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Stahlrohr DN40
          if Auswahl.ItemIndex=15 then
            begin
              Label3.Caption:='Stahlrohr DN40';
              Label101.Caption:='44,5 mm';
              Label103.Caption:='2,6 mm';
              m_min:=920;
              m_max:=4830;
              Label7.Caption:='920 kg/h';
              Label8.Caption:='4830 kg/h';
              //Label7.Caption:='920';
              //Label8.Caption:='4830';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Stahlrohr DN50
          if Auswahl.ItemIndex=16 then
            begin
              Label3.Caption:='Stahlrohr DN50';
              Label101.Caption:='57 mm';
              Label103.Caption:='2,9 mm';
              m_min:=1890;
              m_max:=9750;
              Label7.Caption:='1890 kg/h';
              Label8.Caption:='9750 kg/h';
              //Label7.Caption:='1890';
              //Label8.Caption:='9750';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Stahlrohr DN65
          if Auswahl.ItemIndex=17 then
            begin
              Label3.Caption:='Stahlrohr DN65';
              Label101.Caption:='76,1 mm';
              Label103.Caption:='2,9 mm';
              m_min:=4340;
              m_max:=22300;
              Label7.Caption:='4340 kg/h';
              Label8.Caption:='22300 kg/h';
              //Label7.Caption:='4340';
              //Label8.Caption:='22300';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Stahlrohr DN80
          if Auswahl.ItemIndex=18 then
            begin
              Label3.Caption:='Stahlrohr DN80';
              Label101.Caption:='88,9 mm';
              Label103.Caption:='3,2 mm';
              m_min:=6640;
              m_max:=34000;
              Label7.Caption:='6640 kg/h';
              Label8.Caption:='34000 kg/h';
              //Label7.Caption:='6640';
              //Label8.Caption:='34000';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Stahlrohr DN100
          if Auswahl.ItemIndex=19 then
            begin
              Label3.Caption:='Stahlrohr DN100';
              Label101.Caption:='108 mm';
              Label103.Caption:='3,6 mm';
              m_min:=11400;
              m_max:=57600;
              Label7.Caption:='11400 kg/h';
              Label8.Caption:='57600 kg/h';
              //Label7.Caption:='11400';
              //Label8.Caption:='57600';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;

          // Stahlrohr DN125
          if Auswahl.ItemIndex=20 then
            begin
              Label3.Caption:='Stahlrohr DN125';
              Label101.Caption:='133 mm';
              Label103.Caption:='4 mm';
              m_min:=20100;
              m_max:=101600;
              Label7.Caption:='20100 kg/h';
              Label8.Caption:='101600 kg/h';
              //Label7.Caption:='20100';
              //Label8.Caption:='101600';
              Label116.Caption:='0,045 mm';
              Label120.Caption:='971,80 kg/m³';
              Label121.Caption:='0,00035435 kg/(m*s)';
              Label122.Caption:='3,65E-7 m²/s';
            end;
        end;

      // zusätzlich Druckverlust bei 60°C und 80°C berechnen
      Druckverlust_MoodyDiagramm(983.21, 0.000000474, 3);
      Druckverlust_MoodyDiagramm(971.80, 0.000000365, 4);

    end
    else
      begin
        // der Button "Berechnen" ist bei dem aktuellen Rohr schon einmal gedrückt worden
        if (StrToInt(Label61.Caption)=0) then
          begin

          end;
      end;
    end
    else
      begin
        if (StrToInt(Label59.Caption)=1) then
          begin

          end;
      end;
end;


// Reset-Button der ScrollBars 2 und 3
procedure TAnalyse.ResetClick(Sender: TObject);
var
  Anzahl:Integer;
begin
  // der Knopf 'Reset' darf nur bei den genormten Rohren benutzt werden
  if (selection=1) then
    begin
      // der Button 'Reset' darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
      if (aenderung_Auswahl_NormRohr=0) then
        begin
          // der Knopf 'Reset' darf nur ein einziges Mal gedrückt werden
          if (StrToInt(Label26.Caption)=1) then
            begin

              if Kontrolle_ZeichnenButton=1 then
                begin
                  Chart1.Series[5].Clear;
                  Chart1.Series[6].Clear;
                  //Label113.Caption:=Label7.Caption;
                  //Label123.Caption:=Label8.Caption;

                  case Auswahl.ItemIndex of
                    0:
                      Anzahl:=17;
                    1:
                      Anzahl:=25;
                    else
                      Anzahl:=30;
                    end;
                  if Auswahl.ItemIndex<10 then
                    begin
                      Chart1.Series[5].AddXY(m_min, 0);
                      Chart1.Series[5].AddXY(m_min, 8);
                      Chart1.Series[6].AddXY(m_max, 0);
                      Chart1.Series[6].AddXY(m_max, 8);
                    end;
                  if Auswahl.ItemIndex>=10 then
                    begin
                      Chart1.Series[5].AddXY(m_min, 0);
                      Chart1.Series[5].AddXY(m_min, 5);
                      Chart1.Series[6].AddXY(m_max, 0);
                      Chart1.Series[6].AddXY(m_max, 5);
                    end;
                  Analyse.Chart1.Series[1].Clear;

                  // prüfen, ob die erste Approximation aktiviert ist
                  if (CheckBox2.Checked=True) then
                    begin
                      neue_Kurve_bei_variablen_Grenzen(c_min_SB1);
                      y_Kriterium_bei_variablen_Grenzen(c_min_SB1);
                      Automatisches_Suchen_nach_Optimum();
                    end;

                  // prüfen, ob die zweite Approximation aktiviert ist
                  if (CheckBox4.Checked=True) then
                    begin
                      Ausgleichskurve_Potenzfunktion_mit_variablen_Grenzen();
                    end;

                  ScrollBar_initialisieren(Scrollbar2, 0);
              ScrollBar_initialisieren(Scrollbar3, 1);
              end;
              Label26.Caption:='0';
            end;
        end;
    end;
end;

// Button, um Druckverlust zu interpolieren
procedure TAnalyse.BitBtn1Click(Sender: TObject);
var
  Anzahl, i, obereGrenze_Anzahl:Integer;
  x1,y1,x2,y2,x,y:Real;
  y_Appr1,y_Appr2:Real;
  fehler1,fehler2:Real;
begin
  // der Button 'OK' darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
  if (aenderung_Auswahl_NormRohr=0) then
    begin
  if Kontrolle_ZeichnenButton=1 then
    begin
      // -> vorgegebenes Rohr aus Tabelle
      if (selection=1) then
        begin
          case Auswahl.ItemIndex of
            0:
              obereGrenze_Anzahl:=17;
            1:
              obereGrenze_Anzahl:=25;
            else
              obereGrenze_Anzahl:=30;
            end;
        end
        else
          begin
            // -> selbst definiertes Rohr
            if (selection=2) then
              begin
                obereGrenze_Anzahl:=31;
              end;
          end;

      if (StrToFloat(Edit5.Text)>StrToFloat(Stringgrid1.Cells[1,1])) then
        begin
          if (StrToFloat(Edit5.Text)<StrToFloat(Stringgrid1.Cells[1,obereGrenze_Anzahl])) then
            begin
              // Variante 1 ohne Tabelle (Druckverlust und Massenstrom linear interpolieren)
              // -> vorgegebenes Rohr aus Tabelle
              if (selection=1) then
                begin
                  case Auswahl.ItemIndex of
                    0:
                      Anzahl:=17;
                    1:
                      Anzahl:=25;
                    else
                      Anzahl:=30;
                    end;
                end
                else
                  begin
                    // -> selbst-definiertes Rohr
                    if (selection=2) then
                      begin
                        Anzahl:=31;
                      end;
                  end;

              // x1, y1, x, x2, y2 und y ermitteln
              x:=StrToFloat(Edit5.Text);
              for i:=1 to Anzahl do
                begin
                  if (StrToFloat(Stringgrid1.Cells[1,i])<x) then
                    begin
                      // ACHTUNG: Wenn ein 'break' vorhanden ist, dann wird der erste zutreffende Wert genommen und anschließend sofort abgebrochen!!
                      x1:=StrToFloat(Stringgrid1.Cells[1,i]);
                      y1:=StrToFloat(Stringgrid1.Cells[2,i]);
                    end;
                end;
              for i:=1 to Anzahl do
                begin
                  if (StrToFloat(Stringgrid1.Cells[1,i])>=x) then
                    begin
                      x2:=StrToFloat(Stringgrid1.Cells[1,i]);
                      y2:=StrToFloat(Stringgrid1.Cells[2,i]);
                      break;
                    end;
                end;

              // interpolieren (y berechnen)
              y:=((y2-y1)/(x2-x1))*(x-x1)+y1;
              Label53.Caption:=FloatToStr(Runden(y,4))+' mbar';

              // y nach Approximation 1 (Modell 1) bestimmen
              y_Appr1:=Faktor_c_Appr_1*(x*x);
              //y_Appr1:=StrToFloat(Label25.Caption)*(x*x);
              Label54.Caption:=FloatToStr(Runden(y_Appr1,4))+' mbar';

              // y nach Approximation 2 (Modell 2) bestimmen
              // (prüfen, ob es wirklich eine sinnvolle quadratische Funktion ist)
              if Label22.Caption='-' then
                begin
                  // (wenn es keine sinnvolle quadratische Funktion ist, dann passiert nichts)
                end
                else
                  begin
                    y_Appr2:=Faktor_c_opt_Appr_2*Power(x,StrToFloat(Label22.Caption));
                    //y_Appr2:=StrToFloat(Label21.Caption)*Power(x,StrToFloat(Label22.Caption));
                    Label70.Caption:=FloatToStr(Runden(y_Appr2,4))+' mbar';
                  end;

              // Fehler dp1/dp (Modell 1) bestimmen
              fehler1:=((y_Appr1/y)-1)*100;
              if (fehler1<0) then
                begin
                  fehler1:=fehler1*-1;
                end;
              Label71.Caption:=FloatToStr(Runden(fehler1,4))+' %';

              // Fehler dp2/dp (Modell 2) bestimmen
              // (prüfen, ob es wirklich eine sinnvolle quadratische Funktion ist)
              if Label22.Caption='-' then
                begin
                  // (wenn es keine sinnvolle quadratische Funktion ist, dann passiert nichts)
                end
                else
                  begin
                    fehler2:=((y_Appr2/y)-1)*100;
                    if (fehler2<0) then
                      begin
                        fehler2:=fehler2*-1;
                      end;
                    Label72.Caption:=FloatToStr(Runden(fehler2,4))+' %';
                  end;

              {*// Variante 2 mit Tabelle (Druckverlust und Massenstrom linear interpolieren)
              Anzahl:=Anzahl_Stringgrid5;

              // -> zugehhörigen Wert aus StringGrid5 suchen
              for i:=1 to Anzahl do
                begin
                  if StrToFloat(Edit5.Text)=StrToFloat(StringGrid5.Cells[0,i]) then
                    begin
                      Label53.Caption:=FloatToStr(Runden(StrToFloat(StringGrid5.Cells[1,i]),2))+' mbar';
                      Label54.Caption:=FloatToStr(Runden(StrToFloat(StringGrid5.Cells[2,i]),2))+' mbar';
                      Label70.Caption:=FloatToStr(Runden(StrToFloat(StringGrid5.Cells[3,i]),2))+' mbar';
                      Label71.Caption:=FloatToStr(Runden(StrToFloat(StringGrid5.Cells[4,i]),4))+' %';
                      Label72.Caption:=FloatToStr(Runden(StrToFloat(StringGrid5.Cells[5,i]),4))+' %';
                    end;
                end;*}

            end;
        end;
    end;
    end;
end;

// Button, um Massenstrom zu interpolieren
procedure TAnalyse.BitBtn2Click(Sender: TObject);
var
  obereGrenze_Anzahl, Anzahl, i:Integer;
  x1,x2,y1,y2,x,y:Real;
  y_Appr1,y_Appr1_zw,y_Appr2,y_Appr2_zw:Real;
  fehler1,fehler2:Real;
begin
  // der Button 'OK' darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
  if (aenderung_Auswahl_NormRohr=0) then
    begin
  if Kontrolle_ZeichnenButton=1 then
    begin
      // -> vorgegebenes Rohr aus Tabelle
      if (selection=1) then
        begin
          case Auswahl.ItemIndex of
            0:
              obereGrenze_Anzahl:=17;
            1:
              obereGrenze_Anzahl:=25;
            else
              obereGrenze_Anzahl:=30;
            end;
        end
        else
          begin
            // -> selbst definiertes Rohr
            if (selection=2) then
              begin
                obereGrenze_Anzahl:=31;
              end;
          end;

      if StrToFloat(Edit6.Text)>StrToFloat(StringGrid1.Cells[2,1]) then
        begin
          if StrToFloat(Edit6.Text)<StrToFloat(StringGrid1.Cells[2,obereGrenze_Anzahl]) then
            begin

              // Variante 1 ohne Tabelle (Druckverlust und Massenstrom linear interpolieren)
              // -> vorgegebenes Rohr aus Tabelle
              if (selection=1) then
                begin
                  case Auswahl.ItemIndex of
                    0:
                      Anzahl:=17;
                    1:
                      Anzahl:=25;
                    else
                      Anzahl:=30;
                    end;
                  end
                  else
                    begin
                      // -> selbst-definiertes Rohr
                      if (selection=2) then
                        begin
                          Anzahl:=31;
                        end;
                    end;

              // x1, x2, x, y1, y2,und y ermitteln
              x:=StrToFloat(Edit6.Text);
              for i:=1 to Anzahl do
                begin
                  if (StrToFloat(Stringgrid1.Cells[2,i])<x) then
                    begin
                      // ACHTUNG: Wenn ein 'break' vorhanden ist, dann wird der erste zutreffende Wert genommen und anschließend sofort abgebrochen!!
                      x1:=StrToFloat(Stringgrid1.Cells[2,i]);
                      y1:=StrToFloat(Stringgrid1.Cells[1,i]);
                    end;
                end;
              for i:=1 to Anzahl do
                begin
                  if (StrToFloat(Stringgrid1.Cells[2,i])>=x) then
                    begin
                      x2:=StrToFloat(Stringgrid1.Cells[2,i]);
                      y2:=StrToFloat(Stringgrid1.Cells[1,i]);
                      break;
                    end;
                end;

              // interpolieren (y berechnen)
              y:=((y2-y1)/(x2-x1))*(x-x1)+y1;
              Label57.Caption:=FloatToStr(Runden(y,4))+' kg/h';

              // y nach Approximation 1 (Modell 1) ermitteln
              y_appr1_zw:=x/Faktor_c_Appr_1;
              //y_appr1_zw:=x/StrToFloat(Label25.Caption);
              y_Appr1:=Exp(Ln(y_Appr1_zw)/2);
              Label58.Caption:=FloatToStr(Runden(y_Appr1,4))+' kg/h';

              // y nach Approximation 2 (Modell 2) ermitteln
              // (prüfen, ob es wirklich eine sinnvolle quadratische Funktion ist)
              if Label22.Caption='-' then
                begin
                  // (wenn es keine sinnvolle quadratische Funktion ist, dann passiert nichts)
                end
                else
                  begin
                    y_Appr2_zw:=x/Faktor_c_opt_Appr_2;
                    //y_Appr2_zw:=x/StrToFloat(Label21.Caption);
                    y_Appr2:=Exp(Ln(y_Appr2_zw)/StrToFloat(Label22.Caption));
                    Label76.Caption:=FloatToStr(Runden(y_Appr2,4))+' kg/h';
                  end;

              // Fehler m1/m (Modell 1) ermitteln
              fehler1:=((y_Appr1/y)-1)*100;
              if (fehler1<0) then
                begin
                  fehler1:=fehler1*-1;
                end;
              Label77.Caption:=FloatToStr(Runden(fehler1,4))+' %';

              // Fehler m2/m (Modell 2) ermitteln
              // (prüfen, ob es wirklich eine sinnvolle quadratische Funktion ist)
              if Label22.Caption='-' then
                begin
                  // (wenn es keine sinnvolle quadratische Funktion ist, dann passiert nichts)
                end
                else
                  begin
                    fehler2:=((y_Appr2/y)-1)*100;
                    if (fehler2<0) then
                      begin
                        fehler2:=fehler2*-1;
                      end;
                    Label78.Caption:=FloatToStr(Runden(fehler2,4))+' %';
                  end;


              {*// Variante 2 mit Tabelle (Druckverlust und Massenstrom linear interpolieren)
              Anzahl:=Anzahl_Stringgrid4;

              // -> zugehöhrigen Wert aus StringGrid4 suchen
              for i:=1 to Anzahl do
                begin
                  if StrToFloat(Edit6.Text)=StrToFloat(StringGrid4.Cells[0,i]) then
                    begin
                      Label57.Caption:=FloatToStr(Runden(StrToFloat(StringGrid4.Cells[1,i]),2))+' kg/h';
                      Label58.Caption:=FloatToStr(Runden(StrToFloat(StringGrid4.Cells[2,i]),2))+' kg/h';
                      Label76.Caption:=FloatToStr(Runden(StrToFloat(StringGrid4.Cells[3,i]),2))+' kg/h';
                      Label77.Caption:=FloatToStr(Runden(StrToFloat(StringGrid4.Cells[4,i]),4))+' %';
                      Label78.Caption:=FloatToStr(Runden(StrToFloat(StringGrid4.Cells[5,i]),4))+' %';
                    end;
                end;*}

            end;
        end;
    end;
    end;
end;

// Button, um Druckverlust beim optimalen Faktor c zu interpolieren
procedure TAnalyse.BitBtn4Click(Sender: TObject);
var
  Anzahl, i, obereGrenze_Anzahl:Integer;
  n:Real;
  x1,y1,x,y,x2,y2:Real;
  y_Appr1,y_Appr2:Real;
  fehler1,fehler2:Real;
begin
  // der Button 'OK' darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
  if (aenderung_Auswahl_NormRohr=0) then
    begin
  if Kontrolle_ZeichnenButton=1 then
    begin
      // -> vorgegebenes Rohr aus Tabelle
      if (selection=1) then
        begin
          case Auswahl.ItemIndex of
            0:
              obereGrenze_Anzahl:=17;
            1:
              obereGrenze_Anzahl:=25;
            else
              obereGrenze_Anzahl:=30;
            end;
        end
        else
          begin
            // -> selbst definiertes Rohr
            if (selection=2) then
              begin
                obereGrenze_Anzahl:=31;
              end;
          end;

      if (StrToFloat(Edit7.Text)>StrToFloat(Stringgrid1.Cells[1,1])) then
        begin
          if (StrToFloat(Edit7.Text)<StrToFloat(Stringgrid1.Cells[1,obereGrenze_Anzahl])) then
            begin
              // Variante 1 ohne Tabelle (Druckverlust und Massenstrom linear interpolieren)
              // -> vorgegebenes Rohr aus Tabelle
              if (selection=1) then
                begin
                  case Auswahl.ItemIndex of
                    0:
                      Anzahl:=17;
                    1:
                      Anzahl:=25;
                    else
                      Anzahl:=30;
                    end;
                end
                else
                  begin
                    // -> selbst-definiertes Rohr
                    if (selection=2) then
                      begin
                        Anzahl:=31;
                      end;
                  end;

              // x1, y1, x, x2, y2 und y ermitteln
              x:=StrToFloat(Edit7.Text);
              for i:=1 to Anzahl do
                begin
                  if (StrToFloat(Stringgrid1.Cells[1,i])<x) then
                    begin
                      // ACHTUNG: Wenn ein 'break' vorhanden ist, dann wird der erste zutreffende Wert genommen und anschließend sofort abgebrochen!!
                      x1:=StrToFloat(Stringgrid1.Cells[1,i]);
                      y1:=StrToFloat(Stringgrid1.Cells[2,i]);
                    end;
                end;
              for i:=1 to Anzahl do
                begin
                  if (StrToFloat(Stringgrid1.Cells[1,i])>=x) then
                    begin
                      x2:=StrToFloat(Stringgrid1.Cells[1,i]);
                      y2:=StrToFloat(Stringgrid1.Cells[2,i]);
                      break;
                    end;
                end;

              // interpolieren (y berechnen)
              y:=((y2-y1)/(x2-x1))*(x-x1)+y1;
              //Label65.Caption:=FloatToStr(Runden(y,4))+' mbar';

              // y nach Approximation 1 (Modell 1) bestimmen
              y_Appr1:=Faktor_c_opt_Appr_1*(x*x);
              //y_Appr1:=StrToFloat(Label28.Caption)*(x*x);
              Label66.Caption:=FloatToStr(Runden(y_Appr1,4))+' mbar';

              // y nach Approximation 2 (Modell 2) bestimmen
              // (prüfen, ob es wirklich eine sinnvolle quadratische Funktion ist)
              if Label22.Caption='-' then
                begin
                  // (wenn es keine sinnvolle quadratische Funktion ist, dann passiert nichts)
                end
                else
                  begin
                    y_Appr2:=Faktor_c_opt_Appr_2*Power(x,StrToFloat(Label22.Caption));
                    //y_Appr2:=StrToFloat(Label21.Caption)*Power(x,StrToFloat(Label22.Caption));
                    Label82.Caption:=FloatToStr(Runden(y_Appr2,4))+' mbar';
                  end;

              // Fehler dp1/dp (Modell 1) ermitteln
              fehler1:=((y_Appr1/y)-1)*100;
              if (fehler1<0) then
                begin
                  fehler1:=fehler1*-1;
                end;
              Label83.Caption:=FloatToStr(Runden(fehler1,4))+' %';

              // Fehler dp2/dp (Modell 2) ermitteln
              // (prüfen, ob es wirklich eine sinnvolle quadratische Funktion ist)
              if Label22.Caption='-' then
                begin
                  // (wenn es keine sinnvolle quadratische Funktion ist, dann passiert nichts)
                end
                else
                  begin
                    fehler2:=((y_Appr2/y)-1)*100;
                    if (fehler2<0) then
                      begin
                        fehler2:=fehler2*-1;
                      end;
                    Label84.Caption:=FloatToStr(Runden(fehler2,4))+' %';
                  end;

              // Variante 2 mit Tabelle (Druckverlust und Massenstrom linear interpolieren)
              {*Anzahl:=Anzahl_Stringgrid5;

              // -> zugehörigen Wert aus StringGrid5 suchen
              for i:=1 to Anzahl do
                begin
                  if StrToFloat(Edit7.Text)=StrToFloat(StringGrid5.Cells[0,i]) then
                    begin
                      Label65.Caption:=FloatToStr(Runden(StrToFloat(StringGrid5.Cells[1,i]),2));
                      Label66.Caption:=FloatToStr(Runden((StrToFloat(Label45.Caption)*StrToFloat(StringGrid5.Cells[0,i])*StrToFloat(StringGrid5.Cells[0,i])),2));
                      n:=StrToFloat(Label22.Caption);
                      Label82.Caption:=FloatToStr(Runden((StrToFloat(Label21.Caption)*Power(StrToFloat(StringGrid5.Cells[0,i]),n)),2));
                      Label83.Caption:=FloatToStr(Runden((StrToFloat(Label66.Caption)/StrToFloat(Label65.Caption)),4));
                      Label84.Caption:=FloatToStr(Runden((StrToFloat(Label82.Caption)/StrToFloat(Label65.Caption)),4));
                    end;
                end;*}

            end;
        end;
    end;
    end;
end;

// Button, um Massenstrom beim optimalen Faktor c zu interpolieren
procedure TAnalyse.BitBtn3Click(Sender: TObject);
var
  obereGrenze_Anzahl, Anzahl, i:Integer;
  //x, n:Real;
  x1,y1,x,x2,y2,y:Real;
  y_Appr1,y_Appr1_zw,y_Appr2,y_Appr2_zw:Real;
  fehler1,fehler2:Real;
begin
  // der Button 'OK' darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
  if (aenderung_Auswahl_NormRohr=0) then
    begin
  if Kontrolle_ZeichnenButton=1 then
    begin
      // -> vorgegebenes Rohr aus Tabelle
      if (selection=1) then
        begin
          case Auswahl.ItemIndex of
            0:
              obereGrenze_Anzahl:=17;
            1:
              obereGrenze_Anzahl:=25;
            else
              obereGrenze_Anzahl:=30;
            end;
        end
        else
          begin
            // -> selbst-definiertes Rohr
            if (selection=2) then
              begin
                obereGrenze_Anzahl:=31;
              end;
          end;

      if StrToFloat(Edit8.Text)>StrToFloat(StringGrid1.Cells[2,1]) then
        begin
          if StrToFloat(Edit8.Text)<StrToFloat(StringGrid1.Cells[2,obereGrenze_Anzahl]) then
            begin

              // Variante 1 ohne Tabelle (Druckverlust und Massenstrom linear interpolieren)
              // -> vorgegebenes Rohr aus Tabelle
              if (selection=1) then
                begin
                  case Auswahl.ItemIndex of
                    0:
                      Anzahl:=17;
                    1:
                      Anzahl:=25;
                    else
                      Anzahl:=30;
                    end;
                end
                else
                  begin
                    // -> selbst-definiertes Rohr
                    if (selection=2) then
                      begin
                        Anzahl:=31;
                      end;
                  end;

              // x1, y1, x, x2, y2 und y ermitteln
              x:=StrToFloat(Edit8.Text);
              for i:=1 to Anzahl do
                begin
                  if (StrToFloat(Stringgrid1.Cells[2,i])<x) then
                    begin
                      // ACHTUNG: Wenn ein 'break' vorhanden ist, dann wird der erste zutreffende Wert genommen und anschließend sofort abgebrochen!!
                      x1:=StrToFloat(Stringgrid1.Cells[2,i]);
                      y1:=StrToFloat(Stringgrid1.Cells[1,i]);
                    end;
                end;
              for i:=1 to Anzahl do
                begin
                  if (StrToFloat(Stringgrid1.Cells[2,i])>=x) then
                    begin
                      x2:=StrToFloat(Stringgrid1.Cells[2,i]);
                      y2:=StrToFloat(Stringgrid1.Cells[1,i]);
                      break;
                    end;
                end;

              // interpolieren (y berechnen)
              y:=((y2-y1)/(x2-x1))*(x-x1)+y1;
              //Label61.Caption:=FloatToStr(Runden(y,4))+' kg/h';

              // y nach Approximation 1 (Modell 1) bestimmen
              if(Faktor_c_opt_Appr_1<>0) then
                begin
                  y_Appr1_zw:=x/Faktor_c_opt_Appr_1;
                  //y_Appr1_zw:=x/StrToFloat(Label28.Caption);
                  y_Appr1:=Exp(Ln(y_Appr1_zw)/2);
                  Label62.Caption:=FloatToStr(Runden(y_Appr1,4))+' kg/h';
                end;

              // y nach Approximation 2 (Modell 2) bestimmen
              // (prüfen, ob es wirklich eine sinnvolle quadratische Funktion ist)
              if Label22.Caption='-' then
                begin
                  // (wenn es keine sinnvolle quadratische Funktion ist, dann passiert nichts)
                end
                else
                  begin
                    y_Appr2_zw:=x/Faktor_c_opt_Appr_2;
                    //y_Appr2_zw:=x/StrToFloat(Label21.Caption);
                    y_Appr2:=Exp(Ln(y_Appr2_zw)/StrToFloat(Label22.Caption));
                    Label88.Caption:=FloatToStr(Runden(y_Appr2,4))+' kg/h';
                  end;

              // Fehler m1/m (Modell 1) ermitteln
              fehler1:=((y_Appr1/y)-1)*100;
              if (fehler1<0) then
                begin
                  fehler1:=fehler1*-1;
                end;
              Label89.Caption:=FloatToStr(Runden(fehler1,4))+' %';

              // Fehler m2/m (Modell 2) ermitteln
              // (prüfen, ob es wirklich eine sinnvolle quadratische Funktion ist)
              if Label22.Caption='-' then
                begin
                  // (wenn es keine sinnvolle quadratische Funktion ist, dann passiert nichts)
                end
                else
                  begin
                    fehler2:=((y_Appr2/y)-1)*100;
                    if (fehler2<0) then
                      begin
                        fehler2:=fehler2*-1;
                      end;
                    Label90.Caption:=FloatToStr(Runden(fehler2,4))+' %';
                  end;

              // Variante 2 mit Tabelle (Druckverlust und Massenstrom linear interpolieren)
              {*Anzahl:=Anzahl_Stringgrid4;

              // -> zugehörigen Wert aus StringGrid4 suchen
              for i:=1 to Anzahl do
                begin
                  if StrToFloat(Edit8.Text)=StrToFloat(StringGrid4.Cells[0,i]) then
                    begin
                      Label61.Caption:=FloatToStr(Runden(StrToFloat(StringGrid4.Cells[1,i]),2));
                      x:=StrToFloat(StringGrid4.Cells[0,i])/StrToFloat(Label45.Caption);
                      Label62.Caption:=FloatToStr(Runden((Exp(Ln(x)/2)),2));
                      x:=StrToFloat(StringGrid4.Cells[0,i])/StrToFloat(Label21.Caption);
                      n:=StrToFloat(Label22.Caption);
                      Label88.Caption:=FloatToStr(Runden((Exp(Ln(x)/n)),2));
                      Label89.Caption:=FloatToStr(Runden((StrToFloat(Label62.Caption)/StrToFloat(Label61.Caption)),4));
                      Label90.Caption:=FloatToStr(Runden((StrToFloat(Label88.Caption)/StrToFloat(Label61.Caption)),4));
                    end;
                end;*}

            end;
        end;
    end;
    end;
end;

// Definieren-Button
procedure TAnalyse.DefinierenClick(Sender: TObject);
var
  lambda, c:Real;
  Druckverlust:Real;
  i,j:Integer;
begin
  // Fenster "eigenes Rohr" zur Definition eines Rohres öffnen
  eigenesRohr.show;
end;

// 'Moody-Diagramm'-Button
procedure TAnalyse.Button2Click(Sender: TObject);
var
  i,Anzahl:Integer;
  durchmesser:Real;
  x_Achse,y_Achse:Integer;
  alpha,Rohrreibungszahl,Reynoldzahl,Rauhigkeit:Real;
  epsilon,Rohrreibungszahl_alt,Rohrreibungszahl_neu,funktion,ersteAbleitung:Real;
  Reynoldzahl_Grenze,Rohrreibungszahl_alt_Grenze,Rohrreibungszahl_neu_Grenze:Real;
  j, karman_nikuradse:Integer;
  Reynoldzahl_untereGrenze, Reynoldzahl_obereGrenze, zwischenWert:Real;
  kinematischeViskositaet:Real;
  startIndex,endIndex:Integer;
  massenstrom,w:Real;
  hydraulisch_rau:Integer;
begin
  // der Button 'Moody-Diagramm' darf nur bei den genormten Rohren benutzt werden!
  if (selection=1) then
    begin
      // der Button 'Moody-Diagramm' darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
      if (aenderung_Auswahl_NormRohr=0) then
        begin
  // selbst-gezeichnetes Moody-Diagramm (eigenes Moody-Diagramm)
  if moodyDiagram=1 then
    begin
      // --> eine Linie zur Kennzeichnung von Re_kritisch=2320 einzeichnen
      MoodyDiagramm.Chart1.Series[24].AddXY(2320, 0.005);
      MoodyDiagramm.Chart1.Series[24].AddXY(2320, 0.5);

      // --> Grenzkurve einzeichnen
      MoodyDiagramm.Chart1.Series[0].Title:='Grenzkurve';

      Reynoldzahl:=2320;

      for i:=1 to 23 do
        begin
          // Newtonsches Iterationsverfahren
          Rohrreibungszahl_alt_Grenze:=0.015;
          epsilon:=1;

          while epsilon>0.00000000001 do
            begin
              funktion:=1.74-2*log10((1/Sqrt(Rohrreibungszahl_alt_Grenze))*(400/(Reynoldzahl)))-1/(Sqrt(Rohrreibungszahl_alt_Grenze));
              ersteAbleitung:=(1/ln(10))*Sqrt(Rohrreibungszahl_alt_Grenze)+(0.5*1/(Rohrreibungszahl_alt_Grenze)*1/(Sqrt(Rohrreibungszahl_alt_Grenze)));
              Rohrreibungszahl_neu_Grenze:=Rohrreibungszahl_alt_Grenze-(funktion/ersteAbleitung);
              epsilon:=(Rohrreibungszahl_neu_Grenze-Rohrreibungszahl_alt_Grenze)/Rohrreibungszahl_neu_Grenze;
              Rohrreibungszahl_alt_Grenze:=Rohrreibungszahl_neu_Grenze;
            end;

            // -> Werte ins Diagramm eintragen
            MoodyDiagramm.Chart1.Series[0].AddXY(Reynoldzahl,Rohrreibungszahl_neu_Grenze);

            // -> Werte in Tabelle schreiben
            MoodyDiagramm.Stringgrid2.Cells[0,i]:=FloatToStr(Reynoldzahl);
            MoodyDiagramm.Stringgrid2.Cells[1,i]:=FloatToStr(Rohrreibungszahl_neu_Grenze);

            // -> Wertebereich x-Achse (Reynoldzahl)
            if (Reynoldzahl>=2320) and (Reynoldzahl<10320) then
              begin
                Reynoldzahl:=Reynoldzahl+2000;
              end
              else
                begin
                  if (Reynoldzahl=10320) then
                    begin
                      Reynoldzahl:=Reynoldzahl+10000;
                    end
                    else
                      begin
                        if (Reynoldzahl>=20320) and (Reynoldzahl<100320) then
                          begin
                            Reynoldzahl:=Reynoldzahl+20000;
                          end
                          else
                            begin
                              if (Reynoldzahl=100320) then
                                begin
                                  Reynoldzahl:=Reynoldzahl+100000;
                                end
                                else
                                  begin
                                    if (Reynoldzahl>=200320) and(Reynoldzahl<1000320) then
                                      begin
                                        Reynoldzahl:=Reynoldzahl+200000;
                                      end
                                      else
                                        begin
                                          if (Reynoldzahl=1000320) then
                                            begin
                                              Reynoldzahl:=Reynoldzahl+1000000;
                                            end
                                            else
                                              begin
                                                if (Reynoldzahl>=2000320) and (Reynoldzahl<10000320) then
                                                  begin
                                                    Reynoldzahl:=Reynoldzahl+2000000;
                                                  end
                                                  else
                                                    begin
                                                      if (Reynoldzahl=10000320) then
                                                        begin
                                                          Reynoldzahl:=Reynoldzahl+10000000;
                                                        end
                                                        else
                                                          begin
                                                            if (Reynoldzahl>=20000320) and (Reynoldzahl<100000320) then
                                                              begin
                                                                Reynoldzahl:=Reynoldzahl+20000000;
                                                              end
                                                              else
                                                                begin
                                                                  if (Reynoldzahl_Grenze=100000320) then
                                                                    begin
                                                                      Reynoldzahl_Grenze:=Reynoldzahl_Grenze+100000320;
                                                                    end
                                                                    else
                                                                      begin
                                                                        if (Reynoldzahl_Grenze>=200000320) and (Reynoldzahl_Grenze<1000000320) then
                                                                          begin
                                                                            Reynoldzahl_Grenze:=Reynoldzahl_Grenze+200000000;
                                                                          end;
                                                                      end;
                                                                end;
                                                          end;
                                                    end;
                                              end;
                                        end;
                                  end;
                            end;
                      end;
                end;
        end;

      // ---> Hagen-Poiseuille
      MoodyDiagramm.Chart1.Series[22].Title:='Rohrreibungszahl_Hagen-Poiseuille';
      Reynoldzahl_untereGrenze:=500;
      Reynoldzahl_obereGrenze:=2320;
      for i:=1 to 23 do
        begin
          zwischenWert:=log10(Reynoldzahl_obereGrenze/Reynoldzahl_untereGrenze);
          Reynoldzahl:=Reynoldzahl_untereGrenze*Power(10, ((zwischenWert/23)*(i-1)));
          Rohrreibungszahl:=64/Reynoldzahl;
          MoodyDiagramm.Chart1.Series[22].AddXY(Reynoldzahl,Rohrreibungszahl);
        end;

      // ---> Blasius
      // -> hydraulisch glatt + turbulente Strömung
      MoodyDiagramm.Chart1.Series[20].Title:='Rohrreibungszahl_Blasius';
      Reynoldzahl_untereGrenze:=2320;
      Reynoldzahl_obereGrenze:=99999;
      for i:=1 to 23 do
        begin
          zwischenWert:=log10(Reynoldzahl_obereGrenze/Reynoldzahl_untereGrenze);
          Reynoldzahl:=Reynoldzahl_untereGrenze*Power(10, ((zwischenWert/23)*(i-1)));
          Rohrreibungszahl:=0.3164*Power(Reynoldzahl, -0.25);
          MoodyDiagramm.Chart1.Series[20].AddXY(Reynoldzahl,Rohrreibungszahl)
        end;

      // ---> Prandtl
      // -> hydraulisch glatt + turbulente Strömung
      MoodyDiagramm.Chart1.Series[1].Title:='Rohrreibungszahl_Prandtl';
      Reynoldzahl_untereGrenze:=100001;
      Reynoldzahl_obereGrenze:=80000000;
      for i:=1 to 23 do
        begin
          zwischenWert:=log10(Reynoldzahl_obereGrenze/Reynoldzahl_untereGrenze);
          Reynoldzahl:=Reynoldzahl_untereGrenze*Power(10, ((zwischenWert/23)*(i-1)));
          Rohrreibungszahl_alt:=0.018-0.005*(log10(Reynoldzahl)-5);
          epsilon:=1;

          // ---> Anwendung des Newtonsches Iterationsverfahren
          while abs(epsilon)>0.00000000001 do
            begin
              funktion:=2*log10(Reynoldzahl*Sqrt(Rohrreibungszahl_alt))-0.9-1/(Sqrt(Rohrreibungszahl_alt));
              ersteAbleitung:=1/(Rohrreibungszahl_alt*ln(10))+1/(2*Rohrreibungszahl_alt*Sqrt(Rohrreibungszahl_alt));
              Rohrreibungszahl_neu:=Rohrreibungszahl_alt-(funktion/ersteAbleitung);
              epsilon:=(Rohrreibungszahl_neu-Rohrreibungszahl_alt)/Rohrreibungszahl_neu;
              Rohrreibungszahl_alt:=Rohrreibungszahl_neu;
            end;

          Rohrreibungszahl:=Rohrreibungszahl_neu;
          MoodyDiagramm.Chart1.Series[1].AddXY(Reynoldzahl,Rohrreibungszahl);
        end;

      // Rohrreibung nach Colebrook und Karman-Nikuradse
      MoodyDiagramm.Chart1.Series[2].Title:='alpha_0,05';
      MoodyDiagramm.Chart1.Series[3].Title:='alpha_0,04';
      MoodyDiagramm.Chart1.Series[4].Title:='alpha_0,03';
      MoodyDiagramm.Chart1.Series[5].Title:='alpha_0,02';
      MoodyDiagramm.Chart1.Series[6].Title:='alpha_0,015';
      MoodyDiagramm.Chart1.Series[7].Title:='alpha_0,01';
      MoodyDiagramm.Chart1.Series[8].Title:='alpha_0,008';
      MoodyDiagramm.Chart1.Series[9].Title:='alpha_0,006';
      MoodyDiagramm.Chart1.Series[10].Title:='alpha_0,004';
      MoodyDiagramm.Chart1.Series[11].Title:='alpha_0,002';
      MoodyDiagramm.Chart1.Series[12].Title:='alpha_0,001';
      MoodyDiagramm.Chart1.Series[13].Title:='alpha_0,0008';
      MoodyDiagramm.Chart1.Series[14].Title:='alpha_0,0006';
      MoodyDiagramm.Chart1.Series[15].Title:='alpha_0,0004';
      MoodyDiagramm.Chart1.Series[16].Title:='alpha_0,0002';
      MoodyDiagramm.Chart1.Series[17].Title:='alpha_0,0001';
      MoodyDiagramm.Chart1.Series[18].Title:='alpha_0,00005';
      MoodyDiagramm.Chart1.Series[19].Title:='alpha_0,00001';

      for j:=2 to 19 do
        begin
          case j of
            2:
              alpha:=0.05;
            3:
              alpha:=0.04;
            4:
              alpha:=0.03;
            5:
              alpha:=0.02;
            6:
              alpha:=0.015;
            7:
              alpha:=0.01;
            8:
              alpha:=0.008;
            9:
              alpha:=0.006;
            10:
              alpha:=0.004;
            11:
              alpha:=0.002;
            12:
              alpha:=0.001;
            13:
              alpha:=0.0008;
            14:
              alpha:=0.0006;
            15:
              alpha:=0.0004;
            16:
              alpha:=0.0002;
            17:
              alpha:=0.0001;
            18:
              alpha:=0.00005;
            19:
              alpha:=0.00001;
            end;

          for i:=1 to 23 do
            begin
              Reynoldzahl:=StrToFloat(MoodyDiagramm.Stringgrid2.Cells[0,i]);

              // -> prüfen, ob das Rohr hydraulisch glatt oder hydraulisch rau ist
              //    ( mit 1/(Rohrreibungszahl^1/2)=(Reynoldszahl*Rauhigkeit)/(200*Durchmesser) und Gleichung von 'Karman-Nikuradse' )
              Rohrreibungszahl:=1/((1.74-2*log10(2*alpha))*(1.74-2*log10(2*alpha)));


              // hydraulisch rau nach Karman-Nikuradse???
              // -> hydraulische rau nach Karman-Nikuradse
              if alpha>=(200/(Reynoldzahl*Power(Rohrreibungszahl, 1/2))) then
                begin
                  karman_nikuradse:=1;
                end
                else
                  // -> nicht hydraulisch rau nach Karman-Nikuradse
                  if alpha<(200/(Reynoldzahl*Power(Rohrreibungszahl, 1/2))) then
                    begin
                      karman_nikuradse:=0;

                      // Prüfen nach Colebrook
                      // - siehe unten -

                    end;

              // ---> Colebrook
              //      -> hydraulisch rau + turbulente Strömung
              if (Reynoldzahl>=2320) and (karman_nikuradse=0) then
                begin
                  Rohrreibungszahl_alt:=0.015;
                  epsilon:=1;

                  // ---> Anwendung des Newtonsches Iterationsverfahren
                  while abs(epsilon)>0.00000000001 do
                    begin
                      funktion:=1/(Sqrt(Rohrreibungszahl_alt))+2*log10(2*alpha+18.7/(Reynoldzahl*Sqrt(Rohrreibungszahl_alt)))-1.74;
                      ersteAbleitung:=-0.5/(Rohrreibungszahl_alt*Sqrt(Rohrreibungszahl_alt))+(2/ln(10))*(1/(2*alpha+18.7/(Reynoldzahl*Sqrt(Rohrreibungszahl_alt))))*(18.7/Reynoldzahl)*-0.5/(Rohrreibungszahl_alt*Sqrt(Rohrreibungszahl_alt));
                      Rohrreibungszahl_neu:=Rohrreibungszahl_alt-(funktion/ersteAbleitung);
                      epsilon:=(Rohrreibungszahl_neu-Rohrreibungszahl_alt)/Rohrreibungszahl_neu;
                      Rohrreibungszahl_alt:=Rohrreibungszahl_neu;
                    end;

                  Rohrreibungszahl:=Rohrreibungszahl_neu;
                  MoodyDiagramm.Stringgrid2.Cells[j+1,i]:=FloatToStr(Rohrreibungszahl);
                  MoodyDiagramm.Chart1.Series[j].AddXY(Reynoldzahl,Rohrreibungszahl);
                end;

                // ---> Karman-Nikuradse
                //      -> hydraulisch rau + turbulente Strömung
                if (Reynoldzahl>=2320) and (karman_nikuradse=1) then
                  begin
                    Rohrreibungszahl:=1/((1.74-2*log10(2*alpha))*(1.74-2*log10(2*alpha)));
                    MoodyDiagramm.Stringgrid2.Cells[j+1,i]:=FloatToStr(Rohrreibungszahl);
                    MoodyDiagramm.Chart1.Series[j].AddXY(Reynoldzahl,Rohrreibungszahl);
                  end;

            end;
        end;

      moodyDiagram:=0;
    end;

  // -> nur wenn ein Rohr ausgewählt wurde,
  //    kann das Moody-Diagramm geöffnet werden
  if (Label113.Caption='-') and (Label123.Caption='-') then
    begin

    end
    else
      begin
        {***** Initialisierungen *****}
        for i:=0 to MoodyDiagramm.StringGrid1.ColCount do
          begin
            MoodyDiagramm.StringGrid1.Cols[i].Clear;
          end;

        MoodyDiagramm.StringGrid1.Cells[0,0]:='Geschwindigkeit [m/s]';
        MoodyDiagramm.StringGrid1.Cells[1,0]:='Massenstrom [kg/h]';
        MoodyDiagramm.StringGrid1.Cells[2,0]:='Druckverlust (Norm) [mbar]';
        MoodyDiagramm.StringGrid1.Cells[3,0]:='Reynoldszahl';
        MoodyDiagramm.StringGrid1.Cells[4,0]:='Rohrreibungszahl (Lambda)';
        MoodyDiagramm.StringGrid1.Cells[5,0]:='Gleichung';
        //MoodyDiagramm.StringGrid1.Cells[6,0]:='alpha = k/d';
        MoodyDiagramm.StringGrid1.Cells[6,0]:='k/d';

        //MoodyDiagramm.Image1.Picture.LoadFromFile(Label112.Caption+'\Bilder & Quellen\Entwurg Moody 25_bearbeitet.bmp');
        MoodyDiagramm.Image1.Picture.LoadFromFile(Label112.Caption+'\MoodyDiagramm.bmp');
        MoodyDiagramm.Chart1.Series[21].Clear;
        MoodyDiagramm.Chart1.Series[23].Clear;

        {***** Berechnungen *****}
        // -> ist die Temperatur bei 60 °C oder 80 °C ausgewählt?
        //    (es ist 60 °C voreingestellt)
        // ---> 60 °C
        if (RadioButton3.Checked=True) and (RadioButton4.Checked=False) then
        begin
          kinematischeViskositaet:=0.000000474;
          Label120.Caption:='983,21 kg/m³';
          Label121.Caption:='0,00046640 kg/(m*s)';
        end
        else
          begin
            // ---> 80 °C
            if (RadioButton3.Checked=False) and (RadioButton4.Checked=True) then
              begin
                kinematischeViskositaet:=0.000000365;
                Label120.Caption:='971,80 kg/m³';
                Label121.Caption:='0,00035435 kg/(m*s)';
              end;
          end;

        Label122.Caption:=FloatToStr(kinematischeViskositaet)+' m²/s';

        // -> welches Rohr ist ausgewählt?
        case Auswahl.ItemIndex of
          0:
            durchmesser:=8-2*1;
          1:
            durchmesser:=10-2*1;
          2:
            durchmesser:=12-2*1;
          3:
            durchmesser:=15-2*1;
          4:
            durchmesser:=18-2*1;
          5:
            durchmesser:=22-2*1;
          6:
            durchmesser:=28-2*1.5;
          7:
            durchmesser:=35-2*1.5;
          8:
            durchmesser:=42-2*1.5;
          9:
            durchmesser:=54-2*2;
          10:
            durchmesser:=17.2-2*2.35;
          11:
            durchmesser:=21.3-2*2.65;
          12:
            durchmesser:=26.9-2*2.65;
          13:
            durchmesser:=33.7-2*3.25;
          14:
            durchmesser:=42.4-2*3.25;
          15:
            durchmesser:=44.5-2*2.6;
          16:
            durchmesser:=57-2*2.9;
          17:
            durchmesser:=76.1-2*2.9;
          18:
            durchmesser:=88.9-2*3.2;
          19:
            durchmesser:=108-2*3.6;
          20:
            durchmesser:=133-2*4;
          end;

          // -> Rauhigkeit von Stahl- oder Cu-Rohr
          if Auswahl.ItemIndex<10 then
            begin
              // ---> Rauhigkeit Cu-Rohr
              Rauhigkeit:=0.0015;
            end
            else
              begin
                // ---> Rauhigkeit Stahlrohr
                if Auswahl.ItemIndex>=10 then
                  begin
                    Rauhigkeit:=0.045;
                  end;
              end;

          // -> Anzahl ermitteln
          case Auswahl.ItemIndex of
            0:
              Anzahl:=17;
            1:
              Anzahl:=25;
            else
              Anzahl:=30;
            end;

          MoodyDiagramm.Image1.Canvas.Pen.Color:=clblue;
          MoodyDiagramm.Image1.Canvas.Pen.Width:=5;

          // prüfen, wo die untere und obere Grenze liegen
          // -> neue untere Grenze ermitteln
          for i:=1 to Anzahl do
            begin
              if (StrToFloat(Stringgrid1.Cells[1,i])>=m_min_var) then
                begin
                  startIndex:=i;
                  break;
                end;
            end;
          // -> neue obere Grenze ermitteln
          for i:=1 to Anzahl do
            begin
              if (StrToFloat(Stringgrid1.Cells[1,i])>=m_max_var) then
                begin
                  endIndex:=i;
                  break;
                end;
            end;

          // -> berechnen & zeichnen
          for i:=startIndex to endIndex do
            begin
              Reynoldzahl:=(StrToFloat(Stringgrid1.Cells[0,i])*(durchmesser/1000))/kinematischeViskositaet;


              // -> Rechnung nach Hagen-Poiseuille?
              if Reynoldzahl<2320 then
                begin
                  Rohrreibungszahl:=64/Reynoldzahl;
                  MoodyDiagramm.StringGrid1.Cells[5,i]:='Hagen-Poiseuille';
                  alpha:=Rauhigkeit/durchmesser;
                end
                else
                  begin
                    // -> Rechnung nicht nach Hagen-Poiseuille
                    if Reynoldzahl>=2320 then
                      begin
                        alpha:=Rauhigkeit/durchmesser;
                        Rohrreibungszahl:=1/((1.74-2*log10(2*alpha))*(1.74-2*log10(2*alpha)));

                        // ---> hydraulisch rau nach Karman-Nikuradse???
                        if alpha>=(200/(Reynoldzahl*Power(Rohrreibungszahl, 1/2))) then
                          begin
                            // ---> Rechnung nach Karman-Nikuradse!
                            Rohrreibungszahl:=1/((1.74-2*log10(2*alpha))*(1.74-2*log10(2*alpha)));
                            MoodyDiagramm.StringGrid1.Cells[5,i]:='Karman-Nikuradse';
                          end
                          else
                            begin
                              // ---> Rechnung nach Colebrook!
                              if alpha<(200/(Reynoldzahl*Power(Rohrreibungszahl, 1/2))) then
                                begin
                                  Rohrreibungszahl_alt:=0.015;
                                  epsilon:=1;

                                  // -----> Newtonsches Iterationsverfahren
                                  while abs(epsilon)>0.00000000001 do
                                    begin
                                      funktion:=1/(Sqrt(Rohrreibungszahl_alt))+2*log10(2*alpha+18.7/(Reynoldzahl*Sqrt(Rohrreibungszahl_alt)))-1.74;
                                      ersteAbleitung:=-0.5/(Rohrreibungszahl_alt*Sqrt(Rohrreibungszahl_alt))+(2*ln(10))*(1/(2*alpha+18.7/(Reynoldzahl*Sqrt(Rohrreibungszahl_alt))))*(18.7/Reynoldzahl)*-0.5/(Rohrreibungszahl_alt*Sqrt(Rohrreibungszahl_alt));
                                      Rohrreibungszahl_neu:=Rohrreibungszahl_alt-(funktion/ersteAbleitung);
                                      epsilon:=(Rohrreibungszahl_neu-Rohrreibungszahl_alt)/Rohrreibungszahl_neu;
                                      Rohrreibungszahl_alt:=Rohrreibungszahl_neu;
                                    end;

                                  Rohrreibungszahl:=Rohrreibungszahl_neu;
                                  MoodyDiagramm.StringGrid1.Cells[5,i]:='Colebrook';
                                end;
                            end;
                      end;
                  end;


              if Reynoldzahl<2320 then
                begin
                  x_Achse:=round((ln(Reynoldzahl/1000)/ln(100000000/1000))*697);
                  //x_Achse:=round((Reynoldzahl*power(10, i*0.1))*697);
                  y_Achse:=round(590-(ln(Rohrreibungszahl/0.006)/ln(0.1/0.006))*590);
                  //MoodyDiagramm.Image1.Canvas.MoveTo(x_Achse,y_Achse);
                  //MoodyDiagramm.Image1.Canvas.LineTo(x_Achse,y_Achse);
                  MoodyDiagramm.StringGrid2.Cells[24,i]:=FloatToStr(x_Achse);
                  MoodyDiagramm.StringGrid2.Cells[25,i]:=FloatToStr(y_Achse);

                  // -> Rohr in das selbst-gezeichnete Moody-Diagramm eintragen
                  MoodyDiagramm.Chart1.Series[23].AddXY(Reynoldzahl, Rohrreibungszahl);
                end
                else
                  begin
                    if Reynoldzahl>=2320 then
                      begin
                        x_Achse:=round((ln(Reynoldzahl/1000)/ln(100000000/1000))*697);
                        //x_Achse:=round((Reynoldzahl*power(10, i*0.1))*697);
                        y_Achse:=round(590-(ln(Rohrreibungszahl/0.006)/ln(0.1/0.006))*590);
                        //MoodyDiagramm.Image1.Canvas.MoveTo(x_Achse,y_Achse);
                        //MoodyDiagramm.Image1.Canvas.LineTo(x_Achse,y_Achse);
                        MoodyDiagramm.StringGrid2.Cells[24,i]:=FloatToStr(x_Achse);
                        MoodyDiagramm.StringGrid2.Cells[25,i]:=FloatToStr(y_Achse);

                        // -> Rohr in das selbst-gezeichnete Moody-Diagramm eintragen
                        MoodyDiagramm.Chart1.Series[21].AddXY(Reynoldzahl,Rohrreibungszahl);
                      end;
                  end;

              MoodyDiagramm.StringGrid1.Cells[0,i]:=Stringgrid1.Cells[0,i];
              MoodyDiagramm.StringGrid1.Cells[1,i]:=Stringgrid1.Cells[1,i];
              MoodyDiagramm.StringGrid1.Cells[2,i]:=Stringgrid1.Cells[2,i];
              MoodyDiagramm.StringGrid1.Cells[3,i]:=FloatToStr(Runden(Reynoldzahl,2));
              MoodyDiagramm.StringGrid1.Cells[4,i]:=FloatToStr(Runden(Rohrreibungszahl,5));
              MoodyDiagramm.StringGrid1.Cells[6,i]:=FloatToStr(Runden(alpha,6));

              Label116.Caption:=FloatToStr(Rauhigkeit)+' mm';
            end;

        // -> Punkte der Rohre miteinander verbinden
        //
        // ---> laminarer Teil
        for i:=startIndex to endIndex do
          begin
            x_Achse:=StrToInt(MoodyDiagramm.StringGrid2.Cells[24,i]);
            y_Achse:=StrToInt(MoodyDiagramm.StringGrid2.Cells[25,i]);
            MoodyDiagramm.Image1.Canvas.MoveTo(x_Achse,y_Achse);

            if(i<endIndex) then
              begin
                // es soll verhindert werden, dass über Re_kritsch eine Linie gezeichnet wird
                if (StrToFloat(MoodyDiagramm.Stringgrid1.Cells[3,i+1])<2320) then
                  begin
                    x_Achse:=StrToInt(MoodyDiagramm.StringGrid2.Cells[24,i+1]);
                    y_Achse:=StrToInt(MoodyDiagramm.StringGrid2.Cells[25,i+1]);
                    MoodyDiagramm.Image1.Canvas.LineTo(x_Achse,y_Achse);
                  end;
              end;
          end;

          // ---> turbulenter Teil
          for i:=startIndex to endIndex do
            begin
              if (StrToFloat(MoodyDiagramm.StringGrid1.Cells[3,i])>2320) then
                begin
                  x_Achse:=StrToInt(MoodyDiagramm.StringGrid2.Cells[24,i]);
                  y_Achse:=StrToInt(MoodyDiagramm.StringGrid2.Cells[25,i]);
                  MoodyDiagramm.Image1.Canvas.MoveTo(x_Achse,y_Achse);

                  if(i<endIndex) then
                    begin
                      // es soll verhindert werden, dass über Re_kritsch eine Linie gezeichnet wird
                      if (StrToFloat(MoodyDiagramm.Stringgrid1.Cells[3,i+1])>2320) then
                        begin
                          x_Achse:=StrToInt(MoodyDiagramm.StringGrid2.Cells[24,i+1]);
                          y_Achse:=StrToInt(MoodyDiagramm.StringGrid2.Cells[25,i+1]);
                          MoodyDiagramm.Image1.Canvas.LineTo(x_Achse,y_Achse);
                        end;
                    end;
                end;
            end;

        // --> Grenzkurve ins MoodyDiagramm einzeichnen
        Reynoldzahl_Grenze:=2320;

        for i:=1 to 23 do
          begin
            // Newtonsches Iterationsverfahren
            Rohrreibungszahl_alt_Grenze:=0.015;
            epsilon:=1;

            while epsilon>0.00000000001 do
              begin
                funktion:=1.74-2*log10((1/Sqrt(Rohrreibungszahl_alt_Grenze))*(400/(Reynoldzahl_Grenze)))-1/(Sqrt(Rohrreibungszahl_alt_Grenze));
                ersteAbleitung:=(1/ln(10))*Sqrt(Rohrreibungszahl_alt_Grenze)+(0.5*1/(Rohrreibungszahl_alt_Grenze)*1/(Sqrt(Rohrreibungszahl_alt_Grenze)));
                Rohrreibungszahl_neu_Grenze:=Rohrreibungszahl_alt_Grenze-(funktion/ersteAbleitung);
                epsilon:=(Rohrreibungszahl_neu_Grenze-Rohrreibungszahl_alt_Grenze)/Rohrreibungszahl_neu_Grenze;
                Rohrreibungszahl_alt_Grenze:=Rohrreibungszahl_neu_Grenze;
              end;

            // -> Werte ins Diagramm eintragen
            MoodyDiagramm.Image1.Canvas.Pen.Color:=clgreen;
            MoodyDiagramm.Image1.Canvas.Pen.Width:=2;
            x_Achse:=round((ln(Reynoldzahl_Grenze/1000)/ln(100000000/1000))*697);
            y_Achse:=round(590-(ln(Rohrreibungszahl_neu_Grenze/0.006)/ln(0.1/0.006))*590);
            MoodyDiagramm.Image1.Canvas.MoveTo(x_Achse,y_Achse);
            MoodyDiagramm.Image1.Canvas.LineTo(x_Achse,y_Achse);
            MoodyDiagramm.Stringgrid2.Cells[21,i]:=FloatToStr(x_Achse);
            MoodyDiagramm.Stringgrid2.Cells[22,i]:=FloatToStr(y_Achse);


            // -> Werte in Tabelle schreiben
            //Stringgrid1.Cells[3,i]:=FloatToStr(Reynoldzahl_Grenze);
            //Stringgrid1.Cells[4,i]:=FloatToStr(Rohrreibungszahl_neu_Grenze);

            // -> Wertebereich x-Achse (Reynoldzahl)
            if (Reynoldzahl_Grenze>=2320) and (Reynoldzahl_Grenze<10320) then
              begin
                Reynoldzahl_Grenze:=Reynoldzahl_Grenze+2000;
              end
              else
                begin
                if (Reynoldzahl_Grenze=10320) then
                  begin
                    Reynoldzahl_Grenze:=Reynoldzahl_Grenze+10000;
                      end
                      else
                      begin
                        if (Reynoldzahl_Grenze>=20320) and (Reynoldzahl_Grenze<100320) then
                          begin
                            Reynoldzahl_Grenze:=Reynoldzahl_Grenze+20000;
                          end
                          else
                            begin
                              if (Reynoldzahl_Grenze=100320) then
                                begin
                                  Reynoldzahl_Grenze:=Reynoldzahl_Grenze+100000;
                                end
                                else
                                  begin
                                    if (Reynoldzahl_Grenze>=200320) and(Reynoldzahl_Grenze<1000320) then
                                      begin
                                        Reynoldzahl_Grenze:=Reynoldzahl_Grenze+200000;
                                      end
                                      else
                                        begin
                                          if (Reynoldzahl_Grenze=1000320) then
                                            begin
                                              Reynoldzahl_Grenze:=Reynoldzahl_Grenze+1000000;
                                            end
                                            else
                                              begin
                                                if (Reynoldzahl_Grenze>=2000320) and (Reynoldzahl_Grenze<10000320) then
                                                  begin
                                                    Reynoldzahl_Grenze:=Reynoldzahl_Grenze+2000000;
                                                  end
                                                  else
                                                    begin
                                                      if (Reynoldzahl_Grenze=10000320) then
                                                        begin
                                                          Reynoldzahl_Grenze:=Reynoldzahl_Grenze+10000000;
                                                        end
                                                        else
                                                          begin
                                                            if (Reynoldzahl_Grenze>=20000320) and (Reynoldzahl_Grenze<100000320) then
                                                              begin
                                                                Reynoldzahl_Grenze:=Reynoldzahl_Grenze+20000000;
                                                              end
                                                              else
                                                                begin
                                                                  if (Reynoldzahl_Grenze=100000320) then
                                                                    begin
                                                                      Reynoldzahl_Grenze:=Reynoldzahl_Grenze+100000320;
                                                                    end
                                                                    else
                                                                      begin
                                                                        if (Reynoldzahl_Grenze>=200000320) and (Reynoldzahl_Grenze<1000000320) then
                                                                          begin
                                                                            Reynoldzahl_Grenze:=Reynoldzahl_Grenze+200000000;
                                                                          end;
                                                                      end;
                                                                end;
                                                          end;
                                                    end;
                                              end;
                                        end;
                                  end;
                            end;
                      end;
                end;



          end;

        // -> Punkte der Grenzkurve miteinander verbinden
        for i:=1 to 23 do
          begin
            x_Achse:=StrToInt(MoodyDiagramm.StringGrid2.Cells[21,i]);
            y_Achse:=StrToInt(MoodyDiagramm.StringGrid2.Cells[22,i]);
            MoodyDiagramm.Image1.Canvas.MoveTo(x_Achse,y_Achse);

            // (Unterbrechung einbauen, damit der Text nicht übermalt wird)
            {*if (i<=19) or (i>20) then
              begin
                if(i<23) then
                  begin
                    x_Achse:=StrToInt(MoodyDiagramm.StringGrid2.Cells[21,i+1]);
                    y_Achse:=StrToInt(MoodyDiagramm.StringGrid2.Cells[22,i+1]);
                  end;

                MoodyDiagramm.Image1.Canvas.LineTo(x_Achse,y_Achse);
              end;*}

            // keine Unterbrechung
            if (i<23) then
              begin
                x_Achse:=StrToInt(MoodyDiagramm.StringGrid2.Cells[21,i+1]);
                y_Achse:=StrToInt(MoodyDiagramm.StringGrid2.Cells[22,i+1]);
                MoodyDiagramm.Image1.Canvas.LineTo(x_Achse,y_Achse);
              end;
          end;

        // eine Linie zur Kennzeichnung von Re_kritisch=2320 einzeichnen
        // (die Linie hat Unterbrechungen, damit die im Diagramm stehenden Bezeichnungen gut gelesen werden können)
        MoodyDiagramm.Image1.Canvas.Pen.Color:=clyellow;
        MoodyDiagramm.Image1.Canvas.Pen.Width:=2;
        // a)
        x_Achse:=round((ln(2320/1000)/ln(100000000/1000))*697);
        y_Achse:=round(590-(ln(0.01/0.006)/ln(0.1/0.006))*590);
        MoodyDiagramm.Image1.Canvas.MoveTo(x_Achse, y_Achse);
        y_Achse:=round(590-(ln(0.01105/0.006)/ln(0.1/0.006))*590);
        MoodyDiagramm.Image1.Canvas.LineTo(x_Achse, y_Achse);
        // b)
        y_Achse:=round(590-(ln(0.012/0.006)/ln(0.1/0.006))*590);
        MoodyDiagramm.Image1.Canvas.MoveTo(x_Achse, y_Achse);
        y_Achse:=round(590-(ln(0.09/0.006)/ln(0.1/0.006))*590);
        MoodyDiagramm.Image1.Canvas.LineTo(x_Achse, y_Achse);


        MoodyDiagramm.show;
      end;
        end;
  end;
end;

// Auswahl der Rohre
procedure TAnalyse.AuswahlChange(Sender: TObject);
begin
  Label59.Caption:='0';
  aenderung_Auswahl_Normrohr:=1;

  // Kupferrohr 8x1
  if Auswahl.ItemIndex=0 then
    begin
      Label3.Caption:='Kupferrohr 8x1';
      Label101.Caption:='8 mm';
      Label103.Caption:='1 mm';
      m_min:=15;
      m_max:=41;
      Label7.Caption:='15 kg/h';
      Label8.Caption:='41 kg/h';
      //Label7.Caption:='15';
      //Label8.Caption:='41';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Kupferrohr 10x1
  if Auswahl.ItemIndex=1 then
    begin
      Label3.Caption:='Kupferrohr 10x1';
      Label101.Caption:='10 mm';
      Label103.Caption:='1 mm';
      m_min:=19;
      m_max:=91;
      Label7.Caption:='19 kg/h';
      Label8.Caption:='91 kg/h';
      //Label7.Caption:='19';
      //Label8.Caption:='91';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Kupferrohr 12x1
  if Auswahl.ItemIndex=2 then
    begin
      Label3.Caption:='Kupferrohr 12x1';
      Label101.Caption:='12 mm';
      Label103.Caption:='1 mm';
      m_min:=28;
      m_max:=167;
      Label7.Caption:='28 kg/h';
      Label8.Caption:='167 kg/h';
      //Label7.Caption:='28';
      //Label8.Caption:='167';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Kupferrohr 15x1
  if Auswahl.ItemIndex=3 then
    begin
      Label3.Caption:='Kupferrohr 15x1';
      Label101.Caption:='15 mm';
      Label103.Caption:='1 mm';
      m_min:=57;
      m_max:=342;
      Label7.Caption:='57 kg/h';
      Label8.Caption:='342 kg/h';
      //Label7.Caption:='57';
      //Label8.Caption:='342';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,000466,4 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Kupferrohr 18x1
  if Auswahl.ItemIndex=4 then
    begin
      Label3.Caption:='Kupferrohr 18x1';
      Label101.Caption:='18 mm';
      Label103.Caption:='1 mm';
      m_min:=100;
      m_max:=595;
      Label7.Caption:='100 kg/h';
      Label8.Caption:='595 kg/h';
      //Label7.Caption:='100';
      //Label8.Caption:='595';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Kupferrohr 22x1
  if Auswahl.ItemIndex=5 then
    begin
      Label3.Caption:='Kupferrohr 22x1';
      Label101.Caption:='22 mm';
      Label103.Caption:='1 mm';
      m_min:=184;
      m_max:=1080;
      Label7.Caption:='184 kg/h';
      Label8.Caption:='1080 kg/h';
      //Label7.Caption:='184';
      //Label8.Caption:='1080';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Kupferrohr 28x1,5
  if Auswahl.ItemIndex=6 then
    begin
      Label3.Caption:='Kupferrohr 28x1,5';
      Label101.Caption:='28 mm';
      Label103.Caption:='1,5 mm';
      m_min:=338;
      m_max:=1970;
      Label7.Caption:='338 kg/h';
      Label8.Caption:='1970 kg/h';
      //Label7.Caption:='338';
      //Label8.Caption:='1970';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Kupferrohr 35x1,5
  if Auswahl.ItemIndex=7 then
    begin
      Label3.Caption:='Kupferrohr 35x1,5';
      Label101.Caption:='35 mm';
      Label103.Caption:='1,5 mm';
      m_min:=660;
      m_max:=3800;
      Label7.Caption:='660 kg/h';
      Label8.Caption:='3800 kg/h';
      //Label7.Caption:='660';
      //Label8.Caption:='3800';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Kupferrohr 42x1,5
  if Auswahl.ItemIndex=8 then
    begin
      Label3.Caption:='Kupferrohr 42x1,5';
      Label101.Caption:='42 mm';
      Label103.Caption:='1,5 mm';
      m_min:=1130;
      m_max:=6460;
      Label7.Caption:='1130 kg/h';
      Label8.Caption:='6460 kg/h';
      //Label7.Caption:='1130';
      //Label8.Caption:='6460';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Kupferrohr 54x2
  if Auswahl.ItemIndex=9 then
    begin
      Label3.Caption:='Kupferrohr 54x2';
      Label101.Caption:='54 mm';
      Label103.Caption:='2 mm';
      m_min:=2210;
      m_max:=12500;
      Label7.Caption:='2210 kg/h';
      Label8.Caption:='12500 kg/h';
      //Label7.Caption:='2210';
      //Label8.Caption:='12500';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Stahlrohr DN10
  if Auswahl.ItemIndex=10 then
    begin
      Label3.Caption:='Stahlrohr DN10';
      Label101.Caption:='17,2 mm';
      Label103.Caption:='2,35 mm';
      m_min:=40.1;
      m_max:=223;
      Label7.Caption:='40,1 kg/h';
      Label8.Caption:='223 kg/h';
      //Label7.Caption:='40,1';
      //Label8.Caption:='223';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Stahlrohr DN15
  if Auswahl.ItemIndex=11 then
    begin
      Label3.Caption:='Stahlrohr DN15';
      Label101.Caption:='21,3 mm';
      Label103.Caption:='2,65 mm';
      m_min:=78.8;
      m_max:=434;
      Label7.Caption:='78,8 kg/h';
      Label8.Caption:='434 kg/h';
      //Label7.Caption:='78,8';
      //Label8.Caption:='434';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Stahlrohr DN20
  if Auswahl.ItemIndex=12 then
    begin
      Label3.Caption:='Stahlrohr DN20';
      Label101.Caption:='26,9 mm';
      Label103.Caption:='2,65 mm';
      m_min:=179;
      m_max:=963;
      Label7.Caption:='179 kg/h';
      Label8.Caption:='963 kg/h';
      //Label7.Caption:='179';
      //Label8.Caption:='963';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Stahlrohr DN25
  if Auswahl.ItemIndex=13 then
    begin
      Label3.Caption:='Stahlrohr DN25';
      Label101.Caption:='33,7 mm';
      Label103.Caption:='3,25 mm';
      m_min:=336;
      m_max:=1796;
      Label7.Caption:='336 kg/h';
      Label8.Caption:='1796 kg/h';
      //Label7.Caption:='336';
      //Label8.Caption:='1796';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Stahlrohr DN32
  if Auswahl.ItemIndex=14 then
    begin
      Label3.Caption:='Stahlrohr DN32';
      Label101.Caption:='42,4 mm';
      Label103.Caption:='3,25 mm';
      m_min:=720;
      m_max:=3780;
      Label7.Caption:='720 kg/h';
      Label8.Caption:='3780 kg/h';
      //Label7.Caption:='720';
      //Label8.Caption:='3780';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Stahlrohr DN40
  if Auswahl.ItemIndex=15 then
    begin
      Label3.Caption:='Stahlrohr DN40';
      Label101.Caption:='44,5 mm';
      Label103.Caption:='2,6 mm';
      m_min:=920;
      m_max:=4830;
      Label7.Caption:='920 kg/h';
      Label8.Caption:='4830 kg/h';
      //Label7.Caption:='920';
      //Label8.Caption:='4830';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Stahlrohr DN50
  if Auswahl.ItemIndex=16 then
    begin
      Label3.Caption:='Stahlrohr DN50';
      Label101.Caption:='57 mm';
      Label103.Caption:='2,9 mm';
      m_min:=1890;
      m_max:=9750;
      Label7.Caption:='1890 kg/h';
      Label8.Caption:='9750 kg/h';
      //Label7.Caption:='1890';
      //Label8.Caption:='9750';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Stahlrohr DN65
  if Auswahl.ItemIndex=17 then
    begin
      Label3.Caption:='Stahlrohr DN65';
      Label101.Caption:='76,1 mm';
      Label103.Caption:='2,9 mm';
      m_min:=4340;
      m_max:=22300;
      Label7.Caption:='4340 kg/h';
      Label8.Caption:='22300 kg/h';
      //Label7.Caption:='4340';
      //Label8.Caption:='22300';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Stahlrohr DN80
  if Auswahl.ItemIndex=18 then
    begin
      Label3.Caption:='Stahlrohr DN80';
      Label101.Caption:='88,9 mm';
      Label103.Caption:='3,2 mm';
      m_min:=6640;
      m_max:=34000;
      Label7.Caption:='6640 kg/h';
      Label8.Caption:='34000 kg/h';
      //Label7.Caption:='6640';
      //Label8.Caption:='34000';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Stahlrohr DN100
  if Auswahl.ItemIndex=19 then
    begin
      Label3.Caption:='Stahlrohr DN100';
      Label101.Caption:='108 mm';
      Label103.Caption:='3,6 mm';
      m_min:=11400;
      m_max:=57600;
      Label7.Caption:='11400 kg/h';
      Label8.Caption:='57600 kg/h';
      //Label7.Caption:='11400';
      //Label8.Caption:='57600';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;

  // Stahlrohr DN125
  if Auswahl.ItemIndex=20 then
    begin
      Label3.Caption:='Stahlrohr DN125';
      Label101.Caption:='133 mm';
      Label103.Caption:='4 mm';
      m_min:=20100;
      m_max:=101600;
      Label7.Caption:='20100 kg/h';
      Label8.Caption:='101600 kg/h';
      //Label7.Caption:='20100';
      //Label8.Caption:='101600';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
      RadioButton3.Checked:=True;
      RadioButton4.Checked:=False;
      Label61.Caption:='1';
    end;
end;

// Kurven im Diagramm Chart 1 ein- und ausblenden
// -> Kurve 1
procedure TAnalyse.CheckBox1Click(Sender: TObject);
var
  Anzahl, i:Integer;
  x_value,y_value:Real;
begin
  // die Checkbox 1 darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
  if (aenderung_Auswahl_NormRohr=0) then
    begin
  // -> gegebene Werte aus Tabelle einzeichnen
  if CheckBox1.Checked=True then
    begin
      // prüfen, ob sich das Programm noch in der Initialisierung befindet
      if StrToInt(Label59.Caption)=0 then
        begin
          // prüfen, ob ein eigenes Rohr definiert wird
          // -> wenn gerade ein eigenes Rohr definiert wird, dann darf nicht passieren
          // außerdem prüfen, ob es ein Rohr ist, das nicht vollständig im laminaren Bereich ist
          if (eigenesRohr.Label16.Caption='1') and(eigenesRohr.Label18.Caption='0') then
            begin
              eigenesRohr.Label16.Caption:='0';
            end
            else
              begin
                // -> wenn gerade kein Rohr definiert, sondern nur so die Checkbox gedrückt wird, dann ist alles ok
                // außerdem prüfen, ob es ein Rohr ist, das nicht vollständig im laminaren Bereich ist
                if (eigenesRohr.Label16.Caption='0') and (eigenesRohr.Label18.Caption='0') then
                  begin
                    if StrToInt(eigenesRohr.Label11.Caption)=0 then
                      begin
                        Chart1.Series[7].AddXY(m_min,0);
                        Chart1.Series[7].AddXY(m_max,0);
                        //Chart1.Series[7].AddXY(StrToFloat(Label7.Caption),0);
                        //Chart1.Series[7].AddXY(StrToFloat(Label8.Caption),0);

                        case Auswahl.ItemIndex of
                          0:
                            Anzahl:=17;
                          1:
                            Anzahl:=25;
                          else
                            Anzahl:=30;
                          end;

                        if Auswahl.ItemIndex<=9 then
                          begin
                            CheckBox1.Caption:='DIN EN 1057';
                          end
                          else
                            begin
                              if (Auswahl.ItemIndex>=10) and (Auswahl.ItemIndex<=14) then
                                begin
                                  CheckBox1.Caption:='DIN 2440';
                                end
                                else
                                  begin
                                    if (Auswahl.ItemIndex>=15) and (Auswahl.ItemIndex<=20) then
                                      begin
                                        CheckBox1.Caption:='DIN 2448';
                                      end;
                                  end;
                            end;
                      end
                      else
                        begin
                          if StrToFloat(eigenesRohr.Label11.Caption)=1 then
                            begin
                              Anzahl:=StrToInt(eigenesRohr.Label21.Caption);
                              CheckBox1.Caption:='definiertes Rohr';
                            end;
                        end;
                  end;

                // prüfen, ob das selbst definierte Rohr vollständig im laminaren Bereich liegt
                if eigenesRohr.Label18.Caption='1' then
                  begin
                    Anzahl:=StrToInt(eigenesRohr.Label21.Caption);
                  end;

                for i:=1 to Anzahl do
                  begin
                    Chart1.Series[0].AddXY(StrToFloat(Stringgrid1.Cells[1,i]),StrToFloat(Stringgrid1.Cells[2,i]));
                  end;
              end;
        end
        else
          begin
            // wenn sich das Programm noch in den Intialisierungen befindet, dann darf nur die Kurve nach Norm gezeichnet werden
            if StrToInt(Label59.Caption)=1 then
              begin
                for i:=1 to 30 do
                  begin
                    x_value:=StrToFloat(StringGrid1.Cells[1,i]);
                    y_value:=StrToFloat(StringGrid1.Cells[2,i]);
                    Chart1.Series[0].AddXY(x_value, y_value);
                  end;
              end;
          end;
    end
    else
      begin
        // -> gegebene Werte aus Tabelle löschen
        if CheckBox1.Checked=False then
          begin
            Chart1.Series[0].Clear;
            eigenesRohr.Label16.Caption:='0';
          end;
      end
    end;
end;

// -> Kurve 2
procedure TAnalyse.CheckBox2Click(Sender: TObject);
var
  Anzahl, i:Integer;
  x, y:Real;
  untereGrenze,obereGrenze:Real;
  index_unten_von_x_nach,index_oben_von_x_vor:Integer;
begin
  // die Checkbox 2 darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
  if (aenderung_Auswahl_NormRohr=0) then
    begin
  // (Werte den globalen Variablen zuweisen)
  if (StrToInt(Label17.Caption)=1) then
    begin
      Faktor_c_Appr_1:=StrToFloat(Label6.Caption);
      Faktor_c_opt_Appr_1:=StrToFloat(Label15.Caption);

      //
      if Label22.Caption<>'-' then
        begin
          Faktor_c_opt_Appr_2:=StrToFloat(Label14.Caption);
          Exponent_n_Appr_2:=StrToFloat(Label12.Caption);
        end;
        
      Label17.Caption:='0';
    end;
    
  // -> Approximation 1 einzeichnen
  // -> außerdem soll die Markierung (die schwarze Linie) eingezeichnet werden,
  //    die zur Erkennung des Fehlers dient
  if CheckBox2.Checked=True then
    begin
      // prüfen, ob sich das Programm noch in der Initialisierung befindet
      if StrToInt(Label59.Caption)=0 then
        begin
          // prüfen, ob ein eigenes Rohr definiert wird
          // -> wenn gerade ein eigenes Rohr definiert wird, dann darf nicht passieren
          // außerdem prüfen, ob es ein Rohr ist, das nicht vollständig im laminaren Bereich ist
          if (eigenesRohr.Label16.Caption='1') and (eigenesRohr.Label18.Caption='0') then
            begin
              eigenesRohr.Label16.Caption:='0';
            end
            else
              begin
                // -> wenn gerade kein Rohr definiert, sondern nur so die Checkbox gedrückt wird, dann ist alles ok
                if (eigenesRohr.Label16.Caption='0') and (eigenesRohr.Label18.Caption='0') then
                  begin
                    if StrToInt(eigenesRohr.Label11.Caption)=0 then
                      begin
                        case Auswahl.ItemIndex of
                          0:
                            Anzahl:=17;
                          1:
                            Anzahl:=25;
                          else
                            Anzahl:=30;
                          end;
                      end
                      else
                        begin
                          if StrToInt(eigenesRohr.Label11.Caption)=1 then
                            begin
                              Anzahl:=StrToInt(eigenesRohr.Label21.Caption);
                            end;
                        end;

                    CheckBox2.Caption:='Approximation 1';

                    // -> wenn kein Rohr selbst definiert wird
                    if (selection=1) then
                      begin
                        // -> untere und obere Grenze bestimmen, bevor der Graph gezeichnet werden kann
                        untereGrenze:=m_min_var;
                        obereGrenze:=m_max_var;
                        //untereGrenze:=StrToFloat(Label113.Caption);
                        //obereGrenze:=StrToFloat(Label123.Caption);

                        // -> Werte zwischen den eingestellten Grenzen bestimmen
                        // ---> untere Grenze bestimmen
                        for i:=1 to Anzahl do
                          begin
                            if StrToFloat(Analyse.StringGrid1.Cells[1,i])=untereGrenze then
                              begin
                                index_unten_von_x_nach:=i;
                                break;
                              end
                              else
                                begin
                                  if StrToFloat(Analyse.StringGrid1.Cells[1,i])>untereGrenze then
                                    begin
                                      index_unten_von_x_nach:=i-1;

                                      //
                                      if index_unten_von_x_nach=0 then
                                        begin
                                          index_unten_von_x_nach:=1;
                                        end;

                                      break;
                                    end;
                                end;
                          end;

                        // ---> obere Grenze bestimmen
                        for i:=1 to Anzahl do
                          begin
                            if StrToFloat(Analyse.StringGrid1.Cells[1,i])=obereGrenze then
                              begin
                                index_oben_von_x_vor:=i;
                                break;
                              end
                              else
                                begin
                                  if StrToFloat(Analyse.StringGrid1.Cells[1,i])>obereGrenze then
                                    begin
                                      index_oben_von_x_vor:=i;
                                      break;
                                    end;
                                end;
                          end;

                        // -> neue Kurve zeichnen
                        for i:=index_unten_von_x_nach to index_oben_von_x_vor do
                          begin
                            // -> ist Wert vom unterer Index in StringGrid1 enthalten?
                            if i=index_unten_von_x_nach then
                              begin
                                if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_min_var then
                                  begin
                                    x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                                  end
                                  else
                                  begin
                                    if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_min_var then
                                      begin
                                        x:=m_min_var
                                        //x:=StrToFloat(Analyse.Label113.Caption);
                                      end;
                                  end;
                              end
                              else
                                begin
                                  if i<>index_unten_von_x_nach then
                                    begin
                                      x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                                    end;
                                end;
                              // -> ist Wert vom oberen Index in StringGrid1 enthalten?
                              if i=index_oben_von_x_vor then
                                begin
                                  if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_max_var then
                                    begin
                                      x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                                    end
                                    else
                                      begin
                                        if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_max_var then
                                          begin
                                            x:=m_max_var;
                                            //x:=StrToFloat(Analyse.Label123.Caption);
                                          end;
                                      end;
                                end;
                              y:=Faktor_c_Appr_1*(x*x);
                              //y:=StrToFloat(Label25.Caption)*(x*x);
                              Chart1.Series[1].AddXY(x, y);

                          end;
                      end
                      else
                        begin
                          // -> wenn ein Rohr selbst definiert wird
                          startIndex:=StrToInt(eigenesRohr.Label17.Caption);

                          if (selection=2) then
                            begin
                              for i:=startIndex to Anzahl do
                                begin
                                  x:=StrToFloat(Stringgrid1.Cells[1,i]);
                                  y:=Faktor_c_Appr_1*(x*x);
                                  //y:=StrToFloat(Label25.Caption)*(x*x);
                                  Chart1.Series[1].AddXY(x, y);
                                end;

                              // (nur die Werte beim aller ersten Mal vom anderen Fenster holen
                              if eigenesRohr.Label28.Caption='1' then
                                begin
                                  max_x_Wert_Tabellenwert_Approximation1:=StrToFloat(eigenesRohr.Label25.Caption);
                                  max_y_Wert_Tabellenwert_Approximation1:=StrToFloat(eigenesRohr.Label26.Caption);
                                  max_y_Wert_Approximation1:=StrToFloat(eigenesRohr.Label27.Caption);
                                  eigenesRohr.Label28.Caption:='0';
                                end;
                            end;
                        end;

                    Chart1.Series[2].AddXY(max_x_Wert_Tabellenwert_Approximation1,max_y_Wert_Tabellenwert_Approximation1);
                    Chart1.Series[2].AddXY(max_x_Wert_Tabellenwert_Approximation1,max_y_Wert_Approximation1);
                  end;
              end;
        end
        else
          begin
            // wenn sich das Programm noch in den Intialisierungen befindet, dann darf nur die erste Approximationskurve eingezeichnet werden
            if StrToInt(Label59.Caption)=1 then
              begin
                // -> untere und obere Grenze bestimmen, bevor der Graph gezeichnet werden kann
                untereGrenze:=m_min_var;
                obereGrenze:=m_max_var;
                //untereGrenze:=StrToFloat(Label113.Caption);
                //obereGrenze:=StrToFloat(Label123.Caption);

                // -> Werte zwischen den eingestellten Grenzen bestimmen
                // ---> untere Grenze bestimmen
                for i:=1 to 30 do
                  begin
                    if StrToFloat(Analyse.StringGrid1.Cells[1,i])=untereGrenze then
                      begin
                        index_unten_von_x_nach:=i;
                        break;
                      end
                      else
                        begin
                          if StrToFloat(Analyse.StringGrid1.Cells[1,i])>untereGrenze then
                            begin
                              index_unten_von_x_nach:=i-1;
                              break;
                            end;
                        end;
                  end;

                // ---> obere Grenze bestimmen
                for i:=1 to 30 do
                  begin
                    if StrToFloat(Analyse.StringGrid1.Cells[1,i])=obereGrenze then
                      begin
                        index_oben_von_x_vor:=i;
                        break;
                      end
                      else
                        begin
                          if StrToFloat(Analyse.StringGrid1.Cells[1,i])>obereGrenze then
                            begin
                              index_oben_von_x_vor:=i;
                              break;
                            end;
                        end;
                  end;

                // -> neue Kurve zeichnen
                for i:=index_unten_von_x_nach to index_oben_von_x_vor do
                  begin
                    // -> ist Wert vom unterer Index in StringGrid1 enthalten?
                    if i=index_unten_von_x_nach then
                      begin
                        if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_min_var then
                          begin
                            x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                          end
                          else
                            begin
                              if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_min_var then
                                begin
                                  x:=m_min_var;
                                  //x:=StrToFloat(Analyse.Label113.Caption);
                                end;
                            end;
                      end
                      else
                        begin
                          if i<>index_unten_von_x_nach then
                            begin
                              x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                            end;
                        end;
                    // -> ist Wert vom oberen Index in StringGrid1 enthalten?
                    if i=index_oben_von_x_vor then
                      begin
                        if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_max_var then
                          begin
                            x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                          end
                          else
                            begin
                              if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_max_var then
                                begin
                                  x:=m_max_var;
                                  //x:=StrToFloat(Analyse.Label123.Caption);
                                end;
                            end;
                      end;
                    y:=Faktor_c_Appr_1*(x*x);
                    //y:=StrToFloat(Label25.Caption)*(x*x);
                    Chart1.Series[1].AddXY(x, y);
                  end;

                Chart1.Series[2].AddXY(max_x_Wert_Tabellenwert_Approximation1,max_y_Wert_Tabellenwert_Approximation1);
                Chart1.Series[2].AddXY(max_x_Wert_Tabellenwert_Approximation1,max_y_Wert_Approximation1);
              end;
          end;
    end
    else
      begin
        // -> Approximation 1 löschen
        // -> außerdem soll die Markierung (die schwarze Linie) gelöscht werden,
        //    die zur Erkennung des Fehlers dient
        if CheckBox2.Checked=False then
          begin
            Chart1.Series[1].Clear;
            Chart1.Series[2].Clear;
            eigenesRohr.Label16.Caption:='0';
          end;
      end
    end;
end;

// -> Kurve 3
procedure TAnalyse.CheckBox4Click(Sender: TObject);
var
  Anzahl, i, j:Integer;
  x, y:Real;
  untereGrenze,obereGrenze:Real;
  index_unten_von_x_nach,index_oben_von_x_vor:Integer;
  u,v,u2,uv,Summe_u,Summe_v,Summe_u2,Summe_uv,delta,delta_c,delta_d:Real;
  e,n:Integer;
  Exponent,Faktor_a,Faktor_d,max_y_Wert_Approximation_2:Real;
  Fehler_in_Prozent,Fehler_in_Prozent_neu:Real;
  max_y_Wert_Approximation_1,max_y_Wert_Tabellenwerte,max_x_Wert_Tabellenwerte:Real;
  y_Approximation,y_max_Messwert,y_max_manipuliert,Fehler,Fehler_neu:Real;
  startIndex:Integer;
begin
  // die Checkbox 3 darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
  if (aenderung_Auswahl_NormRohr=0) then
    begin
  // (Werte den globalen Variablen zuweisen)
  if (StrToInt(Label17.Caption)=1) then
    begin
      Faktor_c_Appr_1:=StrToFloat(Label6.Caption);
      Faktor_c_opt_Appr_1:=StrToFloat(Label15.Caption);

      //
      if Label22.Caption<>'-' then
        begin
          Faktor_c_opt_Appr_2:=StrToFloat(Label14.Caption);
          Exponent_n_Appr_2:=StrToFloat(Label12.Caption);
        end;
        
      Label17.Caption:='0';
    end;

  // -> Approximation 2 einzeichnen
  // -> außerdem soll die Markierung (die graue Linie) eingezeichnet werden,
  //    die zur Erkennung des Fehlers dient
  if CheckBox4.Checked=True then
    begin
      // prüfen, ob sich das Programm noch in der Initialisierung befindet
      if StrToInt(Label59.Caption)=0 then
        begin
          // prüfen, ob ein eigenes Rohr definiert wird
          // -> wenn gerade ein eigenes Rohr definiert wird, dann darf nicht passieren
          // außerdem prüfen, ob es ein Rohr ist, das nicht vollständig im laminaren Bereich ist
          if (eigenesRohr.Label16.Caption='1') and (eigenesRohr.Label18.Caption='0') then
            begin
              eigenesRohr.Label16.Caption:='0';
            end
            else
              begin
                // -> wenn gerade kein Rohr definiert, sondern nur so die Checkbox gedrückt wird, dann ist alles ok
                if (eigenesRohr.Label16.Caption='0') and (eigenesRohr.Label18.Caption='0') then
                  begin
                    if StrToInt(eigenesRohr.Label11.Caption)=0 then
                      begin
                        case Auswahl.ItemIndex of
                          0:
                            Anzahl:=17;
                          1:
                            Anzahl:=25;
                          else
                            Anzahl:=30;
                          end;
                        CheckBox4.Caption:='Approximation 2';
                      end
                      else
                        begin
                          if StrToInt(eigenesRohr.Label11.Caption)=1 then
                            begin
                              // (prüfen, ob es wirklich eine sinnvolle quadratische Funktion ist)
                              if Analyse.Label22.Caption='-' then
                                begin

                                end
                                else
                                begin
                                  Anzahl:=StrToInt(eigenesRohr.Label21.Caption);
                                  CheckBox4.Caption:='Approximation 2';
                                end;
                            end;
                        end;



                    // -> wenn kein Rohr selbst definiert wird
                    if (selection=1) then
                      begin
                        // -> untere und obere Grenze bestimmen, bevor der Graph gezeichnet werden kann
                        untereGrenze:=m_min_var;
                        obereGrenze:=m_max_var;
                        //untereGrenze:=StrToFloat(Label113.Caption);
                        //obereGrenze:=StrToFloat(Label123.Caption);

                        Ausgleichskurve_Potenzfunktion_mit_variablen_Grenzen();
                        {*// -> Werte zwischen den eingestellten Grenzen bestimmen
                        // ---> untere Grenze bestimmen
                        for i:=1 to Anzahl do
                          begin
                            if StrToFloat(Analyse.StringGrid1.Cells[1,i])=untereGrenze then
                              begin
                                index_unten_von_x_nach:=i;
                                break;
                              end
                              else
                                begin
                                  if StrToFloat(Analyse.StringGrid1.Cells[1,i])>untereGrenze then
                                    begin
                                      index_unten_von_x_nach:=i-1;

                                      //
                                      if index_unten_von_x_nach=0 then
                                        begin
                                          index_unten_von_x_nach:=1;
                                        end;

                                      break;
                                    end;
                                end;
                          end;

                        // ---> obere Grenze bestimmen
                        for i:=1 to Anzahl do
                          begin
                            if StrToFloat(Analyse.StringGrid1.Cells[1,i])=obereGrenze then
                              begin
                                index_oben_von_x_vor:=i;
                                break;
                              end
                              else
                                begin
                                  if StrToFloat(Analyse.StringGrid1.Cells[1,i])>obereGrenze then
                                    begin
                                      index_oben_von_x_vor:=i;
                                      break;
                                    end;
                                end;
                          end;

                        // -> neue Kurve zeichnen
                        for i:=index_unten_von_x_nach to index_oben_von_x_vor do
                          begin
                            // -> ist Wert vom unterer Index in StringGrid1 enthalten?
                            if i=index_unten_von_x_nach then
                              begin
                                if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_min_var then
                                  begin
                                    x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                                  end
                                  else
                                    begin
                                      if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_min_var then
                                        begin
                                          x:=m_min_var
                                          //x:=StrToFloat(Analyse.Label113.Caption);
                                        end;
                                    end;
                              end
                              else
                                begin
                                  if i<>index_unten_von_x_nach then
                                    begin
                                      x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                                    end;
                                end;
                              // -> ist Wert vom oberen Index in StringGrid1 enthalten?
                              if i=index_oben_von_x_vor then
                                begin
                                  if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_max_var then
                                    begin
                                      x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                                    end
                                    else
                                      begin
                                        if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_max_var then
                                          begin
                                            x:=m_max_var;
                                            //x:=StrToFloat(Analyse.Label123.Caption);
                                          end;
                                      end;
                                end;
                              // (es macht einen Unterschied, ob mit den gerundeten Werten und den axakten Werten gerechnet wird!!!)
                              //y:=StrToFloat(Analyse.Label21.Caption)*Power(x, StrToFloat(Analyse.Label22.Caption));
                              y:=Faktor_a_global*Power(x, Exponent_global);
                              Chart1.Series[3].AddXY(x, y);

                              if (max_x_Wert_Tabellenwert_Approximation2>=untereGrenze) and (max_x_Wert_Tabellenwert_Approximation2<=obereGrenze) then
                                begin
                                  Chart1.Series[4].AddXY(max_x_Wert_Tabellenwert_Approximation2, max_y_Wert_Tabellenwert_Approximation2);
                                  Chart1.Series[4].AddXY(max_x_Wert_Tabellenwert_Approximation2, max_y_Wert_Approximation2);
                                end;

                          end;*}
                      end
                      else
                        begin
                          // -> wenn ein Rohr selbst definiert wird
                          if (selection=2) then
                            begin
                              // (prüfen, ob es wirklich eine sinnvolle quadratische Funktion ist)
                              if Analyse.Label22.Caption='-' then
                                begin
                                  // (wenn es keine sinnvolle quadratische Funktion ist, dann passiert nichts)
                                end
                                else
                                  begin
                              // -> da nicht im laminaren Bereich approximiert werden darf, ändert sich dadurch auch der Index, d. h. dieser beginnt nicht bei 1
                              startIndex:=StrToInt(eigenesRohr.Label17.Caption);

                              Exponent:=Exponent_n_Appr_2;
                              //Exponent:=StrToFloat(Label22.Caption);
                              Faktor_a:=Faktor_c_opt_Appr_2;
                              //Faktor_a:=StrToFloat(Label21.Caption);

                              // -> Ausgleichs-Potenzfunktion plotten
                              for i:=startIndex to Anzahl do
                                begin
                                  x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                                  y:=Faktor_a*Power(x, Exponent);
                                  Analyse.Chart1.Series[3].AddXY(x, y);
                                end;

                              // max. Abweichung zwischen Tabellenwerte und 2. Approximation
                              // -> Anwendung des y-Kriteriums
                              j:=startIndex;
                              for i:=startIndex to Anzahl do
                                begin
                                  // y-Wert der Kurve Approximation 2 bestimmen und den absoluten und relativen Fehler berechnen
                                  y_Approximation:=Faktor_c_opt_Appr_2*Power(StrToFloat(Analyse.StringGrid1.Cells[1,i]), Exponent);
                                  //y_Approximation:=StrToFloat(Analyse.Label21.Caption)*Power(StrToFloat(Analyse.StringGrid1.Cells[1,i]), StrToFloat(Analyse.Label22.Caption));
                                  Fehler_in_Prozent:=100*((StrToFloat(Analyse.StringGrid1.Cells[2,i])-y_Approximation)/StrToFloat(Analyse.StringGrid1.Cells[2,i]));
                                  Fehler:=StrToFloat(Analyse.StringGrid1.Cells[2,i])-y_Approximation;

                                  Analyse.StringGrid3.Cells[10,i]:=FloatToStr(y_Approximation);
                                  Analyse.StringGrid3.Cells[11,i]:=FloatToStr(Fehler_in_Prozent);
                                  Analyse.StringGrid3.Cells[12,i]:=FloatToStr(Fehler);

                                  // Betrag bilden
                                  if Fehler<0 then
                                    begin
                                      Fehler:=Fehler*-1;
                                      Fehler_in_Prozent:=Fehler_in_Prozent*-1;
                                    end;

                                  // den größten Wert suchen
                                  if i=startIndex then
                                    begin
                                      Fehler_neu:=Fehler;
                                      Fehler_in_Prozent_neu:=Fehler_in_Prozent;
                                      max_y_Wert_Approximation_2:=y_Approximation;
                                      max_x_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                                    end
                                    else
                                    begin
                                      if i=j then
                                        begin
                                          if Fehler>Fehler_neu then
                                            begin
                                              Fehler_neu:=Fehler;
                                              Fehler_in_Prozent_neu:=Fehler_in_Prozent;
                                              max_y_Wert_Approximation_2:=y_Approximation;
                                              max_y_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[2,i]);
                                              max_x_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                                            end;
                                        end;
                                    end;
                                  j:=j+1;
                                end;
                              Analyse.Chart1.Series[3].Title:='Approximation 2';

                              // Ausgabe des max. absoluten und relativen Fehlers
                              Analyse.Label23.Caption:=FloatToStr(Runden(Fehler_neu, 4))+' mbar bzw. '+FloatToStr(Runden(Fehler_in_Prozent_neu, 4))+' %';
                              Analyse.Chart1.Series[4].Title:='max. Abweichung Appr. 2';
                              Analyse.Chart1.Series[4].AddXY(max_x_Wert_Tabellenwerte, max_y_Wert_Tabellenwerte);
                              Analyse.Chart1.Series[4].AddXY(max_x_Wert_Tabellenwerte, max_y_Wert_Approximation_2);
                                  end;


                            end;
                        end;
                  end;
              end;
       end
       else
        begin
          // wenn sich das Programm noch in den Intialisierungen befindet, dann darf nur die zweite Approximationskurve gezeichnet werden
          if StrToInt(Label59.Caption)=1 then
            begin
              // -> untere und obere Grenze bestimmen, bevor der Graph gezeichnet werden kann
              untereGrenze:=m_min_var;
              obereGrenze:=m_max_var;
              //untereGrenze:=StrToFloat(Label113.Caption);
              //obereGrenze:=StrToFloat(Label123.Caption);

              Ausgleichskurve_Potenzfunktion_mit_variablen_Grenzen();
              {*// -> Werte zwischen den eingestellten Grenzen bestimmen
              // ---> untere Grenze bestimmen
              for i:=1 to 30 do
                begin
                  if StrToFloat(Analyse.StringGrid1.Cells[1,i])=untereGrenze then
                    begin
                      index_unten_von_x_nach:=i;
                      break;
                    end
                    else
                      begin
                        if StrToFloat(Analyse.StringGrid1.Cells[1,i])>untereGrenze then
                          begin
                            index_unten_von_x_nach:=i-1;
                            break;
                          end;
                      end;
                end;

              // ---> obere Grenze bestimmen
              for i:=1 to 30 do
                begin
                  if StrToFloat(Analyse.StringGrid1.Cells[1,i])=obereGrenze then
                    begin
                      index_oben_von_x_vor:=i;
                      break;
                    end
                    else
                      begin
                        if StrToFloat(Analyse.StringGrid1.Cells[1,i])>obereGrenze then
                          begin
                            index_oben_von_x_vor:=i;
                            break;
                          end;
                      end;
                end;

              // -> neue Kurve zeichnen
              for i:=index_unten_von_x_nach to index_oben_von_x_vor do
                begin
                  // -> ist Wert vom unterer Index in StringGrid1 enthalten?
                  if i=index_unten_von_x_nach then
                    begin
                      if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_min_var then
                        begin
                          x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                        end
                        else
                          begin
                            if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_min_var then
                              begin
                                x:=m_min_var;
                                //x:=StrToFloat(Analyse.Label113.Caption);
                              end;
                          end;
                    end
                    else
                      begin
                        if i<>index_unten_von_x_nach then
                          begin
                            x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                          end;
                      end;
                  // -> ist Wert vom oberen Index in StringGrid1 enthalten?
                  if i=index_oben_von_x_vor then
                    begin
                      if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_max_var then
                        begin
                          x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                        end
                        else
                          begin
                            if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_max_var then
                              begin
                                x:=m_max_var;
                                //x:=StrToFloat(Analyse.Label123.Caption);
                              end;
                          end;
                    end;
                  y:=Faktor_c_opt_Appr_2*Power(x, StrToFloat(Analyse.Label22.Caption));
                  //y:=StrToFloat(Analyse.Label21.Caption)*Power(x, StrToFloat(Analyse.Label22.Caption));
                  Chart1.Series[3].AddXY(x, y);

                  if (max_x_Wert_Tabellenwert_Approximation2>=untereGrenze) and (max_x_Wert_Tabellenwert_Approximation2<=obereGrenze) then
                    begin
                      Chart1.Series[4].AddXY(max_x_Wert_Tabellenwert_Approximation2, max_y_Wert_Tabellenwert_Approximation2);
                      Chart1.Series[4].AddXY(max_x_Wert_Tabellenwert_Approximation2, max_y_Wert_Approximation2);
                    end;

                end;*}

            end;
        end;
    end
    else
      begin
        // -> Approximation 2 löschen
        // -> außerdem soll die Markierung (die graue Linie) gelöscht werden,
        //    die zur Erkennung des Fehlers dient
        if CheckBox4.Checked=False then
          begin
            Chart1.Series[3].Clear;
            Chart1.Series[4].Clear;
            eigenesRohr.Label16.Caption:='0';
          end;
      end
    end;
end;

// Eintrag "Beenden" im MainMenü unter Datei
procedure TAnalyse.Beenden1Click(Sender: TObject);
begin
  close;
end;

// Eintrag "Hilfe" im MainMenu unter ?
procedure TAnalyse.Hilfe1Click(Sender: TObject);
begin
  Programmhinweise.show;
end;

// Eintrag "Info..." im MainMenu unter ?
procedure TAnalyse.Info1Click(Sender: TObject);
begin
  Info.show;
end;

// Eintrag "Speichern unter..." im MainMenu unter Datei
procedure TAnalyse.Speichern1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    begin
      eigenesRohr.Memo2.Clear;

      eigenesRohr.Memo2.Lines.Add('Innendurchmesser:'+chr(9)+Label98.Caption);
      eigenesRohr.Memo2.Lines.Add('Länge:'+chr(9)+Label99.Caption);
      //eigenesRohr.Memo2.Lines.Add('Innendurchmesser:'+chr(9)+Label98.Caption+chr(32)+'mm');
      //eigenesRohr.Memo2.Lines.Add('Länge:'+chr(9)+Label99.Caption+chr(32)+'m');

      // prüfen, ob Massenstrom, Strömungsgeschwindigkeit oder Reynoldzahl ausgewählt ist
      // -> Massenstrom
      if (eigenesRohr.RadioButton1.Checked=True) and (eigenesRohr.RadioButton2.Checked=False) and (eigenesRohr.RadioButton3.Checked=False) then
        begin
          eigenesRohr.Memo2.Lines.Add('UntereGrenze:'+chr(9)+Label108.Caption);
          eigenesRohr.Memo2.Lines.Add('ObereGrenze:'+chr(9)+Label109.Caption);
          //eigenesRohr.Memo2.Lines.Add('UntereGrenze:'+chr(9)+Label108.Caption+chr(32)+'kg/h');
          //eigenesRohr.Memo2.Lines.Add('ObereGrenze:'+chr(9)+Label109.Caption+chr(32)+'kg/h');
          eigenesRohr.Memo2.Lines.Add('Typ:'+chr(9)+'Massenstrom'+chr(32));
        end
        else
          begin
            // -> Strömungsgeschwindigkeit
            if (eigenesRohr.RadioButton1.Checked=False) and (eigenesRohr.RadioButton2.Checked=True) and (eigenesRohr.RadioButton3.Checked=False) then
              begin
                eigenesRohr.Memo2.Lines.Add('UntereGrenze:'+chr(9)+Label108.Caption);
                eigenesRohr.Memo2.Lines.Add('ObereGrenze:'+chr(9)+Label109.Caption);
                //eigenesRohr.Memo2.Lines.Add('UntereGrenze:'+chr(9)+Label108.Caption+chr(32)+'m/s');
                //eigenesRohr.Memo2.Lines.Add('ObereGrenze:'+chr(9)+Label109.Caption+chr(32)+'m/s');
                eigenesRohr.Memo2.Lines.Add('Typ:'+chr(9)+'Strömungsgeschwindigkeit'+chr(32));
              end
              else
                begin
                  // -> Reynoldzahl
                  if (eigenesRohr.RadioButton1.Checked=False) and (eigenesRohr.RadioButton2.Checked=False) and (eigenesRohr.RadioButton3.Checked=True) then
                    begin
                      eigenesRohr.Memo2.Lines.Add('UntereGrenze:'+chr(9)+Label108.Caption);
                      eigenesRohr.Memo2.Lines.Add('ObereGrenze:'+chr(9)+Label109.Caption);
                      //eigenesRohr.Memo2.Lines.Add('UntereGrenze:'+chr(9)+Label108.Caption+chr(32));
                      //eigenesRohr.Memo2.Lines.Add('ObereGrenze:'+chr(9)+Label109.Caption+chr(32));
                      eigenesRohr.Memo2.Lines.Add('Typ:'+chr(9)+'Reynoldzahl'+chr(32));
                    end;
                end;
          end;

      eigenesRohr.Memo2.Lines.Add('Temperatur:'+chr(9)+Label111.Caption);
      eigenesRohr.Memo2.Lines.Add('Rohrrauhigkeit:'+chr(9)+Label105.Caption);
      //eigenesRohr.Memo2.Lines.Add('Temperatur:'+chr(9)+Label111.Caption+chr(32)+'°C');
      //eigenesRohr.Memo2.Lines.Add('Rohrrauhigkeit:'+chr(9)+Label105.Caption+chr(32)+'mm');

      eigenesRohr.Memo2.Lines.SaveToFile(SaveDialog1.FileName+'.txt');
    end;
end;

// Eintrag "Öffnen..." im MainMenu unter Datei
procedure TAnalyse.ffnen1Click(Sender: TObject);
var
  i,Position_Trennzeichen_Tab,Position_Trennzeichen_Leertaste,index,laenge:Integer;
  Zeile,temperature,typ:String;
begin
  if OpenDialog1.Execute then
    begin
      eigenesRohr.Memo2.Clear;

      eigenesRohr.Memo2.Lines.LoadFromFile(OpenDialog1.FileName);

      i:=1;

      Repeat
        Zeile:=eigenesRohr.Memo2.Lines[i-1];
        Position_Trennzeichen_Tab:=Pos(char(9), Zeile);
        Position_Trennzeichen_Leertaste:=Pos(char(32), Zeile);

        // Innendurchmesser einfügen
        if i=1 then
          begin
            laenge:=Position_Trennzeichen_Leertaste-(Position_Trennzeichen_Tab+1);
            eigenesRohr.Edit2.Text:=Copy(Zeile,Position_Trennzeichen_Tab+1,laenge);
          end
          else
            begin
              // Länge einfügen
              if i=2 then
                begin
                  laenge:=Position_Trennzeichen_Leertaste-(Position_Trennzeichen_Tab+1);
                  eigenesRohr.Edit3.Text:=Copy(Zeile,Position_Trennzeichen_Tab+1,laenge);
                end
                else
                  begin
                    // untere Grenze einfügen
                    if i=3 then
                      begin
                        laenge:=Position_Trennzeichen_Leertaste-(Position_Trennzeichen_Tab+1);
                        eigenesRohr.Label8.Caption:=Copy(Zeile,Position_Trennzeichen_Tab+1,laenge);
                      end
                      else
                        begin
                          // obere Grenze einfügen
                          if i=4 then
                            begin
                              laenge:=Position_Trennzeichen_Leertaste-(Position_Trennzeichen_Tab+1);
                              eigenesRohr.Label13.Caption:=Copy(Zeile,Position_Trennzeichen_Tab+1,laenge);
                            end
                            else
                              begin
                                // (Ist Massenstrom, Strömungsgeschwindigkeit oder Reynolzahl angegeben)
                                if i=5 then
                                  begin
                                    laenge:=Position_Trennzeichen_Leertaste-(Position_Trennzeichen_Tab+1);
                                    typ:=Copy(Zeile,Position_Trennzeichen_Tab+1,laenge);

                                    if typ='Massenstrom' then
                                      begin
                                        eigenesRohr.RadioButton1.Checked:=True;
                                        eigenesRohr.RadioButton2.Checked:=False;
                                        eigenesRohr.RadioButton3.Checked:=False;
                                        Eingabe.Edit1.Text:=eigenesRohr.Label8.Caption;
                                        Eingabe.Edit2.Text:=eigenesRohr.Label13.Caption;
                                        eigenesRohr.Label14.Caption:='kg/h';
                                        eigenesRohr.Label15.Caption:='kg/h';
                                      end
                                      else
                                        begin
                                          if typ='Strömungsgeschwindigkeit' then
                                            begin
                                              eigenesRohr.RadioButton1.Checked:=False;
                                              eigenesRohr.RadioButton2.Checked:=True;
                                              eigenesRohr.RadioButton3.Checked:=False;
                                              Eingabe.Edit3.Text:=eigenesRohr.Label8.Caption;
                                              Eingabe.Edit4.Text:=eigenesRohr.Label13.Caption;
                                              eigenesRohr.Label14.Caption:='m/s';
                                              eigenesRohr.Label15.Caption:='m/s';
                                            end
                                        else
                                        begin
                                          if typ='Reynoldzahl' then
                                            begin
                                              eigenesRohr.RadioButton1.Checked:=False;
                                              eigenesRohr.RadioButton2.Checked:=False;
                                              eigenesRohr.RadioButton3.Checked:=True;
                                              Eingabe.Edit5.Text:=eigenesRohr.Label8.Caption;
                                              Eingabe.Edit6.Text:=eigenesRohr.Label13.Caption;
                                              eigenesRohr.Label14.Caption:=' ';
                                              eigenesRohr.Label15.Caption:=' ';
                                            end;
                                        end;
                                  end;
                              end
                              else
                                begin
                                  // Temperatur einfügen
                                  if i=6 then
                                    begin
                                      laenge:=Position_Trennzeichen_Leertaste-(Position_Trennzeichen_Tab+1);
                                      temperature:=Copy(Zeile,Position_Trennzeichen_Tab+1,laenge);

                                      if temperature='0' then
                                        begin
                                          eigenesRohr.ComboBox2.ItemIndex:=0;
                                        end
                                        else
                                          begin
                                            if temperature='5' then
                                              begin
                                                eigenesRohr.ComboBox2.ItemIndex:=1;
                                              end
                                              else
                                                begin
                                                  if temperature='10' then
                                                    begin
                                                      eigenesRohr.ComboBox2.ItemIndex:=2;
                                                    end
                                                    else
                                                      begin
                                                        if temperature='15' then
                                                          begin
                                                            eigenesRohr.ComboBox2.ItemIndex:=3;
                                                          end
                                                          else
                                                            begin
                                                              if temperature='20' then
                                                                begin
                                                                  eigenesRohr.ComboBox2.ItemIndex:=4;
                                                                end
                                                                else
                                                                  begin
                                                                    if temperature='25' then
                                                                      begin
                                                                        eigenesRohr.ComboBox2.ItemIndex:=5;
                                                                      end
                                                                      else
                                                                        begin
                                                                          if temperature='30' then
                                                                            begin
                                                                              eigenesRohr.ComboBox2.ItemIndex:=6;
                                                                            end
                                                                            else
                                                                              begin
                                                                                if temperature='35' then
                                                                                  begin
                                                                                    eigenesRohr.ComboBox2.ItemIndex:=7;
                                                                                  end
                                                                                  else
                                                                                    begin
                                                                                      if temperature='40' then
                                                                                        begin
                                                                                          eigenesRohr.ComboBox2.ItemIndex:=8;
                                                                                        end
                                                                                        else
                                                                                          begin
                                                                                            if temperature='45' then
                                                                                              begin
                                                                                                eigenesRohr.ComboBox2.ItemIndex:=9;
                                                                                              end
                                                                                              else
                                                                                                begin
                                                                                                  if temperature='50' then
                                                                                                    begin
                                                                                                      eigenesRohr.ComboBox2.ItemIndex:=10;
                                                                                                    end
                                                                                                    else
                                                                                                      begin
                                                                                                        if temperature='55' then
                                                                                                          begin
                                                                                                            eigenesRohr.ComboBox2.ItemIndex:=11;
                                                                                                          end
                                                                                                          else
                                                                                                            begin
                                                                                                              if temperature='60' then
                                                                                                                begin
                                                                                                                  eigenesRohr.ComboBox2.ItemIndex:=12;
                                                                                                                end
                                                                                                                else
                                                                                                                  begin
                                                                                                                    if temperature='65' then
                                                                                                                      begin
                                                                                                                        eigenesRohr.ComboBox2.ItemIndex:=13;
                                                                                                                      end
                                                                                                                      else
                                                                                                                        begin
                                                                                                                          if temperature='70' then
                                                                                                                            begin
                                                                                                                              eigenesRohr.ComboBox2.ItemIndex:=14;
                                                                                                                            end
                                                                                                                            else
                                                                                                                              begin
                                                                                                                                if temperature='75' then
                                                                                                                                  begin
                                                                                                                                    eigenesRohr.ComboBox2.ItemIndex:=15;
                                                                                                                                  end
                                                                                                                                  else
                                                                                                                                    begin
                                                                                                                                      if temperature='80' then
                                                                                                                                        begin
                                                                                                                                          eigenesRohr.ComboBox2.ItemIndex:=16;
                                                                                                                                        end
                                                                                                                                        else
                                                                                                                                          begin
                                                                                                                                            if temperature='85 °C' then
                                                                                                                                              begin
                                                                                                                                                eigenesRohr.ComboBox2.ItemIndex:=17;
                                                                                                                                              end
                                                                                                                                              else
                                                                                                                                                begin
                                                                                                                                                  if temperature='90' then
                                                                                                                                                    begin
                                                                                                                                                      eigenesRohr.ComboBox2.ItemIndex:=18;
                                                                                                                                                    end
                                                                                                                                                    else
                                                                                                                                                      begin
                                                                                                                                                        if temperature='95' then
                                                                                                                                                          begin
                                                                                                                                                            eigenesRohr.ComboBox2.ItemIndex:=19;
                                                                                                                                                          end;
                                                                                                                                                      end;
                                                                                                                                                end;
                                                                                                                                          end;
                                                                                                                                    end;
                                                                                                                              end;
                                                                                                                        end;
                                                                                                                  end;
                                                                                                            end;
                                                                                                      end;
                                                                                                end;
                                                                                          end;
                                                                                    end;
                                                                              end;
                                                                        end;
                                                                  end;
                                                            end;
                                                      end;
                                                end;
                                          end;
                                    end
                                    else
                                      begin
                                        // Rohrrauhigkeit einfügen
                                        if i=7 then
                                          begin
                                            laenge:=Position_Trennzeichen_Leertaste-(Position_Trennzeichen_Tab+1);
                                            eigenesRohr.Edit5.Text:=Copy(Zeile,Position_Trennzeichen_Tab+1,laenge);
                                          end;
                                      end;
                              end;
                        end;
                  end;
                end;
          end;

        i:=i+1;
      until i>eigenesRohr.Memo2.Lines.Count;
    end;
end;

// ScrollBar2 dient zum Einstellen der unteren Grenze
// -> die untere Grenze kann nur als Ganzzahl eingesetllt werden
//    (keine Fließkommazahl!!)
procedure TAnalyse.ScrollBar2Change(Sender: TObject);
var
  new_Position,Anzahl:Integer;
  delta,delta_y,y:Real;
begin
  // der ScrollBar darf nur bei den genormten Rohren benutzt werden!
  if (selection=1) then
    begin
      // der Scrollbar zum Einstellen der unteren Grenze darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
      if (aenderung_Auswahl_NormRohr=0) then
        begin
          // beim Starten des Programms soll verhindert werden, dass der untere Schrollbar irgendwo eingezeichnet wird
          if (scrollBar_enable=0) then
            begin

            end
            else
              begin
                if (scrollBar_enable=1) then
                  begin
                    Chart1.Series[5].Clear;

                    case Auswahl.ItemIndex of
                      0:
                        Anzahl:=17;
                      1:
                        Anzahl:=25;
                      else
                        Anzahl:=30;
                      end;

                    // einen Mindestabstand von 10% übrig lassen
                    if (ScrollBar2.Position<90) then
                      begin
                        // Berechnung der neuen Position des Balkens
                        new_Position:=ScrollBar2.Position;
                        delta:=m_max_var-m_min;
                        //delta:=StrToFloat(Label123.Caption)-StrToFloat(Label7.Caption);
                        delta_y:=new_Position*(delta/100);
                        y:=m_min+delta_y;
                        //y:=StrToFloat(Label7.Caption)+delta_y;
                        m_min_var:=Runden(y, 2);
                        Label113.Caption:=FloatToStr(Runden(y, 2))+' kg/h';
                        //Label113.Caption:=FloatToStr(Runden(y, 2));

                        y_ScrollBar2:=y;

                        if (Auswahl.ItemIndex<10) then
                          begin
                            Chart1.Series[5].AddXY(y,0);
                            Chart1.Series[5].AddXY(y,8);
                          end
                          else
                            begin
                              if (Auswahl.ItemIndex>=10) then
                                begin
                                  Chart1.Series[5].AddXY(y,0);
                                  Chart1.Series[5].AddXY(y,5);
                                end;
                            end;

                        Chart1.Series[1].Clear;
                        Label26.Caption:='1';

                        // prüfen, ob die Approximationen 1 und 2 ein- oder ausgeblendet sind
                        if (CheckBox2.Checked=True) then
                          begin
                            // (wenn die Grenzen verändert werden, dann soll der vorherige Zustand vom Faktor c übernommen werden)
                            c_min_SB1:=Faktor_c_Appr_1;
                            //c_min_SB1:=StrToFloat(Label25.Caption);

                            neue_Kurve_bei_variablen_Grenzen(c_min_SB1);
                            y_Kriterium_bei_variablen_Grenzen(c_min_SB1);
                            Automatisches_Suchen_nach_Optimum();
                          end;
                        if (CheckBox4.Checked=True) then
                          begin
                            Ausgleichskurve_Potenzfunktion_mit_variablen_Grenzen();
                          end;

                      end
                      else
                        begin
                          if (ScrollBar2.Position>=90) then
                            begin
                              if (Auswahl.ItemIndex<10) then
                                begin
                                  Chart1.Series[5].AddXY(y_ScrollBar2,0);
                                  Chart1.Series[5].AddXY(y_ScrollBar2,8);
                                end
                                else
                                  begin
                                    if (Auswahl.ItemIndex>=10) then
                                      begin
                                        Chart1.Series[5].AddXY(y_ScrollBar2,0);
                                        Chart1.Series[5].AddXY(y_ScrollBar2,5);
                                      end;
                                  end;
                            end;
                        end;

                  end;
              end;
        end;
    end;
end;

// ScrollBar3 dient zum Einstellen der oberen Grenze
// -> die obere Grenze kann nur als Ganzzahl eingestellt werden
//    (keine Fließkommazahl!!)
procedure TAnalyse.ScrollBar3Change(Sender: TObject);
var
  new_Position,Anzahl:Integer;
  delta,delta_y,y:Real;
begin
  // der ScrollBar darf nur bei den genormten Rohren benutzt werden!
  if (selection=1) then
    begin
      // der Scrollbar zum Einstellen der oberen Grenze darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
      if (aenderung_Auswahl_NormRohr=0) then
        begin
          // beim Starten des Programms soll verhindert werden, dass der obere Schrollbar irgendwo eingezeichnet wird
          if (scrollBar_enable=0) then
            begin

            end
            else
              begin
                if (scrollBar_enable=1) then
                  begin
                    Chart1.Series[6].Clear;

                    case Auswahl.ItemIndex of
                      0:
                        Anzahl:=17;
                      1:
                        Anzahl:=25;
                      else
                        Anzahl:=30
                      end;

                    // einen Mindestabstand von 10% übrig lassen
                    if (ScrollBar3.Position>10) then
                      begin
                        // Berechnung der neuen Position des Balkens
                        new_Position:=ScrollBar3.Position;
                        delta:=m_max-m_min_var;
                        //delta:=StrToFloat(Label8.Caption)-StrToFloat(Label113.Caption);
                        delta_y:=new_Position*(delta/100);
                        y:=m_min_var+delta_y;
                        //y:=StrToFloat(Label113.Caption)+delta_y;
                        m_max_var:=Runden(y, 2);
                        Label123.Caption:=FloatToStr(Runden(y, 2))+' kg/h';
                        //Label123.Caption:=FloatToStr(Runden(y, 2));

                        y_ScrollBar3:=y;

                        if (Auswahl.ItemIndex<10) then
                          begin
                            Chart1.Series[6].AddXY(y,0);
                            Chart1.Series[6].AddXY(y,8);
                          end
                          else
                            begin
                              if (Auswahl.ItemIndex>=10) then
                                begin
                                  Chart1.Series[6].AddXY(y,0);
                                  Chart1.Series[6].AddXY(y,5);
                                end;
                            end;

                        Chart1.Series[1].Clear;
                        Label26.Caption:='1';

                        // prüfen, ob die Approximationen 1 und 2 ein- oder ausgeschaltet sind
                        if (CheckBox2.Checked=True) then
                          begin
                            // (wenn die Grenzen verändert werden, dann soll der vorherige Zustand vom Faktor c übernommen werden)
                            c_min_SB1:=Faktor_c_Appr_1;
                            //c_min_SB1:=StrToFloat(Label25.Caption);

                            neue_Kurve_bei_variablen_Grenzen(c_min_SB1);
                            y_Kriterium_bei_variablen_Grenzen(c_min_SB1);
                            Automatisches_Suchen_nach_Optimum();
                          end;

                        if (CheckBox4.Checked=True) then
                          begin
                            Ausgleichskurve_Potenzfunktion_mit_variablen_Grenzen();
                          end;

                        end
                        else
                          begin
                            if (ScrollBar3.Position<=10) then
                              begin
                                if (Auswahl.ItemIndex<10) then
                                  begin
                                    Chart1.Series[6].AddXY(y_ScrollBar3,0);
                                    Chart1.Series[6].AddXY(y_ScrollBar3,8);
                                  end
                                  else
                                    begin
                                      if (Auswahl.ItemIndex>=10) then
                                        begin
                                          Chart1.Series[6].AddXY(y_ScrollBar3,0);
                                          Chart1.Series[6].AddXY(y_ScrollBar3,5);
                                        end;
                                    end;
                              end;
                          end;
                  end;
              end;
        end;
    end;
end;

// RadioButton '60°C'
procedure TAnalyse.RadioButton3Click(Sender: TObject);
begin
  // der RadionButton darf nur bei den genormten Rohren benutzt werden!
  if (selection=1) then
    begin
  // Kupferrohr 8x1
  if Auswahl.ItemIndex=0 then
    begin
      Label3.Caption:='Kupferrohr 8x1';
      Label101.Caption:='8 mm';
      Label103.Caption:='1 mm';
      m_min:=15;
      m_max:=41;
      Label7.Caption:='15 kg/h';
      Label8.Caption:='41 kg/h';
      //Label7.Caption:='15';
      //Label8.Caption:='41';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Kupferrohr 10x1
  if Auswahl.ItemIndex=1 then
    begin
      Label3.Caption:='Kupferrohr 10x1';
      Label101.Caption:='10 mm';
      Label103.Caption:='1 mm';
      m_min:=19;
      m_max:=91;
      Label7.Caption:='19 kg/h';
      Label8.Caption:='91 kg/h';
      //Label7.Caption:='19';
      //Label8.Caption:='91';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Kupferrohr 12x1
  if Auswahl.ItemIndex=2 then
    begin
      Label3.Caption:='Kupferrohr 12x1';
      Label101.Caption:='12 mm';
      Label103.Caption:='1 mm';
      m_min:=28;
      m_max:=167;
      Label7.Caption:='28 kg/h';
      Label8.Caption:='167 kg/h';
      //Label7.Caption:='28';
      //Label8.Caption:='167';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Kupferrohr 15x1
  if Auswahl.ItemIndex=3 then
    begin
      Label3.Caption:='Kupferrohr 15x1';
      Label101.Caption:='15 mm';
      Label103.Caption:='1 mm';
      m_min:=57;
      m_max:=342;
      Label7.Caption:='57 kg/h';
      Label8.Caption:='342 kg/h';
      //Label7.Caption:='57';
      //Label8.Caption:='342';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Kupferrohr 18x1
  if Auswahl.ItemIndex=4 then
    begin
      Label3.Caption:='Kupferrohr 18x1';
      Label101.Caption:='18 mm';
      Label103.Caption:='1 mm';
      m_min:=100;
      m_max:=595;
      Label7.Caption:='100 kg/h';
      Label8.Caption:='595 kg/h';
      //Label7.Caption:='100';
      //Label8.Caption:='595';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Kupferrohr 22x1
  if Auswahl.ItemIndex=5 then
    begin
      Label3.Caption:='Kupferrohr 22x1';
      Label101.Caption:='22 mm';
      Label103.Caption:='1 mm';
      m_min:=184;
      m_max:=1080;
      Label7.Caption:='184 kg/h';
      Label8.Caption:='1080 kg/h';
      //Label7.Caption:='184';
      //Label8.Caption:='1080';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Kupferrohr 28x1,5
  if Auswahl.ItemIndex=6 then
    begin
      Label3.Caption:='Kupferrohr 28x1,5';
      Label101.Caption:='28 mm';
      Label103.Caption:='1,5 mm';
      m_min:=338;
      m_max:=1970;
      Label7.Caption:='338 kg/h';
      Label8.Caption:='1970 kg/h';
      //Label7.Caption:='338';
      //Label8.Caption:='1970';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Kupferrohr 35x1,5
  if Auswahl.ItemIndex=7 then
    begin
      Label3.Caption:='Kupferrohr 35x1,5';
      Label101.Caption:='35 mm';
      Label103.Caption:='1,5 mm';
      m_min:=660;
      m_max:=3800;
      Label7.Caption:='660 kg/h';
      Label8.Caption:='3800 kg/h';
      //Label7.Caption:='660';
      //Label8.Caption:='3800';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Kupferrohr 42x1,5
  if Auswahl.ItemIndex=8 then
    begin
      Label3.Caption:='Kupferrohr 42x1,5';
      Label101.Caption:='42 mm';
      Label103.Caption:='1,5 mm';
      m_min:=1130;
      m_max:=6460;
      Label7.Caption:='1130 kg/h';
      Label8.Caption:='6460 kg/h';
      //Label7.Caption:='1130';
      //Label8.Caption:='6460';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Kupferrohr 54x2
  if Auswahl.ItemIndex=9 then
    begin
      Label3.Caption:='Kupferrohr 54x2';
      Label101.Caption:='54 mm';
      Label103.Caption:='2 mm';
      m_min:=2210;
      m_max:=12500;
      Label7.Caption:='2210 kg/h';
      Label8.Caption:='12500 kg/h';
      //Label7.Caption:='2210';
      //Label8.Caption:='12500';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Stahlrohr DN10
  if Auswahl.ItemIndex=10 then
    begin
      Label3.Caption:='Stahlrohr DN10';
      Label101.Caption:='17,2 mm';
      Label103.Caption:='2,35 mm';
      m_min:=17.2;
      m_max:=223;
      Label7.Caption:='17,2 kg/h';
      Label8.Caption:='223 kg/h';
      //Label7.Caption:='17,2';
      //Label8.Caption:='223';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Stahlrohr DN15
  if Auswahl.ItemIndex=11 then
    begin
      Label3.Caption:='Stahlrohr DN15';
      Label101.Caption:='21,3 mm';
      Label103.Caption:='2,65 mm';
      m_min:=78.8;
      m_max:=434;
      Label7.Caption:='78,8 kg/h';
      Label8.Caption:='434 kg/h';
      //Label7.Caption:='78,8';
      //Label8.Caption:='434';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Stahlrohr DN20
  if Auswahl.ItemIndex=12 then
    begin
      Label3.Caption:='Stahlrohr DN20';
      Label101.Caption:='26,9 mm';
      Label103.Caption:='2,65 mm';
      m_min:=179;
      m_max:=963;
      Label7.Caption:='179 kg/h';
      Label8.Caption:='963 kg/h';
      //Label7.Caption:='179';
      //Label8.Caption:='963';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Stahlrohr DN25
  if Auswahl.ItemIndex=13 then
    begin
      Label3.Caption:='Stahlrohr DN25';
      Label101.Caption:='33,7 mm';
      Label103.Caption:='3,25 mm';
      m_min:=336;
      m_max:=1796;
      Label7.Caption:='336 kg/h';
      Label8.Caption:='1796 kg/h';
      //Label7.Caption:='336';
      //Label8.Caption:='1796';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Stahlrohr DN32
  if Auswahl.ItemIndex=14 then
    begin
      Label3.Caption:='Stahlrohr DN32';
      Label101.Caption:='42,4 mm';
      Label103.Caption:='3,25 mm';
      m_min:=720;
      m_max:=3780;
      Label7.Caption:='720 kg/h';
      Label8.Caption:='3780 kg/h';
      //Label7.Caption:='720';
      //Label8.Caption:='3780';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Stahlrohr DN40
  if Auswahl.ItemIndex=15 then
    begin
      Label3.Caption:='Stahlrohr DN40';
      Label101.Caption:='44,5 mm';
      Label103.Caption:='2,6 mm';
      m_min:=920;
      m_max:=4830;
      Label7.Caption:='920 kg/h';
      Label8.Caption:='4830 kg/h';
      //Label7.Caption:='920';
      //Label8.Caption:='4830';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Stahlrohr DN50
  if Auswahl.ItemIndex=16 then
    begin
      Label3.Caption:='Stahlrohr DN50';
      Label101.Caption:='57 mm';
      Label103.Caption:='2,9 mm';
      m_min:=1890;
      m_max:=9750;
      Label7.Caption:='1890 kg/h';
      Label8.Caption:='9750 kg/h';
      //Label7.Caption:='1890';
      //Label8.Caption:='9750';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Stahlrohr DN65
  if Auswahl.ItemIndex=17 then
    begin
      Label3.Caption:='Stahlrohr DN65';
      Label101.Caption:='76,1 mm';
      Label103.Caption:='2,9 mm';
      m_min:=4340;
      m_max:=22300;
      Label7.Caption:='4340 kg/h';
      Label8.Caption:='22300 kg/h';
      //Label7.Caption:='4340';
      //Label8.Caption:='22300';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Stahlrohr DN80
  if Auswahl.ItemIndex=18 then
    begin
      Label3.Caption:='Stahlrohr DN80';
      Label101.Caption:='88,9 mm';
      Label103.Caption:='3,2 mm';
      m_min:=640;
      m_max:=34000;
      Label7.Caption:='640 kg/h';
      Label8.Caption:='34000 kg/h';
      //Label7.Caption:='6640';
      //Label8.Caption:='34000';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Stahlrohr DN100
  if Auswahl.ItemIndex=19 then
    begin
      Label3.Caption:='Stahlrohr DN100';
      Label101.Caption:='108 mm';
      Label103.Caption:='3,6 mm';
      m_min:=11400;
      m_max:=57600;
      Label7.Caption:='11400 kg/h';
      Label8.Caption:='57600 kg/h';
      //Label7.Caption:='11400';
      //Label8.Caption:='57600';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;

  // Stahlrohr DN125
  if Auswahl.ItemIndex=20 then
    begin
      Label3.Caption:='Stahlrohr DN125';
      Label101.Caption:='133 mm';
      Label103.Caption:='4 mm';
      m_min:=20100;
      m_max:=101600;
      Label7.Caption:='20100 kg/h';
      Label8.Caption:='101600 kg/h';
      //Label7.Caption:='20100';
      //Label8.Caption:='101600';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='983,21 kg/m³';
      Label121.Caption:='0,0004664 kg/(m*s)';
      Label122.Caption:='4,74E-7 m²/s';
    end;
    end;
end;

// RadioButton '80°C'
procedure TAnalyse.RadioButton4Click(Sender: TObject);
begin
  // der RadioButton darf nur bei den genormten Rohren benutzt werden!
  if (selection=1) then
    begin
  // Kupferrohr 8x1
  if Auswahl.ItemIndex=0 then
    begin
      Label3.Caption:='Kupferrohr 8x1';
      Label101.Caption:='8 mm';
      Label103.Caption:='1 mm';
      m_min:=15;
      m_max:=41;
      Label7.Caption:='15 kg/h';
      Label8.Caption:='41 kg/h';
      //Label7.Caption:='15';
      //Label8.Caption:='41';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Kupferrohr 10x1
  if Auswahl.ItemIndex=1 then
    begin
      Label3.Caption:='Kupferrohr 10x1';
      Label101.Caption:='10 mm';
      Label103.Caption:='1 mm';
      m_min:=19;
      m_max:=91;
      Label7.Caption:='19 kg/h';
      Label8.Caption:='91 kg/h';
      //Label7.Caption:='19';
      //Label8.Caption:='91';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Kupferrohr 12x1
  if Auswahl.ItemIndex=2 then
    begin
      Label3.Caption:='Kupferrohr 12x1';
      Label101.Caption:='12 mm';
      Label103.Caption:='1 mm';
      m_min:=28;
      m_max:=167;
      Label7.Caption:='28 kg/h';
      Label8.Caption:='167 kg/h';
      //Label7.Caption:='28';
      //Label8.Caption:='167';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Kupferrohr 15x1
  if Auswahl.ItemIndex=3 then
    begin
      Label3.Caption:='Kupferrohr 15x1';
      Label101.Caption:='15 mm';
      Label103.Caption:='1 mm';
      m_min:=57;
      m_max:=342;
      Label7.Caption:='57 kg/h';
      Label8.Caption:='342 kg/h';
      //Label7.Caption:='57';
      //Label8.Caption:='342';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Kupferrohr 18x1
  if Auswahl.ItemIndex=4 then
    begin
      Label3.Caption:='Kupferrohr 18x1';
      Label101.Caption:='18 mm';
      Label103.Caption:='1 mm';
      m_min:=100;
      m_max:=595;
      Label7.Caption:='100 kg/h';
      Label8.Caption:='595 kg/h';
      //Label7.Caption:='100';
      //Label8.Caption:='595';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Kupferrohr 22x1
  if Auswahl.ItemIndex=5 then
    begin
      Label3.Caption:='Kupferrohr 22x1';
      Label101.Caption:='22 mm';
      Label103.Caption:='1 mm';
      m_min:=184;
      m_max:=1080;
      Label7.Caption:='184 kg/h';
      Label8.Caption:='1080 kg/h';
      //Label7.Caption:='184';
      //Label8.Caption:='1080';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 /(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Kupferrohr 28x1,5
  if Auswahl.ItemIndex=6 then
    begin
      Label3.Caption:='Kupferrohr 28x1,5';
      Label101.Caption:='28 mm';
      Label103.Caption:='1,5 mm';
      m_min:=338;
      m_max:=1970;
      Label7.Caption:='338 kg/h';
      Label8.Caption:='1970 kg/h';
      //Label7.Caption:='338';
      //Label8.Caption:='1970';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Kupferrohr 35x1,5
  if Auswahl.ItemIndex=7 then
    begin
      Label3.Caption:='Kupferrohr 35x1,5';
      Label101.Caption:='35 mm';
      Label103.Caption:='1,5 mm';
      m_min:=660;
      m_max:=3800;
      Label7.Caption:='660 kg/h';
      Label8.Caption:='3800 kg/h';
      //Label7.Caption:='660';
      //Label8.Caption:='3800';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Kupferrohr 42x1,5
  if Auswahl.ItemIndex=8 then
    begin
      Label3.Caption:='Kupferrohr 42x1,5';
      Label101.Caption:='42 mm';
      Label103.Caption:='1,5 mm';
      m_min:=1130;
      m_max:=6460;
      Label7.Caption:='1130 kg/h';
      Label8.Caption:='6460 kg/h';
      //Label7.Caption:='1130';
      //Label8.Caption:='6460';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Kupferrohr 54x2
  if Auswahl.ItemIndex=9 then
    begin
      Label3.Caption:='Kupferrohr 54x2';
      Label101.Caption:='54 mm';
      Label103.Caption:='2 mm';
      m_min:=2210;
      m_max:=12500;
      Label7.Caption:='2210 kg/h';
      Label8.Caption:='12500 kg/h';
      //Label7.Caption:='2210';
      //Label8.Caption:='12500';
      Label116.Caption:='0,0015 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Stahlrohr DN10
  if Auswahl.ItemIndex=10 then
    begin
      Label3.Caption:='Stahlrohr DN10';
      Label101.Caption:='17,2 mm';
      Label103.Caption:='2,35 mm';
      m_min:=17.2;
      m_max:=223;
      Label7.Caption:='17,2 kg/h';
      Label8.Caption:='223 kg/h';
      //Label7.Caption:='17,2';
      //Label8.Caption:='223';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Stahlrohr DN15
  if Auswahl.ItemIndex=11 then
    begin
      Label3.Caption:='Stahlrohr DN15';
      Label101.Caption:='21,3 mm';
      Label103.Caption:='2,65 mm';
      m_min:=78.8;
      m_max:=434;
      Label7.Caption:='78,8 kg/h';
      Label8.Caption:='434 kg/h';
      //Label7.Caption:='78,8';
      //Label8.Caption:='434';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Stahlrohr DN20
  if Auswahl.ItemIndex=12 then
    begin
      Label3.Caption:='Stahlrohr DN20';
      Label101.Caption:='26,9 mm';
      Label103.Caption:='2,65 mm';
      m_min:=179;
      m_max:=963;
      Label7.Caption:='179 kg/h';
      Label8.Caption:='963 kg/h';
      //Label7.Caption:='179';
      //Label8.Caption:='963';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Stahlrohr DN25
  if Auswahl.ItemIndex=13 then
    begin
      Label3.Caption:='Stahlrohr DN25';
      Label101.Caption:='33,7 mm';
      Label103.Caption:='3,25 mm';
      m_min:=336;
      m_max:=1796;
      Label7.Caption:='336 kg/h';
      Label8.Caption:='1796 kg/h';
      //Label7.Caption:='336';
      //Label8.Caption:='1796';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Stahlrohr DN32
  if Auswahl.ItemIndex=14 then
    begin
      Label3.Caption:='Stahlrohr DN32';
      Label101.Caption:='42,4 mm';
      Label103.Caption:='3,25 mm';
      m_min:=720;
      m_max:=3780;
      Label7.Caption:='720 kg/h';
      Label8.Caption:='3780 kg/h';
      //Label7.Caption:='720';
      //Label8.Caption:='3780';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Stahlrohr DN40
  if Auswahl.ItemIndex=15 then
    begin
      Label3.Caption:='Stahlrohr DN40';
      Label101.Caption:='44,5 mm';
      Label103.Caption:='2,6 mm';
      m_min:=920;
      m_max:=4830;
      Label7.Caption:='920 kg/h';
      Label8.Caption:='4830 kg/h';
      //Label7.Caption:='920';
      //Label8.Caption:='4830';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Stahlrohr DN50
  if Auswahl.ItemIndex=16 then
    begin
      Label3.Caption:='Stahlrohr DN50';
      Label101.Caption:='57 mm';
      Label103.Caption:='2,9 mm';
      m_min:=1890;
      m_max:=9750;
      Label7.Caption:='1890 kg/h';
      Label8.Caption:='9750 kg/h';
      //Label7.Caption:='1890';
      //Label8.Caption:='9750';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Stahlrohr DN65
  if Auswahl.ItemIndex=17 then
    begin
      Label3.Caption:='Stahlrohr DN65';
      Label101.Caption:='76,1 mm';
      Label103.Caption:='2,9 mm';
      m_min:=4340;
      m_max:=22300;
      Label7.Caption:='4340 kg/h';
      Label8.Caption:='22300 kg/h';
      //Label7.Caption:='4340';
      //Label8.Caption:='22300';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Stahlrohr DN80
  if Auswahl.ItemIndex=18 then
    begin
      Label3.Caption:='Stahlrohr DN80';
      Label101.Caption:='88,9 mm';
      Label103.Caption:='3,2 mm';
      m_min:=6640;
      m_max:=34000;
      Label7.Caption:='6640 kg/h';
      Label8.Caption:='34000 kg/h';
      //Label7.Caption:='6640';
      //Label8.Caption:='34000';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Stahlrohr DN100
  if Auswahl.ItemIndex=19 then
    begin
      Label3.Caption:='Stahlrohr DN100';
      Label101.Caption:='108 mm';
      Label103.Caption:='3,6 mm';
      m_min:=11400;
      m_max:=57600;
      Label7.Caption:='11400 kg/h';
      Label8.Caption:='57600 kg/h';
      //Label7.Caption:='11400';
      //Label8.Caption:='57600';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;

  // Stahlrohr DN125
  if Auswahl.ItemIndex=20 then
    begin
      Label3.Caption:='Stahlrohr DN125';
      Label101.Caption:='133 mm';
      Label103.Caption:='4 mm';
      m_min:=20100;
      m_max:=101600;
      Label7.Caption:='20100 kg/h';
      Label8.Caption:='101600 kg/h';
      //Label7.Caption:='20100';
      //Label8.Caption:='101600';
      Label116.Caption:='0,045 mm';
      Label120.Caption:='971,80 kg/m³';
      Label121.Caption:='0,00035435 kg/(m*s)';
      Label122.Caption:='3,65E-7 m²/s';
    end;
    end;
end;

// Button, um Strömungsgeschwindigkeit zu interpolieren
// -> Variante A
procedure TAnalyse.BitBtn5Click(Sender: TObject);
var
  obereGrenze_Anzahl, Anzahl, i:Integer;
  x1,x2,y1,y2,x,y:Real;
begin
  // der Button 'OK' darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
  if (aenderung_Auswahl_NormRohr=0) then
    begin
  if Kontrolle_ZeichnenButton=1 then
    begin
      // -> vorgegebenes Rohr aus Tabelle
      if (selection=1) then
        begin
          case Auswahl.ItemIndex of
            0:
              obereGrenze_Anzahl:=17;
            1:
              obereGrenze_Anzahl:=25;
            else
              obereGrenze_Anzahl:=30;
            end;
        end
        else
          begin
            // -> selbst definiertes Rohr
            if (selection=2) then
              begin
                obereGrenze_Anzahl:=31;
              end;
          end;

      if StrToFloat(Edit1.Text)>StrToFloat(StringGrid1.Cells[2,1]) then
        begin
          if StrToFloat(Edit1.Text)<StrToFloat(StringGrid1.Cells[2,obereGrenze_Anzahl]) then
            begin

              // Strömungsgeschwindigkeit linear interpolieren
              // -> vorgegebenes Rohr aus Tabelle
              if (selection=1) then
                begin
                  case Auswahl.ItemIndex of
                    0:
                      Anzahl:=17;
                    1:
                      Anzahl:=25;
                    else
                      Anzahl:=30;
                    end;
                  end
                  else
                    begin
                      // -> selbst-definiertes Rohr
                      if (selection=2) then
                        begin
                          Anzahl:=31;
                        end;
                    end;

              // x1, x2, x, y1, y2,und y ermitteln
              x:=StrToFloat(Edit1.Text);
              for i:=1 to Anzahl do
                begin
                  if (StrToFloat(Stringgrid1.Cells[2,i])<x) then
                    begin
                      // ACHTUNG: Wenn ein 'break' vorhanden ist, dann wird der erste zutreffende Wert genommen und anschließend sofort abgebrochen!!
                      x1:=StrToFloat(Stringgrid1.Cells[2,i]);
                      y1:=StrToFloat(Stringgrid1.Cells[0,i]);
                    end;
                end;
              for i:=1 to Anzahl do
                begin
                  if (StrToFloat(Stringgrid1.Cells[2,i])>=x) then
                    begin
                      x2:=StrToFloat(Stringgrid1.Cells[2,i]);
                      y2:=StrToFloat(Stringgrid1.Cells[0,i]);
                      break;
                    end;
                end;

              // interpolieren (y berechnen)
              y:=((y2-y1)/(x2-x1))*(x-x1)+y1;
              Label80.Caption:=FloatToStr(Runden(y,4))+' m/s';
            end;
        end;
    end;
    end;
end;

// Button, um Strömungsgeschwindigkeit zu interpolieren
// -> Variante B
procedure TAnalyse.BitBtn6Click(Sender: TObject);
var
  obereGrenze_Anzahl, Anzahl, i:Integer;
  x1,x2,y1,y2,x,y:Real;
begin
  // der Button 'OK' darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
  if (aenderung_Auswahl_NormRohr=0) then
    begin
  if Kontrolle_ZeichnenButton=1 then
    begin
      // -> vorgegebenes Rohr aus Tabelle
      if (selection=1) then
        begin
          case Auswahl.ItemIndex of
            0:
              obereGrenze_Anzahl:=17;
            1:
              obereGrenze_Anzahl:=25;
            else
              obereGrenze_Anzahl:=30;
            end;
        end
        else
          begin
            // -> selbst definiertes Rohr
            if (selection=2) then
              begin
                obereGrenze_Anzahl:=31;
              end;
          end;

      if StrToFloat(Edit2.Text)>StrToFloat(StringGrid1.Cells[1,1]) then
        begin
          if StrToFloat(Edit2.Text)<StrToFloat(StringGrid1.Cells[1,obereGrenze_Anzahl]) then
            begin

              // Strömungsgeschwindigkeit linear interpolieren
              // -> vorgegebenes Rohr aus Tabelle
              if (selection=1) then
                begin
                  case Auswahl.ItemIndex of
                    0:
                      Anzahl:=17;
                    1:
                      Anzahl:=25;
                    else
                      Anzahl:=30;
                    end;
                  end
                  else
                    begin
                      // -> selbst-definiertes Rohr
                      if (selection=2) then
                        begin
                          Anzahl:=31;
                        end;
                    end;

              // x1, x2, x, y1, y2,und y ermitteln
              x:=StrToFloat(Edit2.Text);
              for i:=1 to Anzahl do
                begin
                  if (StrToFloat(Stringgrid1.Cells[1,i])<x) then
                    begin
                      // ACHTUNG: Wenn ein 'break' vorhanden ist, dann wird der erste zutreffende Wert genommen und anschließend sofort abgebrochen!!
                      x1:=StrToFloat(Stringgrid1.Cells[1,i]);
                      y1:=StrToFloat(Stringgrid1.Cells[0,i]);
                    end;
                end;
              for i:=1 to Anzahl do
                begin
                  if (StrToFloat(Stringgrid1.Cells[1,i])>=x) then
                    begin
                      x2:=StrToFloat(Stringgrid1.Cells[1,i]);
                      y2:=StrToFloat(Stringgrid1.Cells[0,i]);
                      break;
                    end;
                end;

              // interpolieren (y berechnen)
              y:=((y2-y1)/(x2-x1))*(x-x1)+y1;
              Label81.Caption:=FloatToStr(Runden(y,4))+' m/s';
            end;
        end;
    end;
    end;
end;

// Reset-Button des ScrollBar1
procedure TAnalyse.Button3Click(Sender: TObject);
var
  neuer_uebersetzter_Wert:Real;
  x,y:Real;
  c_neu:Real;
  i,Anzahl:Integer;
  index_unten_von_x_nach,index_oben_von_x_vor:Integer;
  untereGrenze, obereGrenze:Real;
  nachkommastellen:Integer;
begin
  // der Button 'Reset' darf erst benutzt werden, wenn das neue Rohr auch durch den Button 'Berechnen' vollständig geladen wurde
  if (aenderung_Auswahl_NormRohr=0) then
    begin
  // der Reset-Button des ScrollBar1 darf nur den ScrollBar zurück auf das Optimum setzen, wenn die CheckBox2 aktiviert ist
  if CheckBox2.Checked=True then
    begin
      // vorgegebenes Rohr aus Tabelle
      if selection=1 then
        begin
          case Analyse.Auswahl.ItemIndex of
            0:
              Anzahl:=17;
            1:
              Anzahl:=25;
            else
              Anzahl:=30;
            end;

          case Analyse.Auswahl.ItemIndex of
            0:
              nachkommastellen:=4;
            1:
              nachkommastellen:=4;
            2:
              nachkommastellen:=4;
            3:
              nachkommastellen:=8;
            4:
              nachkommastellen:=8;
            5:
              nachkommastellen:=9;
            6:
              nachkommastellen:=9;
            7:
              nachkommastellen:=10;
            8:
              nachkommastellen:=10;
            9:
              nachkommastellen:=11;
            10:
              nachkommastellen:=8;
            11:
              nachkommastellen:=8;
            12:
              nachkommastellen:=9;
            13:
              nachkommastellen:=9;
            14:
              nachkommastellen:=10;
            15:
              nachkommastellen:=10;
            16:
              nachkommastellen:=11;
            17:
              nachkommastellen:=12;
            18:
              nachkommastellen:=12;
            19:
              nachkommastellen:=12;
            20:
              nachkommastellen:=13;
            end;
        end
        else
          // selbst definiertes Rohr
          if selection=2 then
            begin
              Anzahl:=StrToInt(eigenesRohr.Label21.Caption);
              c_min_SB1:=StrToFloat(eigenesRohr.Label19.Caption);
              uebersetzter_Wert_max_SB1:=StrToFloat(eigenesRohr.Label20.Caption);
              startIndex:=StrToInt(eigenesRohr.Label17.Caption);
              nachkommastellen:=15;
            end;

      // beim Reset-Button des ScrollBar1 muss der ScrollBar immer auf das Optimum zurückgesetzt werden
      ScrollBar1.Position:=StrToInt(Label65.Caption);

      neuer_uebersetzter_Wert:=(uebersetzter_Wert_max_SB1/100)*ScrollBar1.Position;
      c_neu:=c_min_SB1+neuer_uebersetzter_Wert;
      Stringgrid3.Cells[11,1]:=FloatToStr(neuer_uebersetzter_Wert);
      Stringgrid3.Cells[12,1]:=FloatToStr(c_neu);
      Stringgrid3.Cells[19,1]:=IntToStr(ScrollBar1.Position);
      Faktor_c_Appr_1:=c_neu;
      Label25.Caption:=FloatToStr(Runden(c_neu, nachkommastellen))+' mbar/((kg/h)²)';
      Chart1.Series[1].Clear;
      Chart1.Series[2].Clear;

      // vorgegebenes Rohr aus der Tabelle
      if selection=1 then
        begin
          untereGrenze:=m_min_var;
          obereGrenze:=m_max_var;

          // -> Werte zwischen den eingestellten Grenzen bestimmen
          // ---> untere Grenze bestimmen
          for i:=1 to Anzahl do
            begin
              if StrToFloat(Analyse.StringGrid1.Cells[1,i])=untereGrenze then
                begin
                  index_unten_von_x_nach:=i;
                  break;
                end
                else
                  begin
                    if StrToFloat(Analyse.StringGrid1.Cells[1,i])>untereGrenze then
                      begin
                        index_unten_von_x_nach:=i-1;

                        //
                        if index_unten_von_x_nach=0 then
                          begin
                            index_unten_von_x_nach:=1;
                          end;

                        break;
                      end;
                    end;
            end;

          // ---> obere Grenze bestimmen
          for i:=1 to Anzahl do
            begin
              if StrToFloat(Analyse.StringGrid1.Cells[1,i])=obereGrenze then
                begin
                  index_oben_von_x_vor:=i;
                  break;
                end
                else
                  begin
                    if StrToFloat(Analyse.StringGrid1.Cells[1,i])>obereGrenze then
                      begin
                        index_oben_von_x_vor:=i;
                        break;
                      end;
                    end;
            end;

          // -> neue Kurve zeichnen
          for i:=index_unten_von_x_nach to index_oben_von_x_vor do
            begin
              // -> ist Wert vom unterer Index in StringGrid1 enthalten?
              if i=index_unten_von_x_nach then
                begin
                  if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_min_var then
                    begin
                      x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                    end
                    else
                    begin
                      if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_min_var then
                        begin
                        x:=m_min_var
                        end;
                    end;
                end
                else
                  if i<>index_unten_von_x_nach then
                    begin
                      x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                    end;
              // -> ist Wert vom oberen Index in StringGrid1 enthalten?
              if i=index_oben_von_x_vor then
                begin
                  if StrToFloat(Analyse.StringGrid1.Cells[1,i])=m_max_var then
                    begin
                      x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                    end
                    else
                      begin
                        if StrToFloat(Analyse.StringGrid1.Cells[1,i])<>m_max_var then
                          begin
                          x:=m_max_var
                          end;
                      end;
                end;
              y:=c_neu*x*x;
              Analyse.Chart1.Series[1].AddXY(x,y);
            end;
          y_Kriterium_bei_variablen_Grenzen(c_neu);
        end
        else
          // eigenes definiertes Rohr
          if selection=2 then
            begin
              // -> neue Kurve zeichnen
              for i:=startIndex to Anzahl do
                begin
                  x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                  y:=c_neu*x*x;
                  Analyse.Chart1.Series[1].AddXY(x,y);
                end;

              // y-Kriterium
              y_Kriterium(c_neu);
            end;
    end
    else
      // die CheckBox2 ist deaktiviert, deshalb darf der Reset-Button nicht den ScrollBar zurücksetzen
      if CheckBox2.Checked=False then
        begin

        end;
    end;
end;


end.
