unit UAjustarCCustoNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, NxCollection, SqlExpr;

type
  TfrmAjustarCCustoNFe = class(TForm)
    NxButton1: TNxButton;
    DateEdit1: TDateEdit;
    Label1: TLabel;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAjustarCCustoNFe: TfrmAjustarCCustoNFe;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmAjustarCCustoNFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmAjustarCCustoNFe.NxButton1Click(Sender: TObject);
var
  sds: TSQLDataSet;
  sds2: TSQLDataSet;
  sdsItens: TSQLDataSet;
  vCont: Integer;
  vID_Mov: Integer;
begin
  sds := TSQLDataSet.Create(nil);
  sds2 := TSQLDataSet.Create(nil);
  sdsItens := TSQLDataSet.Create(nil);
  try
    vCont := 0;
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata  := True;
    sds.GetMetadata := False;
    sds2.SQLConnection := dmDatabase.scoDados;
    sds2.NoMetadata  := True;
    sds2.GetMetadata := False;
    sdsItens.SQLConnection := dmDatabase.scoDados;
    sdsItens.NoMetadata  := True;
    sdsItens.GetMetadata := False;

    sds.CommandText := 'select N.ID, N.ID_CENTRO_CUSTO '
                     + ' from NOTAFISCAL N '
                     + ' where N.DTEMISSAO between :DTINICIAL and :DTFINAL '
                     + ' AND coalesce(N.id_centro_custo,0) > 0 ';
    sds.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
    sds.ParamByName('DTFINAL').AsDate   := DateEdit2.Date;
    sds.Open;
    while not sds.eof do
    begin

      sds2.Close;
      sds2.CommandText := 'update NOTAFISCAL_ITENS I set I.CENTRO_CUSTO_ID = :ID_CENTRO_CUSTO where I.ID = :ID and i.centro_custo_id is null ';
      sds2.ParamByName('ID_CENTRO_CUSTO').AsInteger := sds.FieldByName('ID_CENTRO_CUSTO').AsInteger;
      sds2.ParamByName('ID').AsInteger              := sds.FieldByName('ID').AsInteger;
      sds2.ExecSQL;

      sdsItens.Close;
      sdsItens.CommandText := 'select I.ITEM, I.ID_MOVIMENTO, I.CENTRO_CUSTO_ID  from NOTAFISCAL_ITENS I where I.ID = :ID and  coalesce(I.CENTRO_CUSTO_ID, 0) > 0 ';
      sdsItens.ParamByName('ID').AsInteger := sds.FieldByName('ID').AsInteger;
      sdsItens.Open;
      sdsItens.First;
      while not sdsItens.Eof do
      begin
        sds2.Close;
        sds2.CommandText := 'update MOVIMENTO M SET M.id_centrocusto = :ID_CENTRO_CUSTO where M.ID = :ID ';
        SDS2.ParamByName('ID_CENTRO_CUSTO').AsInteger := sdsItens.FieldByName('CENTRO_CUSTO_ID').AsInteger;
        SDS2.ParamByName('ID').AsInteger              := sdsItens.FieldByName('ID_MOVIMENTO').AsInteger;
        sds2.ExecSQL;
        sdsItens.Next;
      end;
      vCont := vCont + 1;
      sds.Next;
    end;
  finally
    FreeAndNil(sds);
    FreeAndNil(sds2);
  end;
  MessageDlg('*** Total de notas ajustadas: ' + IntToStr(vCont), mtConfirmation, [mbOk], 0);
end;

end.
