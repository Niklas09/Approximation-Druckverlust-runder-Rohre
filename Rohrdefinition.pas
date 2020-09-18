unit Rohrdefinition;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Math, Buttons, ExtCtrls, TeeProcs, TeEngine,
  Chart, Series, jpeg;

type
  TeigenesRohr = class(TForm)
    Schliessen: TButton;
    Memo1: TMemo;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label21: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    GroupBox1: TGroupBox;
    Weiter: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    StringGrid3: TStringGrid;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Series10: TLineSeries;
    Series11: TLineSeries;
    Series12: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    Series15: TLineSeries;
    Series16: TLineSeries;
    Series17: TLineSeries;
    Series18: TLineSeries;
    Series19: TLineSeries;
    Series20: TLineSeries;
    Series21: TLineSeries;
    Series22: TLineSeries;
    Series23: TLineSeries;
    Series24: TLineSeries;
    Label11: TLabel;
    Series25: TLineSeries;
    Image2: TImage;
    Label16: TLabel;
    Label17: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label18: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Memo2: TMemo;
    GroupBox2: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    GroupBox3: TGroupBox;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    ComboBox2: TComboBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    procedure SchliessenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure WeiterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  eigenesRohr: TeigenesRohr;
  merker:Integer;

const
  PI=3.141592654;

implementation

uses main, Eingabe_1, Tabellen, Hinweis_1;

{$R *.dfm}

// eigene Funktion 'PosExSelf()'
function PosExSelf(const SubStr:String; const S:String; Offset:Integer):Integer;
begin
  if Offset<=0 then
    begin
      Result:=0;
    end
    else
      begin
        Result:=Pos(Substr, Copy(S, Offset, Length(S)));
      end;

  if Result<>0 then
    begin
      Result:=Result+Offset-1;
    end;
end;

// eigene Funktion 'Runden()'
function Runden(Zahl:Real; Nachkommastellen:Integer):Real;
var
  x:Real;
begin
  x:=IntPower(10, Nachkommastellen);
  Zahl:=round(Zahl*x);
  result:=Zahl/x;
end;


// Berechnen-Button
procedure TeigenesRohr.BitBtn1Click(Sender: TObject);
var
  i,j,laufvariable,laufvariable_position:Integer;
  value,obereGrenze,Schrittweite:Real;
  value_pruefen,obereGrenze_pruefen,Faktor:Real;
  Dateiname,Zeile:String;
  Position_Trennzeichen_1,Position_Trennzeichen_2:Integer;
  dichte,dynamischeViskositaet,temperature:Real;
  kinematischeViskositaet,Reynoldzahl,Rohrreibungszahl,Druckverlust:Real;
  w,Massenstrom:Real;
  funktion,ersteAbleitung:Real;
  Rohrreibungszahl_alt,Rohrreibungszahl_neu:Real;
  epsilon,alpha:Real;
  x_value,y_value:Real;
  Anzahl:Integer;
  x_min,x_max,y_min,y_max,c_max,x,y:Real;
  o:Integer;
  k:Integer;
  y_Approximation,y_max_Messwert,y_max_manipuliert,Fehler,Fehler_neu:Real;
  Fehler_in_Prozent,Fehler_in_Prozent_neu:Real;
  max_y_Wert_Approximation_1,max_y_Wert_Tabellenwerte,max_x_Wert_Tabellenwerte:Real;
  u,v,u2,uv,Summe_u,Summe_v,Summe_u2,Summe_uv,delta,delta_c,delta_d:Real;
  Exponent,Faktor_a,Faktor_d,max_y_Wert_Approximation_2:Real;
  e,n:Integer;
  hydraulisch_rau,karman_nikuradse:Integer;
  x_Achse,y_Achse:Integer;
  Rohrreibungszahl_alt_Grenze,Rohrreibungszahl_neu_Grenze,Reynoldzahl_Grenze:Real;
  typ:Integer;
  Gesamtanzahl,intervall,Schrittweite_Int:Integer;
  untereGrenze,Reynoldzahl_unten,Reynoldzahl_oben:Real;
  nr:Integer;
  neuer_uebersetzter_Wert,c_neu,c_opt,c_opt_neu:Real;
  index_unten_von_x_nach,index_oben_von_x_vor:Integer;
  zwischenWert, x_n:Real;
  start_index, laminarerBereich:Integer;
  druckverlust_erster, druckverlust_letzter, massenstrom_erster:Real;
  nachkommastellen:Integer;
  c_min_SB1,uebersetzter_Wert_max_SB1:Real;
  merker_PositionScrollbar,merker_PositionScrollbar_neu:Integer;
  Rauhigkeit:Real;
