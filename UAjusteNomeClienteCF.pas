unit UAjusteNomeClienteCF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls, Mask, ToolEdit, FMTBcd, DB, SqlExpr,
  Provider, DBClient;

type
  TfrmAjusteNomeClienteCF = class(TForm)
    NxButton1: TNxButton;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    sdsCupom: TSQLDataSet;
    dspCupom: TDataSetProvider;
    cdsCupom: TClientDataSet;
    cdsCupomID_MOVESTOQUE: TIntegerField;
    cdsCupomID: TIntegerField;
    cdsCupomID_ITEM: TIntegerField;
    cdsCupomCLIENTE_NOME: TStringField;
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Gravar_Nome;
    
  public
    { Public declarations }
  end;

var
  frmAjusteNomeClienteCF: TfrmAjusteNomeClienteCF;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmAjusteNomeClienteCF.NxButton1Click(Sender: TObject);
var
  vTotal, vLidos: Integer;
begin
  if (DateEdit1.Date <= 10) or (DateEdit2.Date <= 10) then
  begin
    MessageDlg('*** É obrigatório informar a data inicial e final!', mtError, [mbOk], 0);
    DateEdit1.SetFocus;
    exit;
  end;
  vLidos := 0;
  cdsCupom.Close;
  sdsCupom.ParamByName('DATA1').AsDate := DateEdit1.Date;
  sdsCupom.ParamByName('DATA2').AsDate := DateEdit2.Date;
  cdsCupom.Open;
  Label4.Caption := IntToStr(cdsCupom.RecordCount);
  Refresh;

  cdsCupom.First;
  while not cdsCupom.Eof do
  begin
    vLidos := vLidos + 1;
    Label6.Caption := IntToStr(vLidos);
    Refresh;
    Application.ProcessMessages;

    if (cdsCupomCLIENTE_NOME.AsString <> 'CONSUMIDOR') and (cdsCupomCLIENTE_NOME.AsString <> 'CONSUMIDOR FINAL')
     and (cdsCupomCLIENTE_NOME.AsString <> 'CLIENTE CONSUMIDOR') then
      prc_Gravar_Nome;

    cdsCupom.Next;
  end;
end;

procedure TfrmAjusteNomeClienteCF.prc_Gravar_Nome;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    sds.CommandText := 'update ESTOQUE_MOV set NOME_PESSOA = :NOME where ID = :ID ';
    sds.ParamByName('NOME').AsString := cdsCupomCLIENTE_NOME.AsString;
    sds.ParamByName('ID').AsInteger  := cdsCupomID_MOVESTOQUE.AsInteger;
    sds.ExecSQL;
  finally
    FreeAndNil(sds);
  end;
end;

end.
