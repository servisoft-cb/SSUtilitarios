unit UDMAjustarNCMCFOP;

interface

uses
  SysUtils, Classes, LogTypes, FMTBcd, DB, SqlExpr, Provider, DBClient;

type
  TDMAjustarNCMCFOP = class(TDataModule)
    sdsTab_NCM: TSQLDataSet;
    dspTab_NCM: TDataSetProvider;
    sdsTab_NCMID: TIntegerField;
    sdsTab_NCMID_CFOP: TIntegerField;
    sdsTab_NCMID_CST_ICMS: TIntegerField;
    cdsTab_NCM: TClientDataSet;
    cdsTab_NCMID: TIntegerField;
    cdsTab_NCMID_CFOP: TIntegerField;
    cdsTab_NCMID_CST_ICMS: TIntegerField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    sdsProdutoID: TIntegerField;
    sdsProdutoID_NCM: TIntegerField;
    sdsProdutoID_CFOP_NFCE: TIntegerField;
    sdsProdutoID_CSTICMS: TIntegerField;
    cdsProdutoID: TIntegerField;
    cdsProdutoID_NCM: TIntegerField;
    cdsProdutoID_CFOP_NFCE: TIntegerField;
    cdsProdutoID_CSTICMS: TIntegerField;
    sdsTab_NCMNCM: TStringField;
    cdsTab_NCMNCM: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
  end;

var
  DMAjustarNCMCFOP: TDMAjustarNCMCFOP;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMAjustarNCMCFOP }

procedure TDMAjustarNCMCFOP.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMAjustarNCMCFOP.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  //*** Logs Implantado na versão .353 (neste datamodule foi na versão .611)
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************
end;

end.