begin
  // -> Diagramm und alle Felder (also Labels und Edits) in der main() zurücksetzen (=initialisieren)
  // -> und andere Initialisierungen
  Analyse.Edit1.Text:='0,0';
  Analyse.Edit2.Text:='0,0';
  Analyse.Edit5.Text:='0,0';
  Analyse.Edit6.Text:='0,0';
  Analyse.Edit7.Text:='0,0';
  Analyse.Edit8.Text:='0,0';
  Analyse.Label3.Caption:='-';
  Analyse.Label7.Caption:='-';
  Analyse.Label8.Caption:='-';
  Analyse.Label113.Caption:='-';
  Analyse.Label123.Caption:='-';
  Analyse.Label16.Caption:='-';
  //Analyse.Label17.Caption:='-';
  Analyse.Label21.Caption:='-';
  Analyse.Label22.Caption:='-';
  Analyse.Label23.Caption:='-';
  Analyse.Label25.Caption:='-';
  Analyse.Label28.Caption:='-';
  Analyse.Label47.Caption:='-';
  //Analyse.Label48.Caption:='-';
  Analyse.Label53.Caption:='-';
  Analyse.Label54.Caption:='-';
  Analyse.Label57.Caption:='-';
  Analyse.Label58.Caption:='-';
  Analyse.Label62.Caption:='-';
  Analyse.Label66.Caption:='-';
  Analyse.Label70.Caption:='-';
  Analyse.Label71.Caption:='-';
  Analyse.Label72.Caption:='-';
  Analyse.Label76.Caption:='-';
  Analyse.Label77.Caption:='-';
  Analyse.Label78.Caption:='-';
  Analyse.Label80.Caption:='-';
  Analyse.Label81.Caption:='-';
  Analyse.Label82.Caption:='-';
  Analyse.Label83.Caption:='-';
  Analyse.Label84.Caption:='-';
  Analyse.Label88.Caption:='-';
  Analyse.Label89.Caption:='-';
  Analyse.Label90.Caption:='-';
  Analyse.Label120.Caption:='-';
  Analyse.Label121.Caption:='-';
  Analyse.Label122.Caption:='-';
  Analyse.Label59.Caption:='0';
  Analyse.Label51.Caption:='Def. Rohr:';
  Analyse.Label55.Caption:='Def. Rohr:';
  Analyse.Label69.Caption:='Def. Rohr:';
  Analyse.Label75.Caption:='Def. Rohr:';

  for i:=0 to 9 do
    begin
      Analyse.Chart1.Series[i].Clear;
      Analyse.Chart1.Series[i].Title:='nicht verfügbar';
    end;

  Chart1.Series[22].Clear;
  Chart1.Series[23].Clear;
  Chart1.Series[22].Title:='Rohr';

  // -> Inhalte des Analyse.Stringgrid1 löschen
  for i:=0 to Analyse.StringGrid1.ColCount do
    begin
      Analyse.StringGrid1.Cols[i].Clear;
    end;

  // -> Inhalte des Stringgrid2 löschen
  for i:=0 to Stringgrid2.ColCount do
    begin
      Stringgrid2.Cols[i].Clear;
    end;

  Stringgrid2.Cells[0,0]:='Strömungsgeschwindigkeit [m/s]';
  Stringgrid2.Cells[1,0]:='Massenstrom [kg/h]';
  Stringgrid2.Cells[2,0]:='Druckverlust [mbar]';
  Stringgrid2.Cells[3,0]:='Reynoldszahl';
  Stringgrid2.Cells[4,0]:='Rohrreibungszahl (Lambda)';
  Stringgrid2.Cells[5,0]:='Gleichung';
  Stringgrid2.Cells[6,0]:='Oberfläche';

  Analyse.StringGrid1.Cells[0,0]:='Geschwindigkeit [m/s]';
  Analyse.StringGrid1.Cells[1,0]:='Massenstrom [kg/h]';
  Analyse.StringGrid1.Cells[2,0]:='Druckverlust [mbar]';
  Analyse.StringGrid1.Cells[3,0]:='';
  Analyse.StringGrid1.Cells[4,0]:='';

  //Image1.Picture.LoadFromFile(Analyse.Label112.Caption+'\Bilder & Quellen\Entwurg Moody 25_bearbeitet.bmp');
  Image1.Picture.LoadFromFile(Analyse.Label112.Caption+'\MoodyDiagramm.bmp');

  // -> Stoffwerte von Wasser in das versteckte StringGrid laden
  // ---> es muss nur das erste Mal durchgeführt werden!
  if merker=0 then
    begin
      // --> Stoffwerte von Wasser
      // -----> Variante 1
      {*Dateiname:=Analyse.Label112.Caption+'\Tabellen\Wasser_Stoffwerte.txt';
      Memo1.Lines.LoadFromFile(Dateiname);
      i:=1;
      Repeat
        Zeile:=Memo1.Lines[i-1];
        Position_Trennzeichen_1:=Pos(char(59), Zeile);
        Position_Trennzeichen_2:=PosExSelf(char(59), Zeile, Position_Trennzeichen_1+1);
        Stringgrid1.Cells[0,i]:=Copy(Zeile, 1, Position_Trennzeichen_1-1);
        Stringgrid1.Cells[1,i]:=Copy(Zeile, Position_Trennzeichen_1+1, 6);
        Stringgrid1.Cells[2,i]:=Copy(Zeile, Position_Trennzeichen_2+1, Length(Zeile)-Position_Trennzeichen_2+1);
        i:=i+1;
        Stringgrid1.RowCount:=i;
      until i>Memo1.Lines.Count;*}

      // -----> Variante 2
      for i:=1 to 20 do
        begin
          Stringgrid1.Cells[0,i]:=Messwerte.Stringgrid1.Cells[0,i];
          Stringgrid1.Cells[1,i]:=Messwerte.StringGrid1.Cells[1,i];
          Stringgrid1.Cells[2,i]:=Messwerte.StringGrid1.Cells[2,i];
        end;

      merker:=1;
    end;


  // -> Dichte und dynamische Viskosität aus Tabelle "Stoffwerte von Wasser" holen
  // -> außerdem mit den Werten die kinematische Viskosität berechnen
  case ComboBox2.ItemIndex of
    0:
      temperature:=0;
    1:
      temperature:=5;
    2:
      temperature:=10;
    3:
      temperature:=15;
    4:
      temperature:=20;
    5:
      temperature:=25;
    6:
      temperature:=30;
    7:
      temperature:=35;
    8:
      temperature:=40;
    9:
      temperature:=45;
    10:
      temperature:=50;
    11:
      temperature:=55;
    12:
      temperature:=60;
    13:
      temperature:=65;
    14:
      temperature:=70;
    15:
      temperature:=75;
    16:
      temperature:=80;
    17:
      temperature:=85;
    18:
      temperature:=90;
    19:
      temperature:=95
    end;

  for laufvariable:=1 to 20 do
    begin
      if temperature=StrToFloat(Stringgrid1.Cells[0,laufvariable]) then
        begin
          dichte:=StrToFloat(Stringgrid1.Cells[1,laufvariable]);
          dynamischeViskositaet:=StrToFloat(Stringgrid1.Cells[2,laufvariable]);
          kinematischeViskositaet:=dynamischeViskositaet/dichte;
          Label34.Caption:=FloatToStr(dichte)+' kg/m³';
          Label33.Caption:=FloatToStr(Runden(kinematischeViskositaet,9))+' m²/s';
          Label32.Caption:=FloatToStr(Runden(dynamischeViskositaet,8))+' kg/(m*s)';
          break;
        end;
    end;

  j:=1;

  // es darf nur gerechnet und gezeichnet werden, wenn die untere Grenze größer 0 und der Innendurchmesser nicht zu groß ist
  if (StrToFloat(Label8.Caption)>0.0) and (StrToFloat(Edit2.Text)<=1000) then
    begin

      for laufvariable:=0 to 30 do
        begin
          i:=1;

          untereGrenze:=StrToFloat(Label8.Caption);
          obereGrenze:=StrToFloat(Label13.Caption);

          // ---> Reduzierung der Werte
          //      (Reduzierung auf 31 "Messwerte")
          zwischenWert:=log10(obereGrenze/untereGrenze);
          value:=untereGrenze*Power(10, ((zwischenWert/30)*laufvariable));

          // -> Massenstrom ist gegeben
          if (RadioButton1.Checked=True) and (RadioButton2.Checked=False) and (RadioButton3.Checked=False) then
            begin
              Massenstrom:=value;

              // -> Strömungsgeschwindigkeit berechnen
              w:=((value/3600)*4)/(dichte*PI*(StrToFloat(Edit2.Text)/1000)*(StrToFloat(Edit2.Text)/1000));

              // -> Re-Zahl berechnen
              Reynoldzahl:=(w*(StrToFloat(Edit2.Text)/1000))/kinematischeViskositaet;
            end;

          // -> Strömungsgeschwindigkeit ist gegeben
          if (RadioButton1.Checked=False) and (RadioButton2.Checked=True) and (RadioButton3.Checked=False) then
            begin
              w:=value;

              // -> Massenstrom berechnen
              Massenstrom:=(dichte*PI*StrToFloat(Edit2.Text)*StrToFloat(Edit2.Text)*value)/4;

              // -> Re-Zahl berechnen
              Reynoldzahl:=(w*(StrToFloat(Edit2.Text)/1000))/kinematischeViskositaet;
            end;

          // -> Re-Zahl ist gegeben
          if (RadioButton1.Checked=False) and (RadioButton2.Checked=False) and (RadioButton3.Checked=True) then
            begin
              Reynoldzahl:=value;

              // -> Strömungsgeschwindigkeit berechnen
              w:=(Reynoldzahl*kinematischeViskositaet)/(StrToFloat(Edit2.Text)/1000);

              // -> Massenstrom berechnen
              Massenstrom:=(w*dichte*PI*StrToFloat(Edit2.Text)*StrToFloat(Edit2.Text))/4;
            end;


          Stringgrid2.Cells[3,j]:=FloatToStr(Reynoldzahl);
          Stringgrid2.Cells[0,j]:=FloatToStr(w);
          Stringgrid2.Cells[1,j]:=FloatToStr(Massenstrom);

          // -> wenn die Rauhigkeit gleich null ist, dann ist es hydraulisch glatt
          // -> wenn die Rauhigkeit ungleich null ist, dann ist es auf jeden Fall hydraulisch rau
          if StrToFloat(Edit5.Text)<>0.0 then
            begin
              hydraulisch_rau:=1;

              {*// Vermeidung des "numerischen Effekts"
              // (wenn die Rohrrauhigkeit 0 oder 0,00000000001 ist, dann verschiebt sich die Kzrve mit den ausgerechneten Messwerten)
              // -> theoretische Rohrrauhigkeit = 0
              // -> praktische Rohrrauhigkeit = 0,00000000001
              //
              // (Eingabe der theoretischen Rohrrauhigkeit)
              if (StrToFloat(Edit5.Text)=0) then
                begin
                  Rauhigkeit:=0.000000000000000000001
                end
                else
                  begin
                    // (Eingabe der praktischen Rohrrauhigkeit)
                    Rauhigkeit:=StrToFloat(Edit5.Text);
                  end;*}
              Rauhigkeit:=StrToFloat(Edit5.Text);

              // -> Berechnung von alpha=Rauhigkeit/Durchmesser
              alpha:=Rauhigkeit/StrToFloat(Edit2.Text);
              //alpha:=StrToFloat(Edit5.Text)/StrToFloat(Edit2.Text);


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
            end
            else
              begin
                if StrToFloat(Edit5.Text)=0 then
                  begin
                    hydraulisch_rau:=0;
                  end;
              end;

          // -> Rohrreibungszahl berechnen
          // ---> Hagen-Poiseuille
          //      -> laminare Strömung
          if (Reynoldzahl<2320) then
            begin
              Rohrreibungszahl:=64/Reynoldzahl;
              hydraulisch_rau:=0;
              Stringgrid2.Cells[5,j]:='Hagen-Poiseuille';
              //Stringgrid2.Cells[6,j]:='hydraulisch glatt';
              Stringgrid2.Cells[6,j]:='';
            end;

          // ---> Blasius
          //      -> hydraulisch glatt + turbulente Strömung
          if (hydraulisch_rau=0) and (Reynoldzahl>2320) then
            begin
              if (Reynoldzahl>2320) and (Reynoldzahl<100000) then
                begin
                  Rohrreibungszahl:=0.3164*Power(Reynoldzahl, -0.25);
                  hydraulisch_rau:=0;
                  Stringgrid2.Cells[5,j]:='Blasius';
                  Stringgrid2.Cells[6,j]:='hydraulisch glatt';
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
              Stringgrid2.Cells[5,j]:='Prandtl';
              Stringgrid2.Cells[6,j]:='hydraulisch glatt';
            end;

          // ---> Colebrook
          //      -> hydraulisch rau (eigentlich: Übergangsbereich) + turbulente Strömung
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
              Stringgrid2.Cells[5,j]:='Colebrook';
              //Stringgrid2.Cells[6,j]:='Hydraulisch rau';
              //Stringgrid2.Cells[6,j]:='';
              Stringgrid2.Cells[6,j]:='(Übergangsbereich)';
            end;

          // ---> Karman-Nikuradse
          //      -> hydraulisch rau + turbulente Strömung
          if (Reynoldzahl>2320) and (hydraulisch_rau=1) and (karman_nikuradse=1) then
            begin
              Rohrreibungszahl:=1/((1.74-2*log10(2*alpha))*(1.74-2*log10(2*alpha)));
              Stringgrid2.Cells[5,j]:='Karman-Nikuradse';
              Stringgrid2.Cells[6,j]:='hydraulisch rau';
            end;

          Stringgrid2.Cells[4,j]:=FloatToStr(Runden(Rohrreibungszahl,5));

          // -> Werte in das Moody-Diagramm eintragen
          // ***** vorgedrucktes Moody-Diagramm *****
          // -----> mit Canvas.MovoTo(x,y) wird der Startpunkt festgelegt
          // -----> mit Canvas.LineTo(x,y) wird vom Startpunkt ausgehend eine Linie gezeichnet
          //
          // -----> als x- und y-Koordinaten werden die Abmessungen des Bilds übergeben
          //        (z.B. 697x590, aber das Bild 'Moody-Diagramm_1.bmp' hat eigentlich die Abmessung 697x484)
          //        (neues Moody-Diagramm 'Entwurg Moody 25_bearbeitet_4.jpg' mit der Abmessung 698x484)
          // --> Punkt einzeichnen
          if Reynoldzahl<2320 then
            begin
              //Image1.Canvas.Pen.Color:=clred;
              //Image1.Canvas.Pen.Width:=5;
              x_Achse:=round((ln(Reynoldzahl/1000)/ln(100000000/1000))*697);
              //x_Achse:=round((Reynoldzahl*power(10, laufvariable*0.1))*697);
              y_Achse:=round(590-(ln(Rohrreibungszahl/0.006)/ln(0.1/0.006))*590);
              //y_Achse:=round(590-(Rohrreibungszahl*power(10, laufvariable*0.1))*590);
              //Image1.Canvas.MoveTo(x_Achse,y_Achse);
              //Image1.Canvas.LineTo(x_Achse,y_Achse);
              StringGrid1.Cells[5,j]:=IntToStr(x_Achse);
              StringGrid1.Cells[6,j]:=IntToStr(y_Achse);

              // ***** selbst-gezeichnetes Moody-Diagramm *****
              Chart1.Series[23].AddXY(Reynoldzahl, Rohrreibungszahl);
            end
            else
              begin
                if Reynoldzahl>=2320 then
                  begin
                    //Image1.Canvas.Pen.Color:=clred;
                    //age1.Canvas.Pen.Width:=5;
                    x_Achse:=round((ln(Reynoldzahl/1000)/ln(100000000/1000))*697);
                    y_Achse:=round(590-(ln(Rohrreibungszahl/0.006)/ln(0.1/0.006))*590);
                    //Image1.Canvas.MoveTo(x_Achse,y_Achse);
                    //Image1.Canvas.LineTo(x_Achse,y_Achse);
                    StringGrid1.Cells[5,j]:=IntToStr(x_Achse);
                    StringGrid1.Cells[6,j]:=IntToStr(y_Achse);

                    // ***** selbst-gezeichnetes Moody-Diagramm *****
                    Chart1.Series[22].AddXY(Reynoldzahl,Rohrreibungszahl);
                  end;
              end;

          // -> Druckverlust berechnen
          w:=StrToFloat(StringGrid2.Cells[0,j]);
          Druckverlust:=(Rohrreibungszahl*StrToFloat(Edit3.Text)*dichte*w*w)/((StrToFloat(Edit2.Text)/1000)*2);
          Druckverlust:=(Druckverlust/100000)*1000;
          StringGrid2.Cells[2,j]:=FloatToStr(Druckverlust);
          Analyse.StringGrid1.Cells[2,j]:=FloatToStr(Druckverlust);

          // -> den ersten und letzten Wert merken
          if laufvariable=0 then
            begin
              massenstrom_erster:=Massenstrom;
              druckverlust_erster:=Druckverlust;
            end;
          if laufvariable=30 then
            begin
              druckverlust_letzter:=Druckverlust;
            end;

          // -> Strömungsgeschwindigkeit und Massenstrom in Analyse.Stringgrid1 eintragen
          Analyse.StringGrid1.Cells[0,j]:=StringGrid2.Cells[0,j];
          Analyse.StringGrid1.Cells[1,j]:=StringGrid2.Cells[1,j];

          j:=j+1;
          laufvariable_position:=laufvariable_position+1;
        end;

      Image1.Canvas.Pen.Color:=clblue;
      Image1.Canvas.Pen.Width:=5;

      // -> Punkte der Rohre miteinander verbinden
      //
      // ---> laminarer Teil
      for i:=1 to 30 do
        begin
          x_Achse:=StrToInt(StringGrid1.Cells[5,i]);
          y_Achse:=StrToInt(StringGrid1.Cells[6,i]);
          Image1.Canvas.MoveTo(x_Achse,y_Achse);

          if(i<30) then
            begin
              // es soll verhindert werden, dass über Re_kritsch eine Linie gezeichnet wird
              if (StrToFloat(Stringgrid2.Cells[3,i+1])<2320) then
                begin
                  x_Achse:=StrToInt(StringGrid1.Cells[5,i+1]);
                  y_Achse:=StrToInt(StringGrid1.Cells[6,i+1]);
                  Image1.Canvas.LineTo(x_Achse,y_Achse);
                end;
            end;
        end;

      // ---> turbulenter Teil
      for i:=1 to 30 do
        begin
          if (StrToFloat(StringGrid2.Cells[3,i])>2320) then
            begin
              x_Achse:=StrToInt(StringGrid1.Cells[5,i]);
              y_Achse:=StrToInt(StringGrid1.Cells[6,i]);
              Image1.Canvas.MoveTo(x_Achse,y_Achse);

              if(i<30) then
                begin
                  // es soll verhindert werden, dass über Re_kritsch eine Linie gezeichnet wird
                  if (StrToFloat(Stringgrid2.Cells[3,i+1])>2320) then
                    begin
                      x_Achse:=StrToInt(StringGrid1.Cells[5,i+1]);
                      y_Achse:=StrToInt(StringGrid1.Cells[6,i+1]);
                      Image1.Canvas.LineTo(x_Achse,y_Achse);
                    end;
                end;
            end;
        end;

      // --> Grenzkurve einzeichnen
      if (StrToFloat(Edit5.Text)>=0) then
        begin
          Reynoldzahl_Grenze:=2320;

          for i:=1 to 25 do
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
              Image1.Canvas.Pen.Color:=clgreen;
              Image1.Canvas.Pen.Width:=2;
              x_Achse:=round((ln(Reynoldzahl_Grenze/1000)/ln(100000000/1000))*697);
              y_Achse:=round(590-(ln(Rohrreibungszahl_neu_Grenze/0.006)/ln(0.1/0.006))*590);
              Image1.Canvas.MoveTo(x_Achse,y_Achse);
              Image1.Canvas.LineTo(x_Achse,y_Achse);
              Stringgrid3.Cells[24,i]:=IntToStr(x_Achse);
              Stringgrid3.Cells[25,i]:=IntToStr(y_Achse);

              // -> Werte in Tabelle schreiben
              Stringgrid1.Cells[3,i]:=FloatToStr(Reynoldzahl_Grenze);
              Stringgrid1.Cells[4,i]:=FloatToStr(Rohrreibungszahl_neu_Grenze);

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
        end;

      // -> Punkte der Grenzkurve miteinander verbinden
      for i:=1 to 25 do
        begin
          x_Achse:=StrToInt(Stringgrid3.Cells[24,i]);
          y_Achse:=StrToInt(Stringgrid3.Cells[25,i]);
          Image1.Canvas.MoveTo(x_Achse,y_Achse);

          // (Unterbrechung einbauen, damit der Text nicht übermalt wird)
          {*if (i<=19) or (i>20) then
            begin
              Image1.Canvas.MoveTo(x_Achse,y_Achse);

              if(i<23) then
                begin
                  x_Achse:=StrToInt(Stringgrid3.Cells[24,i+1]);
                  y_Achse:=StrToInt(Stringgrid3.Cells[25,i+1]);
                end;

              Image1.Canvas.LineTo(x_Achse,y_Achse);
            end;*}

          // keine Unterbrechung
          if (i<23) then
            begin
              x_Achse:=StrToInt(Stringgrid3.Cells[24,i+1]);
              y_Achse:=StrToInt(Stringgrid3.Cells[25,i+1]);
              Image1.Canvas.LineTo(x_Achse,y_Achse);
            end;
        end;

      // eine Linie zur Kennzeichnung von Re_kritisch=2320 einzeichnen
      // -> in das vorgedruckte Moody-Diagramm
      // (die Linie hat Unterbrechungen, damit die im Diagramm stehenden Beschriftungen gut lesbar sind)
      Image1.Canvas.Pen.Color:=clyellow;
      Image1.Canvas.Pen.Width:=2;
      // a)
      x_Achse:=round((ln(2320/1000)/ln(100000000/1000))*697);
      y_Achse:=round(590-(ln(0.01/0.006)/ln(0.1/0.006))*590);
      Image1.Canvas.MoveTo(x_Achse, y_Achse);
      y_Achse:=round(590-(ln(0.01105/0.006)/ln(0.1/0.006))*590);
      Image1.Canvas.LineTo(x_Achse, y_Achse);
      // b)
      y_Achse:=round(590-(ln(0.012/0.006)/ln(0.1/0.006))*590);
      Image1.Canvas.MoveTo(x_Achse, y_Achse);
      y_Achse:=round(590-(ln(0.09/0.006)/ln(0.1/0.006))*590);
      Image1.Canvas.LineTo(x_Achse, y_Achse);

      // -> in das selbst-gezeichnete Moody-Diagramm
      Chart1.Series[24].AddXY(2320, 0.005);
      Chart1.Series[24].AddXY(2320, 0.5);


      // -> Anzahl der Werte, die im Analyse.Stringgrid1 stehen, merken
      //    (ACHTUNG: Es sind insgesamt 31 Werte, nicht nur 30 Werte!!!)
      Anzahl:=laufvariable_position-1;
      Label21.Caption:=IntToStr(Anzahl+1);
      Anzahl:=Anzahl+1;

      // -> Parameter in das Fenster 'Analyse' übertragen
      Analyse.Label98.Caption:=Edit2.Text+' mm';
      //Analyse.Label98.Caption:=Edit2.Text;
      Analyse.Label99.Caption:=Edit3.Text+' m';
      //Analyse.Label99.Caption:=Edit3.Text;
      Analyse.Label105.Caption:=Edit5.Text+' mm';
      //Analyse.Label105.Caption:=Edit5.Text;
      Analyse.Label111.Caption:=FloatToStr(temperature)+' °C';
      //Analyse.Label111.Caption:=FloatToStr(temperature);

      // ---> Massenstrom ist ausgewählt
      if (RadioButton1.Checked=True) and (RadioButton2.Checked=False) and (RadioButton3.Checked=False) then
        begin
          Analyse.Label108.Caption:=Label8.Caption+' kg/h';
          Analyse.Label109.Caption:=Label13.Caption+' kg/h';
          {*Analyse.Label108.Caption:=Label8.Caption;
          Analyse.Label109.Caption:=Label13.Caption;
          Analyse.Label30.Caption:='kg/h';
          Analyse.Label31.Caption:='kg/h';*}
        end;

      // ---> Strömungsgeschwindigkeit ist ausgewählt
      if (RadioButton1.Checked=False) and (RadioButton2.Checked=True) and (RadioButton3.Checked=False) then
        begin
          Analyse.Label108.Caption:=Label8.Caption+' m/s';
          Analyse.Label109.Caption:=Label13.Caption+' m/s';
          {*Analyse.Label108.Caption:=Label8.Caption;
          Analyse.Label109.Caption:=Label13.Caption;
          Analyse.Label30.Caption:='m/s';
          Analyse.Label31.Caption:='m/s';*}
        end;

      // ---> Reynoldszahl ist ausgewählt
      if (RadioButton1.Checked=False) and (RadioButton2.Checked=False) and (RadioButton3.Checked=True) then
        begin
          Analyse.Label108.Caption:=Label8.Caption;
          Analyse.Label109.Caption:=Label13.Caption;
          {*Analyse.Label108.Caption:=Label8.Caption;
          Analyse.Label109.Caption:=Label13.Caption;
          Analyse.Label30.Caption:='';
          Analyse.Label31.Caption:='';*}
        end;

      

      // -> Druckverlust in Abhängigkeit vom Massenstrom zeichnen
      Analyse.Chart1.Series[0].Title:='definiertes Rohr';
      for i:=1 to Anzahl do
        begin
          x_value:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
          y_value:=StrToFloat(Analyse.StringGrid1.Cells[2,i]);
          Analyse.Chart1.Series[0].AddXY(x_value, y_value);

          // (den ersten und letzten Wert merken)
          if (i=1) then
            begin
              Label23.Caption:=FloatToStr(x_value);
            end
            else
              begin
                if (i=Anzahl) then
                  begin
                    Label24.Caption:=FloatToStr(x_value);
                  end;
              end;
        end;

      // eine Linie zeichnen, damit sich die x-Achse nicht mehr ändert
      Analyse.Chart1.Series[9].AddXY(StrToFloat(Label23.Caption),0);
      Analyse.Chart1.Series[9].AddXY(StrToFloat(Label24.Caption),0);

      // Parabel manipulieren
      //      !!! ES DARF NICHT IM LAMINAREN BEREICH APPROXIMIERT WERDEN !!!
      //          (dies gilt für Approximation 1 und Approximation 2)
      //
      // prüfen, wann man im turbulenten Bereich ist
      // (es wird der Index gesucht, der erst im turbulenten Bereich liegt)
      for i:=1 to Anzahl do
        begin
          if Stringgrid2.Cells[5,i]<>'Hagen-Poiseuille' then
            begin
              start_index:=i;
              eigenesRohr.Label17.Caption:=IntToStr(i);
              laminarerBereich:=0;
              break;
            end
            else
              begin
                laminarerBereich:=1;
              end;
        end;

      // (wenn bei Index=1 gestartet wird, dann wird auch im laminaren Bereich approximiert, was jedoch unsinnig ist!)
      //start_index:=1;

      // es muss geprüft werden, ob das definierte Rohr vollständig im laminaren Bereich liegt
      if (laminarerBereich=1) then
        begin
          Label18.Caption:='1';
          Analyse.Chart1.Series[7].AddXY(massenstrom_erster,druckverlust_erster);
          Analyse.Chart1.Series[7].AddXY(massenstrom_erster,druckverlust_letzter);
          Analyse.CheckBox1.Caption:='definiertes Rohr';
          Analyse.CheckBox1.Checked:=True;
          Analyse.CheckBox2.Caption:='nicht verfügbar';
          Analyse.CheckBox2.Checked:=False;
          Analyse.CheckBox2.Enabled:=False;
          Analyse.CheckBox4.Caption:='nicht verfügbar';
          Analyse.CheckBox4.Checked:=False;
          Analyse.CheckBox4.Enabled:=False;
        end
        else
          begin
            if (laminarerBereich=0) then
              begin
                // Approximation 1
                Analyse.Chart1.Series[1].Title:='Approximation 1';
                x_min:=StrToFloat(Analyse.StringGrid1.Cells[1,start_index]);
                x_max:=StrToFloat(Analyse.StringGrid1.Cells[1,Anzahl]);
                y_min:=StrToFloat(Analyse.StringGrid1.Cells[2,start_index]);
                y_max:=StrToFloat(Analyse.StringGrid1.Cells[2,Anzahl]);
                c_max:=y_min/(x_min*x_min);
                Label19.Caption:=FloatToStr(y_max/(x_max*x_max));
                c_min_SB1:=StrToFloat(Label19.Caption);
                Label20.Caption:=FloatToStr(c_max-c_min_SB1);
                Analyse.Label6.Caption:=FloatToStr(c_min_SB1);
                //Analyse.Label6.Caption:=FloatToStr(Runden(c_min_SB1, 15));
                Analyse.Label25.Caption:=FloatToStr(Runden(c_min_SB1, 15))+' mbar/((kg/h)²)';
                //Analyse.Label25.Caption:=FloatToStr(Runden(c_min_SB1,15));

                for i:=start_index to Anzahl do
                  begin
                    x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                    y:=StrToFloat(Label19.Caption)*(x*x);
                    Analyse.Chart1.Series[1].AddXY(x, y);

                    // (den letzten Wert merken)
                    if (i=Anzahl) then
                      begin
                        Label22.Caption:=FloatToStr(y);
                      end;
                  end;

                // eine Linie zeichnen, damit sich die y-Achse nicht mehr ändert
                Analyse.Chart1.Series[8].AddXY(massenstrom_erster,0);
                Analyse.Chart1.Series[8].AddXY(massenstrom_erster,StrToFloat(Label22.Caption));

                // y-Kriterium
                k:=start_index;
                for i:=start_index to Anzahl do
                  begin
                    if StrToFloat(Analyse.StringGrid1.Cells[2,i])=0.0 then
                      begin

                      end
                      else
                        begin
                          // y-Wert der Kurve Approximation_1 bilden und den absoluten und relativen Fehler berechnen
                          y_Approximation:=StrToFloat(Label19.Caption)*(StrToFloat(Analyse.StringGrid1.Cells[1,i])*StrToFloat(Analyse.StringGrid1.Cells[1,i]));
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
                          if i=start_index then
                            begin
                              Fehler_neu:=Fehler;
                              Fehler_in_Prozent_neu:=Fehler_in_Prozent;
                              max_y_Wert_Approximation_1:=y_Approximation;
                              max_y_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[2,i]);
                              max_x_Wert_Tabellenwerte:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                            end
                            else
                              begin
                                if i=k then
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
                          k:=k+1;

                          Analyse.StringGrid3.Cells[8,i]:=FloatToStr(Fehler);
                          Analyse.StringGrid3.Cells[9,i]:=FloatToStr(Fehler_neu);
                        end;
                  end;

                // -> max. Fehler als Zahl und im Diagramm anzeigen
                Analyse.Label47.Caption:=FloatToStr(Runden(Fehler_neu, 4))+' mbar bzw. '+FloatToStr(Runden(Fehler_in_Prozent_neu, 4))+' %';
                //Analyse.Label47.Caption:=FloatToStr(Runden(Fehler_neu, 4));
                //Analyse.Label48.Caption:=FloatToStr(Runden(Fehler_in_Prozent_neu, 4));
                Analyse.Chart1.Series[2].Title:='max. Abweichung Appr. 1';
                Analyse.Chart1.Series[2].AddXY(max_x_Wert_Tabellenwerte, max_y_Wert_Tabellenwerte);
                Analyse.Chart1.Series[2].AddXY(max_x_Wert_Tabellenwerte, max_y_Wert_Approximation_1);
                Label25.Caption:=FloatToStr(max_x_Wert_Tabellenwerte);
                Label26.Caption:=FloatToStr(max_y_Wert_Tabellenwerte);
                Label27.Caption:=FloatToStr(max_y_Wert_Approximation_1);
                Label28.Caption:='1';
                Analyse.Label17.Caption:='1';
                Analyse.Label11.Caption:='1';

                // Approximation 2 (Ausgleichskurve Potenzfunktion)
                // ---> es wird die optimale Potenzfunktion ermittelt
                // y = a * x^b <=> ln(y) = ln(a) + b * ln(x)
                // -> Spalte 1: u = ln(x) = ln(m')
                // -> Spalte 2: v = ln(y) = ln(delta_p)
                for i:=start_index to Anzahl do
                  begin
                    Analyse.StringGrid3.Cells[0,i]:=FloatToStr(ln(StrToFloat(Analyse.StringGrid1.Cells[1,i])));
                    Analyse.StringGrid3.Cells[1,i]:=FloatToStr(ln(StrToFloat(Analyse.StringGrid1.Cells[2,i])));
                    Analyse.StringGrid3.RowCount:=i+1;
                  end;

                // -> Spalte 3: u2
                // -> Spalte 4: uv
                for i:=start_index to Anzahl do
                  begin
                    Analyse.StringGrid3.Cells[2,i]:=FloatToStr(StrToFloat(Analyse.StringGrid3.Cells[0,i])*StrToFloat(Analyse.StringGrid3.Cells[0,i]));
                    Analyse.StringGrid3.Cells[3,i]:=FloatToStr(StrToFloat(Analyse.StringGrid3.Cells[0,i])*StrToFloat(Analyse.StringGrid3.Cells[1,i]));
                    Analyse.StringGrid3.RowCount:=i+1;
                  end;

                // -> Summen von u, v, u2, uv
                e:=start_index;
                for i:=start_index to Anzahl do
                  begin
                    u:=StrToFloat(Analyse.StringGrid3.Cells[0,i]);
                    v:=StrToFloat(Analyse.StringGrid3.Cells[1,i]);
                    u2:=StrToFloat(Analyse.StringGrid3.Cells[2,i]);
                    uv:=StrToFloat(Analyse.StringGrid3.Cells[3,i]);

                    if i=start_index then
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

                // -> Exponent
                Exponent:=delta_c/delta;
                //Exponent:=Runden(delta_c/delta, 10);

                // -> Faktor
                Faktor_d:=delta_d/delta;
                Faktor_a:=Exp(Faktor_d);
                //Faktor_a:=Runden(Exp(Faktor_d), 10);

                // ---> nur Zeichnen, wenn die 2. Approximationskurve keine Wurzelfunktion ist
                if Exponent>1 then
                  begin
                    //Analyse.Label63.Visible:=False;
                    Analyse.Label30.Visible:=False;
                    // -> Ausgabe des Exponenten und des Faktors
                    Analyse.Label12.Caption:=FloatToStr(Exponent);
                    Analyse.Label22.Caption:=FloatToStr(Runden(Exponent, 8));
                    Analyse.Label14.Caption:=FloatToStr(Faktor_a);
                    Analyse.Label21.Caption:=FloatToStr(Runden(Faktor_a, 15))+' mbar';
                    //Analyse.Label21.Caption:=FloatToStr(Faktor_a);

                    // -> Ausgleichs-Potenzfunktion plotten
                    for i:=start_index to Anzahl do
                      begin
                        x:=StrToFloat(Analyse.StringGrid1.Cells[1,i]);
                        y:=Faktor_a*Power(x, Exponent);
                        Analyse.Chart1.Series[3].AddXY(x, y);

                        // (den letzten Wert merken)
                        if (i=Anzahl) then
                          begin
                            Label22.Caption:=FloatToStr(y);
                          end;
                      end;

                      // eine Linie zeichnen, damit sich die y-Achse nicht mehr ändert
                      Analyse.Chart1.Series[8].AddXY(massenstrom_erster,0);
                      Analyse.Chart1.Series[8].AddXY(massenstrom_erster,StrToFloat(Label22.Caption));

                      // max. Abweichung zwischen Tabellenwerte und 2. Approximation
                      // -> Anwendung des y-Kriteriums
                      j:=start_index;
                      for i:=start_index to Anzahl do
                        begin
                          // y-Wert der Kurve Approximation 2 bestimmen und den absoluten und relativen Fehler berechnen
                          y_Approximation:=StrToFloat(Analyse.Label14.Caption)*Power(StrToFloat(Analyse.StringGrid1.Cells[1,i]), StrToFloat(Analyse.Label12.Caption));
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
                          if i=start_index then
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
                      end
                      else
                        begin
                          // (durch das gewählte Verfahren, um eine Approximationskurve mit einem Exponenten ungleich 2 zu zeichnen, ergibt sich eine komische Funktion, die nicht brauchbar ist)
                          //Analyse.Label63.Visible:=True;
                          Analyse.Label30.Visible:=True;
                  end;


                  // automatisches Suchen nach Optimum bzgl. Approximation 1
                  nr:=1;
                  // Bereich -50 ... 50 => 100; Bereich -100 ... 100 => 200; Bereich 0 ... 100 => 100
                  for i:=-50 to 50 do
                    begin
                      neuer_uebersetzter_Wert:=(StrToFloat(Label20.Caption)/100)*i;
                      c_neu:=StrToFloat(Label19.Caption)+neuer_uebersetzter_Wert;

                      // (wenn der start_index=1 ist, dann wird nicht berücksichtigt, dass im laminaren Bereich nicht approximiert werden darf!)
                      x:=start_index;
                      for j:=start_index to Anzahl do
                        begin
                          // y-Wert der Kurve Approximation_1 bilden und den absoluten und relativen Fehler berechnen
                          y_Approximation:=c_neu*(StrToFloat(Analyse.StringGrid1.Cells[1,j])*StrToFloat(Analyse.StringGrid1.Cells[1,j]));
                          Fehler_in_Prozent:=100*((StrToFloat(Analyse.StringGrid1.Cells[2,j])-y_Approximation)/StrToFloat(Analyse.StringGrid1.Cells[2,j]));
                          Fehler:=StrToFloat(Analyse.StringGrid1.Cells[2,j])-y_Approximation;

                          // Betrag bilden
                          if Fehler<0 then
                            begin
                              Fehler:=Fehler*-1;
                              Fehler_in_Prozent:=Fehler_in_Prozent*-1;
                            end;

                          // den größten Wert suchen
                          // (wenn der start_index=1 ist, dann wird nicht berücksichtigt, dass im laminaren Bereich nicht approximiert werden darf!)
                          if j=start_index then
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
                      Analyse.StringGrid6.Cells[5,nr]:=FloatToStr(Fehler_neu);
                      Analyse.StringGrid6.Cells[6,nr]:=FloatToStr(Fehler_in_Prozent_neu);
                      Analyse.StringGrid6.Cells[7,nr]:=FloatToStr(c_opt);
                      Analyse.StringGrid6.Cells[14,nr]:=IntToStr(merker_PositionScrollbar);
                      nr:=nr+1;
                    end;

                  // -> den kleinsten Wert (= Optimum) suchen
                  //    (es wird der kleinste absolute Fehler gesucht)
                  //    (es wird von allen gesammelten Werten der kleinste Wert gesucht!)
                  o:=1;
                  for i:=1 to 100 do
                    begin
                      Fehler:=StrToFloat(Analyse.StringGrid6.Cells[5,i]);
                      Fehler_in_Prozent:=StrToFloat(Analyse.StringGrid6.Cells[6,i]);
                      c_opt:=StrToFloat(Analyse.StringGrid6.Cells[7,i]);
                      merker_PositionScrollbar:=StrToInt(Analyse.StringGrid6.Cells[14,i]);

                      if i=1 then
                        begin
                          Fehler_neu:=Fehler;
                          Fehler_in_Prozent_neu:=Fehler_in_Prozent;
                          c_opt_neu:=c_opt;
                          merker_PositionScrollbar_neu:=merker_PositionScrollbar;
                        end
                        else
                          begin
                            if i=o then
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
                      o:=o+1;
                    end;
                  Analyse.Label16.Caption:=FloatToStr(Runden(Fehler_neu,4))+' mbar bzw. '+FloatToStr(Runden(Fehler_in_Prozent_neu,4))+' %';
                  //Analyse.Label16.Caption:=FloatToStr(Runden(Fehler_neu,4));
                  //Analyse.Label17.Caption:=FloatToStr(Runden(Fehler_in_Prozent_neu,4));
                  //Analyse.Label28.Caption:=FloatToStr(Runden(c_opt_neu, 10))+' mbar/((kg/h)²)';
                  Analyse.Label15.Caption:=FloatToStr(c_opt_neu);
                  //Analyse.Label15.Caption:=FloatToStr(Runden(c_opt_neu, 15));
                  Analyse.Label28.Caption:=FloatToStr(Runden(c_opt_neu, 15))+' mbar/((kg/h)²)';
                  //Analyse.Label28.Caption:=FloatToStr(Runden(c_opt_neu,15));

                  selection:=2;
                  
                  // (der Analyse.ScrollBar1 soll auf das Optimum gestellt werden)
                  Analyse.ScrollBar1.Position:=merker_PositionScrollbar_neu;
                  Analyse.Label65.Caption:=IntToStr(merker_PositionScrollbar_neu);
                  Analyse.Label87.Caption:='1';


                  // sonstiges
                  aenderung_Auswahl_NormRohr:=0;
                  Analyse.Label61.Caption:='1';
                  Label18.Caption:='0';
                  Label16.Caption:='1';
                  Analyse.ScrollBar1.Max:=100;
                  Analyse.ScrollBar1.Min:=-100;
                  Analyse.ScrollBar1.LargeChange:=1;
                  Analyse.ScrollBar1.SmallChange:=1;
                  Analyse.ScrollBar1.Position:=0;
                  Kontrolle_ZeichnenButton:=1;
                  Analyse.StringGrid1.RowCount:=32;
                  Label11.Caption:='1';
                  Analyse.CheckBox1.Caption:='definiertes Rohr';
                  Analyse.CheckBox1.Checked:=True;
                  Analyse.CheckBox2.Caption:='Approximation 1';
                  Analyse.CheckBox2.Checked:=True;
                  Analyse.CheckBox2.Enabled:=True;
                  Analyse.Label47.Caption:=FloatToStr(Runden(Fehler_neu, 4))+' mbar bzw. '+FloatToStr(Runden(Fehler_in_Prozent_neu, 4))+' %';
                  //Analyse.Label47.Caption:=FloatToStr(Runden(Fehler_neu, 4));
                  //Analyse.Label48.Caption:=FloatToStr(Runden(Fehler_in_Prozent_neu, 4));

                  // (prüfen, ob es wirklich eine sinnvolle quadratische Funktion ist)
                  if Exponent>1 then
                    begin
                      Analyse.CheckBox4.Caption:='Approximation 2';
                      Analyse.CheckBox4.Checked:=True;
                      Analyse.CheckBox4.Enabled:=True;
                    end
                    else
                      begin
                        Analyse.CheckBox4.Caption:='nicht verfügbar';
                        Analyse.CheckBox4.Checked:=False;
                        Analyse.CheckBox4.Enabled:=False;
                      end;
                      
              end;
          end;

      Analyse.Label11.Caption:='0';

      // Runden
      for i:=1 to 31 do
        begin
          Stringgrid2.Cells[0,i]:=FloatToStr(Runden(StrToFloat(Stringgrid2.Cells[0,i]),4));
          Stringgrid2.Cells[1,i]:=FloatToStr(Runden(StrToFloat(Stringgrid2.Cells[1,i]),4));

          // Länge Nachkommastellen (4 oder 6?)
          if (Length(Stringgrid2.Cells[2,i])<=4) then
            begin
              nachkommastellen:=4;
            end
            else
              begin
                if (Length(Stringgrid2.Cells[2,i])>4) then
                  begin
                    nachkommastellen:=6;
                  end;
              end;

          //
          if i<=31 then
            begin
              Stringgrid2.Cells[2,i]:=FloatToStr(Runden(StrToFloat(Stringgrid2.Cells[2,i]),nachkommastellen));
            end;

          Stringgrid2.Cells[3,i]:=FloatToStr(Runden(StrToFloat(Stringgrid2.Cells[3,i]),4));
          Analyse.StringGrid1.Cells[0,i]:=FloatToStr(Runden(StrToFloat(Analyse.StringGrid1.Cells[0,i]),4));
          Analyse.StringGrid1.Cells[1,i]:=FloatToStr(Runden(StrToFloat(Analyse.StringGrid1.Cells[1,i]),4));

          // Länge Nachkommastellen (4 oder 6?)
          if (Length(Analyse.StringGrid1.Cells[2,i])<=4) then
            begin
              nachkommastellen:=4;
            end
            else
              begin
                if (Length(Analyse.StringGrid1.Cells[2,i])>4) then
                  begin
                    nachkommastellen:=6;
                  end;
              end;
          //
          if i<=31 then
            begin
              Analyse.StringGrid1.Cells[2,i]:=FloatToStr(Runden(StrToFloat(Analyse.StringGrid1.Cells[2,i]),nachkommastellen));
            end;
            
        end;

    end
    else
      begin
        // wenn der Innendurchmesser zu groß ist, dann kommt eine Fehlermeldung
        if (StrToFloat(Edit2.Text)>1000) then
          begin
            IPS_1.Label1.Caption:='Innendurchmesser zu groß eingestellt!';
            IPS_1.Show;
          end;
      end;
