unit unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button0: TButton;
    ButtonDot: TButton;
    ButtonPercentage: TButton;
    ButtonDivision: TButton;
    ButtonPlus: TButton;
    ButtonMinus: TButton;
    ButtonMultiply: TButton;
    ButtonEqual: TButton;
    ButtonClear: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ResultPanel: TEdit;
    OperationLabel: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Button0Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonDivisionClick(Sender: TObject);
    procedure ButtonDotClick(Sender: TObject);
    procedure ButtonEqualClick(Sender: TObject);
    procedure ButtonMinusClick(Sender: TObject);
    procedure ButtonMultiplyClick(Sender: TObject);
    procedure ButtonPercentageClick(Sender: TObject);
    procedure ButtonPlusClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OperationLabelClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  value1, value2, percentage: real;
  operationType: String;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button8Click(Sender: TObject);
begin
  ResultPanel.Text:=  ResultPanel.Text + '8';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  ResultPanel.Text:=  ResultPanel.Text + '7';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  ResultPanel.Text:=  ResultPanel.Text + '6';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  ResultPanel.Text:=  ResultPanel.Text + '5';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ResultPanel.Text:=  ResultPanel.Text + '4';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ResultPanel.Text:=  ResultPanel.Text + '3';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ResultPanel.Text:=  ResultPanel.Text + '2';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ResultPanel.Text:=  ResultPanel.Text + '1';
end;

procedure TForm1.Button0Click(Sender: TObject);
begin
  ResultPanel.Text:=  ResultPanel.Text + '0';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  ResultPanel.Text:=  ResultPanel.Text + '9';
end;

procedure TForm1.ButtonClearClick(Sender: TObject);
begin
  ResultPanel.Text:='';
  value1:=0;
  value2:=0;
  operationType:='';
  OperationLabel.Caption:='';
end;

procedure TForm1.ButtonDivisionClick(Sender: TObject);
begin
  operationType:='Division';
  value1:=StrToFloat(ResultPanel.Text);
  ResultPanel.Text:='';
  OperationLabel.Caption:='/';
end;

procedure TForm1.ButtonDotClick(Sender: TObject);
begin
   ResultPanel.Text:=ResultPanel.Text + '.';
end;

procedure TForm1.ButtonEqualClick(Sender: TObject);
begin
  OperationLabel.Caption:='=';

  if operationType = 'Sum' then
   begin
     value2:=StrToFloat(ResultPanel.Text);
     ResultPanel.Text:=FloatToStr(value1+value2);
   end;

  if operationType = 'Subtraction' then
   begin
     value2:=StrToFloat(ResultPanel.Text);
     ResultPanel.Text:=FloatToStr(value1-value2);
   end;

  if operationType = 'Division' then
   begin
     value2:=StrToFloat(ResultPanel.Text);
     ResultPanel.Text:=FloatToStr(value1/value2);
   end;

  if operationType = 'Multiplication' then
   begin
     value2:=StrToFloat(ResultPanel.Text);
     ResultPanel.Text:=FloatToStr(value1*value2);
   end;
end;

procedure TForm1.ButtonMinusClick(Sender: TObject);
begin
  operationType:='Subtraction';
  value1:=StrToFloat(ResultPanel.Text);
  ResultPanel.Text:='';
  OperationLabel.Caption:='-';
end;

procedure TForm1.ButtonMultiplyClick(Sender: TObject);
begin
  operationType:='Multiplication';
  value1:=StrToFloat(ResultPanel.Text);
  ResultPanel.Text:='';
  OperationLabel.Caption:='*';
end;

procedure TForm1.ButtonPercentageClick(Sender: TObject);
begin
  if operationType = 'Sum' then
   begin
     percentage:=StrToFloat(ResultPanel.Text);
     percentage:=percentage/100;
     percentage:=percentage*value1;
     ResultPanel.Text:=FloatToStr(value1+percentage);
   end;

  if operationType = 'Subtraction' then
   begin
     percentage:=StrToFloat(ResultPanel.Text);
     percentage:=percentage/100;
     percentage:=percentage*value1;
     ResultPanel.Text:=FloatToStr(value1-percentage)
   end;

  if operationType = 'Division' then
   begin
     percentage:=StrToFloat(ResultPanel.Text);
     percentage:=percentage/100;
     percentage:=percentage/value1;
     ResultPanel.Text:=FloatToStr(value1/percentage)
   end;

  if operationType = 'Multiplication' then
   begin
     percentage:=StrToFloat(ResultPanel.Text);
     percentage:=percentage/100;
     percentage:=percentage*value1;
     ResultPanel.Text:=FloatToStr(value1*percentage)
   end;
end;

procedure TForm1.ButtonPlusClick(Sender: TObject);
begin
  operationType:='Sum';
  value1:=StrToFloat(ResultPanel.Text);
  ResultPanel.Text:='';
  OperationLabel.Caption:='+';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.OperationLabelClick(Sender: TObject);
begin

end;

end.

