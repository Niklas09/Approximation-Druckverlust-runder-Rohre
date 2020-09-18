unit Eingabe_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TEingabe = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Eingabe: TEingabe;

implementation

uses Rohrdefinition, Hinweis_1;

{$R *.dfm}

// Cancel-Button
procedure TEingabe.BitBtn2Click(Sender: TObject);
begin
  close;
end;


// OK-Button
procedure TEingabe.BitBtn1Click(Sender: TObject);
begin
  // Massenstrom
  if (eigenesRohr.RadioButton1.Checked=True) and (eigenesRohr.RadioButton2.Checked=False) and (eigenesRohr.RadioButton3.Checked=False) then
    begin
      // (es dürfen nur realistische Werte als Grenzen eingegeben werden)
      if (StrToFloat(Edit1.Text)>0) then
        begin
          if (StrToFloat(Edit2.Text)<=100000) then
            begin
              eigenesRohr.Label8.Caption:=Edit1.Text;
              eigenesRohr.Label13.Caption:=Edit2.Text;
              eigenesRohr.Label14.Caption:='kg/h';
              eigenesRohr.Label15.Caption:='kg/h';
            end
            else
              begin
                // (obere Grenze ist falsch eingestellt)
                IPS_1.Label1.Caption:='Obere Grenze zu groß eingestellt!';
                IPS_1.Show;
              end;
        end
        else
          begin
            // (untere Grenze ist falsch eingestellt)
            IPS_1.Label1.Caption:='Untere Grenze zu klein eingestellt!';
            IPS_1.Show;
          end;
    end;

  // Strömungsgeschwindigkeit
  if (eigenesRohr.RadioButton1.Checked=False) and (eigenesRohr.RadioButton2.Checked=True) and (eigenesRohr.RadioButton3.Checked=False) then
    begin
      // (es dürfen nur realistische Werte als Grenzen eingegeben werden)
      if (StrToFloat(Edit3.Text)>=0.01) then
        begin
          if (StrToFloat(Edit4.Text)<=100) then
            begin
              eigenesRohr.Label8.Caption:=Edit3.Text;
              eigenesRohr.Label13.Caption:=Edit4.Text;
              eigenesRohr.Label14.Caption:='m/s';
              eigenesRohr.Label15.Caption:='m/s';
            end
            else
              begin
                // (obere Grenze ist falsch eingestellt)
                IPS_1.Label1.Caption:='Obere Grenze zu groß eingestellt!';
                IPS_1.Show;
              end;
        end
        else
          begin
            // (untere Grenze ist falsch eingestellt)
            IPS_1.Label1.Caption:='Untere Grenze zu klein eingestellt!';
            IPS_1.Show;
          end;
    end;

  // Reynoldzahl
  if (eigenesRohr.RadioButton1.Checked=False) and (eigenesRohr.RadioButton2.Checked=False) and (eigenesRohr.RadioButton3.Checked=True) then
    begin
      // (es dürfen nur realistische Werte als Grenzen eingegeben werden)
      if (StrToFloat(Edit5.Text)>=1000) then
        begin
          if (StrToFloat(Edit6.Text)<=39999999) then
            begin
          eigenesRohr.Label8.Caption:=Edit5.Text;
          eigenesRohr.Label13.Caption:=Edit6.Text;
          eigenesRohr.Label14.Caption:=' ';
          eigenesRohr.Label15.Caption:=' ';
            end
            else
              begin
                // (obere Grenze ist falsch eingestellt)
                IPS_1.Label1.Caption:='Obere Grenze zu groß eingestellt!';
                IPS_1.Show;
              end;
        end
        else
          begin
            // (untere Grenze ist falsch eingestellt)
            IPS_1.Label1.Caption:='Untere Grenze zu klein eingestellt!';
            IPS_1.Show;
          end;
    end;

  close;
end;


end.
