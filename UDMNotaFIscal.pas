unit UDMNotaFIscal;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TDMNotaFIscal = class(TDataModule)
    cdsXML: TClientDataSet;
    cdsXMLArquivo: TStringField;
    cdsXMLChave: TStringField;
    cdsXMLNumero: TIntegerField;
    cdsXMLSerie: TIntegerField;
    cdsXMLModelo: TStringField;
    cdsXMLDTEmissao: TDateField;
    cdsXMLEmit_CNPJ: TStringField;
    cdsXMLEmit_Nome: TStringField;
    cdsXMLDest_CNPJ: TStringField;
    cdsXMLDest_Nome: TStringField;
    cdsXMLVlr_Prod: TFloatField;
    cdsXMLVlr_NFe: TFloatField;
    cdsXMLImportar: TBooleanField;
    dsXML: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMNotaFIscal: TDMNotaFIscal;

implementation

{$R *.dfm}

end.
