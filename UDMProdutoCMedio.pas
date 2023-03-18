unit UDMProdutoCMedio;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient;

type
  TDMProdutoCMedio = class(TDataModule)
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoID: TIntegerField;
    cdsProdutoTIPO_REG: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoPRECO_CUSTO_TOTAL: TFloatField;
    cdsProdutoUSA_PRECO_COR: TStringField;
    dsProduto: TDataSource;
    sdsProduto_CMedio: TSQLDataSet;
    sdsProduto_CMedioID: TIntegerField;
    sdsProduto_CMedioID_COR: TIntegerField;
    sdsProduto_CMedioDATA: TDateField;
    sdsProduto_CMedioPRECO_MEDIO: TFloatField;
    dspProduto_CMedio: TDataSetProvider;
    cdsProduto_CMedio: TClientDataSet;
    cdsProduto_CMedioID: TIntegerField;
    cdsProduto_CMedioID_COR: TIntegerField;
    cdsProduto_CMedioDATA: TDateField;
    cdsProduto_CMedioPRECO_MEDIO: TFloatField;
    sdsProduto_Comb: TSQLDataSet;
    dspProduto_Comb: TDataSetProvider;
    cdsProduto_Comb: TClientDataSet;
    dsProduto_Comb: TDataSource;
    cdsProduto_CombID: TIntegerField;
    cdsProduto_CombITEM: TIntegerField;
    cdsProduto_CombID_COR: TIntegerField;
    cdsProduto_CombNOME: TStringField;
    cdsProduto_CombINATIVO: TStringField;
    cdsProduto_CombTIPO_REG: TStringField;
    cdsProduto_CombPRECO_CUSTO: TFloatField;
    cdsProduto_CombPRECO_VENDA: TFloatField;
    cdsProduto_CombPERC_MARGEMLUCRO: TFloatField;
    cdsProduto_CombID_COR_COMBINACAO: TIntegerField;
    cdsProduto_CombFOTO: TStringField;
    cdsProduto_CombOBSMATERIAL: TStringField;
    cdsProduto_CombNOME_FOTO: TStringField;
    cdsProduto_CombGERAR_WEB: TStringField;
    procedure dspProduto_CMedioGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMProdutoCMedio: TDMProdutoCMedio;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMProdutoCMedio.dspProduto_CMedioGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'PRODUTO_CMEDIO';
end;

end.
