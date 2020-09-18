unit Moody_Diagramm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, jpeg, TeEngine, Series, TeeProcs,
  Chart;

type
  TMoodyDiagramm = class(TForm)
    Zurueck: TButton;
    Image1: TImage;
    StringGrid1: TStringGrid;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
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
    StringGrid2: TStringGrid;
    Series22: TLineSeries;
    Series23: TLineSeries;
    Series24: TLineSeries;
    Series25: TLineSeries;
    Image2: TImage;
    procedure ZurueckClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MoodyDiagramm: TMoodyDiagramm;

implementation

uses main;

{$R *.dfm}

// Zurueck-Button
procedure TMoodyDiagramm.ZurueckClick(Sender: TObject);
begin
  MoodyDiagramm.close;
end;

// Initialisierungen
procedure TMoodyDiagramm.FormCreate(Sender: TObject);
begin
  Stringgrid1.Cells[0,0]:='Geschwindigkeit [m/s]';
  Stringgrid1.Cells[1,0]:='Massenstrom [kg/h]';
  Stringgrid1.Cells[2,0]:='Druckverlust (Norm) [mbar]';
  Stringgrid1.Cells[3,0]:='Reynoldszahl';
  Stringgrid1.Cells[4,0]:='Rohrreibungszahl (Lamba)';
  Stringgrid1.Cells[5,0]:='Gleichung';
  //Stringgrid1.Cells[6,0]:='alpha = k/d';
  Stringgrid1.Cells[6,0]:='k/d';

  // Bild 'MoodyDiagramm' speichern
  // (Ziel: Es gibt nur noch eine exe-Datei und kein Untervezeichnis)
  MoodyDiagramm.Image1.Picture.SaveToFile(Analyse.Label112.Caption+'\MoodyDiagramm.bmp');
  //Image1.Picture.SaveToFile('J:\MoodyDiagram.bmp');
end;

end.
