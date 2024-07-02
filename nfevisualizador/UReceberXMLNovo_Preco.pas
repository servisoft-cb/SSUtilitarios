unit UReceberXMLNovo_Preco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls, Mask, ToolEdit, CurrEdit, UDMRecebeXML;

type
  TfrmReceberXMLNovo_Preco = class(TForm)
    Label155: TLabel;
    cePercVlrVenda: TCurrencyEdit;
    btnAplicarItens: TNxButton;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnAplicarItensClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMRecebeXML: TDMRecebeXML;

  end;

var
  frmReceberXMLNovo_Preco: TfrmReceberXMLNovo_Preco;

implementation

uses rsDBUtils, uUtilPadrao, uUtil_RecebeXML;

{$R *.dfm}

procedure TfrmReceberXMLNovo_Preco.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMRecebeXML);
end;

procedure TfrmReceberXMLNovo_Preco.btnAplicarItensClick(Sender: TObject);
var
  vValor : Real;
  vTipoCalculo: String;
  vAplicar_Margem: String;
  vCustoManual: String;
begin
  if cePercVlrVenda.Value <= 0 then
  begin
    MessageDlg('*** % não pode ser zerado!', mtInformation, [mbOk], 0);
    exit;
  end;
  vTipoCalculo    := SQLLocate('PARAMETROS_PROD','ID','USA_CALCULO_VENDA2','1');
  vAplicar_Margem := SQLLocate('PARAMETROS_PROD','ID','OPCAO_APLICAR_MARGEM','1');
  vCustoManual    := SQLLocate('PARAMETROS_RECXML','ID','USAR_PRECO_CUSTO','1');
  fDMRecebeXML.mItensNota.First;
  while not fDMRecebeXML.mItensNota.eof do
  begin
    vValor := fnc_Busca_Custo_mItens(fDMRecebeXML,vAplicar_Margem,vCustoManual);
    prc_Calcula_Vlr_Venda_mItens(fDMRecebeXML,vValor,cePercVlrVenda.Value,vTipoCalculo);
    fDMRecebeXML.mItensNota.Next;
  end;
  Close;
end;

end.
