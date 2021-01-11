unit UDMProdutoProcesso;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, DB, SqlExpr, Provider;

type
  TDMProdutoProcesso = class(TDataModule)
    dspConsulta: TDataSetProvider;
    sdsConsulta: TSQLDataSet;
    cdsConsulta: TClientDataSet;
    cdsConsultaID: TIntegerField;
    cdsConsultaID_PROCESSO: TIntegerField;
    cdsConsultaQTD_LEITURA: TIntegerField;
    cdsConsultaITEM: TIntegerField;
    cdsConsultaITEM_PROC: TIntegerField;
    sdsProdutoProcesso: TSQLDataSet;
    sdsProdutoProcessoID: TIntegerField;
    sdsProdutoProcessoITEM: TIntegerField;
    sdsProdutoProcessoID_PROCESSO: TIntegerField;
    sdsProdutoProcessoID_SETOR: TIntegerField;
    sdsProdutoProcessoQTD: TFloatField;
    sdsProdutoProcessoUN: TStringField;
    sdsProdutoProcessoVLR_UNIT: TFloatField;
    sdsProdutoProcessoVLR_TOTAL: TFloatField;
    sdsProdutoProcessoOBS: TStringField;
    sdsProdutoProcessoID_POSICAO: TIntegerField;
    sdsProdutoProcessoORDEM: TIntegerField;
    dspProdutoProcesso: TDataSetProvider;
    cdsProdutoProcesso: TClientDataSet;
    cdsProdutoProcessoID: TIntegerField;
    cdsProdutoProcessoITEM: TIntegerField;
    cdsProdutoProcessoID_PROCESSO: TIntegerField;
    cdsProdutoProcessoID_SETOR: TIntegerField;
    cdsProdutoProcessoQTD: TFloatField;
    cdsProdutoProcessoUN: TStringField;
    cdsProdutoProcessoVLR_UNIT: TFloatField;
    cdsProdutoProcessoVLR_TOTAL: TFloatField;
    cdsProdutoProcessoOBS: TStringField;
    cdsProdutoProcessoID_POSICAO: TIntegerField;
    cdsProdutoProcessoORDEM: TIntegerField;
    dsProdutoProcesso: TDataSource;
    cdsConsultaID_SETOR: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMProdutoProcesso: TDMProdutoProcesso;

implementation

uses DmdDatabase;

{$R *.dfm}

end.