end;

// Initialisierungen
procedure TeigenesRohr.FormCreate(Sender: TObject);
var
  Reynoldzahl, epsilon, Funktion, ersteAbleitung:Real;
  Rohrreibungszahl_alt_Grenze, Rohrreibungszahl_neu_Grenze:Real;
  Rohrreibungszahl_alt, Rohrreibungszahl_neu, Rohrreibungszahl:Real;
  alpha:Real;
  j,i,karman_nikuradse:Integer;
  Reynoldzahl_untereGrenze, Reynoldzahl_obereGrenze, zwischenWert:Real;
begin
  Stringgrid1.Cells[0,0]:='Temperatur';
  Stringgrid1.Cells[1,0]:='Dichte';
  Stringgrid1.Cells[2,0]:='dynViskosität';
  Stringgrid1.Cells[3,0]:='Reynoldzahl_Grenze';
  Stringgrid1.Cells[4,0]:='Rohrreibungszahl_Grenze';

  Stringgrid2.Cells[0,0]:='Strömungsgeschwindigkeit';
  Stringgrid2.Cells[1,0]:='Massenstrom';
  Stringgrid2.Cells[2,0]:='Druckverlust';
  Stringgrid2.Cells[3,0]:='Reynoldszahl';
  Stringgrid2.Cells[4,0]:='Rohrreibungszahl (Lambda)';
  Stringgrid2.Cells[5,0]:='Gleichung';
  Stringgrid2.Cells[6,0]:='Oberfläche';

  Stringgrid3.Cells[0,0]:='Reynoldszahl';
  Stringgrid3.Cells[1,0]:='Rohrreibungszahl_Grenze';
  Stringgrid3.Cells[2,0]:='Rohrreibungszahl_Prandtl';
  Stringgrid3.Cells[3,0]:='Rohrreibungszahl_1';
  Stringgrid3.Cells[4,0]:='Rohrreibungszahl_2';
  Stringgrid3.Cells[5,0]:='Rohrreibungszahl_3';
  Stringgrid3.Cells[6,0]:='Rohrreibungszahl_4';
  Stringgrid3.Cells[7,0]:='Rohrreibungszahl_5';
  Stringgrid3.Cells[8,0]:='Rohrreibungszahl_6';
  Stringgrid3.Cells[9,0]:='Rohrreibungszahl_7';
  Stringgrid3.Cells[10,0]:='Rohrreibungszahl_8';
  Stringgrid3.Cells[11,0]:='Rohrreibungszahl_9';
  Stringgrid3.Cells[12,0]:='Rohrreibungszahl_10';
  Stringgrid3.Cells[13,0]:='Rohrreibungszahl_11';
  Stringgrid3.Cells[14,0]:='Rohrreibungszahl_12';
  Stringgrid3.Cells[15,0]:='Rohrreibungszahl_13';
  Stringgrid3.Cells[16,0]:='Rohrreibungszahl_14';
  Stringgrid3.Cells[17,0]:='Rohrreibungszahl_15';
  Stringgrid3.Cells[18,0]:='Rohrreibungszahl_16';
  Stringgrid3.Cells[19,0]:='Rohrreibungszahl_17';
  Stringgrid3.Cells[20,0]:='Rohrreibungszahl_18';
  Stringgrid3.Cells[21,0]:='Rohrreibungszahl_Blasius';

  ComboBox2.ItemIndex:=0;

  // eigenes MoodyDiagramm
  // --> Grenzkurve einzeichnen
  Chart1.Series[0].Title:='Grenzkurve';

  Reynoldzahl:=2320;

  Analyse.Label61.Caption:='1';
  Label8.Caption:='1';
  Label13.Caption:='10000';

  for i:=1 to 21 do
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
        Chart1.Series[0].AddXY(Reynoldzahl,Rohrreibungszahl_neu_Grenze);

        // -> Werte in Tabelle schreiben
        Stringgrid3.Cells[0,i]:=FloatToStr(Reynoldzahl);
        Stringgrid3.Cells[1,i]:=FloatToStr(Rohrreibungszahl_neu_Grenze);

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
  Chart1.Series[20].Title:='Rohrreibungszahl_Hagen-Poiseuille';
  Reynoldzahl_untereGrenze:=500;
  Reynoldzahl_obereGrenze:=2320;
  for i:=1 to 21 do
    begin
      zwischenWert:=log10(Reynoldzahl_obereGrenze/Reynoldzahl_untereGrenze);
      Reynoldzahl:=Reynoldzahl_untereGrenze*Power(10, ((zwischenWert/23)*(i-1)));
      Rohrreibungszahl:=64/Reynoldzahl;
      Chart1.Series[20].AddXY(Reynoldzahl,Rohrreibungszahl);
    end;

  // ---> Blasius
  // -> hydraulisch glatt + turbulente Strömung
  Chart1.Series[21].Title:='Rohrreibungszahl_Blasius';
  Reynoldzahl_untereGrenze:=2320;
  Reynoldzahl_obereGrenze:=99999;
  for i:=1 to 21 do
    begin
      zwischenWert:=log10(Reynoldzahl_obereGrenze/Reynoldzahl_untereGrenze);
      Reynoldzahl:=Reynoldzahl_untereGrenze*Power(10, ((zwischenWert/23)*(i-1)));
      Rohrreibungszahl:=0.3164*Power(Reynoldzahl, -0.25);
      Chart1.Series[21].AddXY(Reynoldzahl,Rohrreibungszahl);
      Stringgrid3.Cells[21,i]:=FloatToStr(Rohrreibungszahl);
    end;

  // ---> Prandtl
  // -> hydraulisch glatt + turbulente Strömung
  Chart1.Series[1].Title:='Rohrreibungszahl_Prandtl';
  Reynoldzahl_untereGrenze:=100001;
  Reynoldzahl_obereGrenze:=50000000;
  for i:=1 to 21 do
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
      Chart1.Series[1].AddXY(Reynoldzahl,Rohrreibungszahl);
    end;

  // Rohrreibung nach Colebrook und Karman-Nikuradse
  Chart1.Series[2].Title:='alpha_0,05';
  Chart1.Series[3].Title:='alpha_0,04';
  Chart1.Series[4].Title:='alpha_0,03';
  Chart1.Series[5].Title:='alpha_0,02';
  Chart1.Series[6].Title:='alpha_0,015';
  Chart1.Series[7].Title:='alpha_0,01';
  Chart1.Series[8].Title:='alpha_0,008';
  Chart1.Series[9].Title:='alpha_0,006';
  Chart1.Series[10].Title:='alpha_0,004';
  Chart1.Series[11].Title:='alpha_0,002';
  Chart1.Series[12].Title:='alpha_0,001';
  Chart1.Series[13].Title:='alpha_0,0008';
  Chart1.Series[14].Title:='alpha_0,0006';
  Chart1.Series[15].Title:='alpha_0,0004';
  Chart1.Series[16].Title:='alpha_0,0002';
  Chart1.Series[17].Title:='alpha_0,0001';
  Chart1.Series[18].Title:='alpha_0,00005';
  Chart1.Series[19].Title:='alpha_0,00001';

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

      for i:=1 to 21 do
        begin
          Reynoldzahl:=StrToFloat(Stringgrid3.Cells[0,i]);

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
              Stringgrid3.Cells[j+1,i]:=FloatToStr(Rohrreibungszahl);
              Chart1.Series[j].AddXY(Reynoldzahl,Rohrreibungszahl);
            end;

            // ---> Karman-Nikuradse
            //      -> hydraulisch rau + turbulente Strömung
            if (Reynoldzahl>=2320) and (karman_nikuradse=1) then
              begin
                Rohrreibungszahl:=1/((1.74-2*log10(2*alpha))*(1.74-2*log10(2*alpha)));
                Stringgrid3.Cells[j+1,i]:=FloatToStr(Rohrreibungszahl);
                Chart1.Series[j].AddXY(Reynoldzahl,Rohrreibungszahl);
              end;

        end;
    end;
                    
end;

// Schliessen-Button
procedure TeigenesRohr.SchliessenClick(Sender: TObject);
begin
  //Image1.Picture.LoadFromFile('Bilder & Quellen\Moody-Diagramm_1.bmp');
  eigenesRohr.close;
end;

// Weiter-Button
procedure TeigenesRohr.WeiterClick(Sender: TObject);
begin
  if (RadioButton1.Checked=True) and (RadioButton2.Checked=False) and (RadioButton3.Checked=False) then
    begin
      Eingabe.show;
    end
    else
      begin
        if (RadioButton1.Checked=False) and (RadioButton2.Checked=True) and (RadioButton3.Checked=False) then
          begin
            Eingabe.Show;
          end
          else
            begin
              if (RadioButton1.Checked=False) and (RadioButton2.Checked=False) and (RadioButton3.Checked=True) then
                begin
                  Eingabe.Show;
                end;
            end;
      end;
end;

end.
