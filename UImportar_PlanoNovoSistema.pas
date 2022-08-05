unit UImportar_PlanoNovoSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask,
  ToolEdit, Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr, UDMCadPlano_Contas,
  uDMCadPlano_Contabil;

type
  TfrmImportar_PlanoNovoSistema = class(TForm)
    Label1: TLabel;
    FilenameEdit1: TFilenameEdit;
    Label2: TLabel;
    Label3: TLabel;
    qPlano: TSQLQuery;
    qPlanoID: TIntegerField;
    qPlanoCODIGO: TStringField;
    qPlanoNOME: TStringField;
    qPlanoDT_CADASTRO: TDateField;
    qPlanoNIVEL: TIntegerField;
    qPlanoTIPO_REG: TStringField;
    qPlanoCOD_NATUREZA: TIntegerField;
    qPlanoINATIVO: TStringField;
    qPlanoSUPERIOR: TIntegerField;
    BitBtn2: TBitBtn;
    qPlano_Contabil: TSQLQuery;
    qPlano_ContabilID: TIntegerField;
    qPlano_ContabilCODIGO: TStringField;
    qPlano_ContabilNOME: TStringField;
    qPlano_ContabilDT_CADASTRO: TDateField;
    qPlano_ContabilNIVEL: TIntegerField;
    qPlano_ContabilTIPO_REG: TStringField;
    qPlano_ContabilCOD_NATUREZA: TIntegerField;
    qPlano_ContabilINATIVO: TStringField;
    qPlano_ContabilSUPERIOR: TIntegerField;
    qPlano_ContabilDT_INICIO_VALIDADE: TDateField;
    qPlano_ContabilDT_FINAL_VALIDADE: TDateField;
    qPlano_ContabilCODIGO_REDUZIDO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadPlano_Contas: TDMCadPlano_Contas;
    fDMCadPlano_Contabil: TDMCadPlano_Contabil;
    Txt: TextFile;
    vRegistro: string;
    vArquivo: string;
    function fnc_Montar_Campo: string;
    function fnc_Conta_Nivel(const Texto: string; Caracter: string): Integer;
    function fnc_Nivel_Superior(Conta: string; Nivel: Integer): Integer;
  public
    { Public declarations }
  end;

var
  frmImportar_PlanoNovoSistema: TfrmImportar_PlanoNovoSistema;

implementation

uses
  DmdDatabase, uUtilPadrao, StrUtils;

{$R *.dfm}

procedure TfrmImportar_PlanoNovoSistema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

function TfrmImportar_PlanoNovoSistema.fnc_Montar_Campo: string;
var
  i: Integer;
  vTexto: string;
begin
  Result := '';
  i := pos(';', vRegistro_CSV);
  if i = 0 then
    i := Length(vRegistro_CSV) + 1;
  Result := Copy(vRegistro_CSV, 1, i - 1);
  vTexto := Result;
  Delete(vRegistro_CSV, 1, i);

end;

procedure TfrmImportar_PlanoNovoSistema.FormShow(Sender: TObject);
begin
  fDMCadPlano_Contas := TDMCadPlano_Contas.Create(Self);
  fDMCadPlano_Contabil := TDMCadPlano_Contabil.Create(Self);
end;

procedure TfrmImportar_PlanoNovoSistema.BitBtn2Click(Sender: TObject);
var
  vTexto1: string;
  vContador: Integer;
  vCodigo: string;
  vSuperior: Integer;
  vCod_Reduzido: Integer;
  vNome: string;
  vNivel: Integer;
  vNatureza: string;
  vNivelSuperior: Integer;
  vFlag: Boolean;
  i: Integer;
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    MessageDlg('*** Endereço do arquivo não informado!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCadPlano_Contabil.cdsPlano_Contabil.Close;
  fDMCadPlano_Contabil.cdsPlano_Contabil.Open;
  if not fDMCadPlano_Contabil.cdsPlano_Contabil.IsEmpty then
  begin
    MessageDlg('*** Plano de contabil já gerado!', mtError, [mbOk], 0);
    exit;
  end;
  vContador := 0;
  try
    vFlag := False;
    vArquivo := FilenameEdit1.Text;
    AssignFile(Txt, vArquivo);
    Reset(Txt);
    while not Eof(Txt) do
    begin
      ReadLn(Txt, vRegistro_CSV);
      if not(vFlag) and (UpperCase(copy(vRegistro_CSV, 1, 5)) = 'CONTA') then
        vFlag := True
      else
      if (UpperCase(copy(vRegistro_CSV, 1, 5)) <> 'CONTA') and (vFlag) then
      begin
        vContador := vContador + 1;
        Label3.Caption := IntToStr(vContador);
        Label3.Refresh;
        vTexto1 := fnc_Montar_Campo;
        i := posex(' ',vTexto1);
        if i > 0 then
        begin
          vCodigo := copy(vTexto1,1,i-1);
          vNome   := TrimLeft(copy(vTexto1,i,Length(vTexto1) - (i - 1)));
        end
        else
        begin
          vCodigo := vTexto1;
          vNome := fnc_Montar_Campo;
        end;
        vNivel := (fnc_Conta_Nivel(vCodigo, '.') + 1);
        vCod_Reduzido := StrToInt(fnc_Montar_Campo);
        fDMCadPlano_Contabil.prc_Inserir;
        fDMCadPlano_Contabil.cdsPlano_ContabilCODIGO.AsString := vCodigo;
        fDMCadPlano_Contabil.cdsPlano_ContabilNOME.AsString := vNome;
        fDMCadPlano_Contabil.cdsPlano_ContabilDT_CADASTRO.AsDateTime := Date;
        fDMCadPlano_Contabil.cdsPlano_ContabilCODIGO_REDUZIDO.AsInteger := vCod_Reduzido;
        vTexto1 := fnc_Montar_Campo;
        fDMCadPlano_Contabil.cdsPlano_ContabilTIPO_REG.AsString := fnc_Montar_Campo;
        fDMCadPlano_Contabil.cdsPlano_ContabilNIVEL.AsInteger   := vNivel;
        vNatureza := Copy(vCodigo, 1, 1);
        if vNatureza = '1' then
          fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 1
        else if vNatureza = '2' then
          fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 2
        else if vNatureza = '3' then
          fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 4
        else if vNatureza = '4' then
          fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 4;
        vNivelSuperior := fnc_Nivel_Superior(vCodigo, vNivel);
        if vNivelSuperior > 0 then
          fDMCadPlano_Contabil.cdsPlano_ContabilSUPERIOR.AsInteger := vNivelSuperior;
        fDMCadPlano_Contabil.cdsPlano_ContabilINATIVO.AsString := 'N';
        fDMCadPlano_Contabil.cdsPlano_Contabil.Post;
        fDMCadPlano_Contabil.cdsPlano_Contabil.ApplyUpdates(0);
      end;
    end;
  finally
    CloseFile(Txt);
  end;

  ShowMessage('Geração concluída!');

end;

function TfrmImportar_PlanoNovoSistema.fnc_Conta_Nivel(const Texto: string; Caracter: string): Integer;
var
  i, ivTot: Integer;
begin
  ivTot := 0;
  for i := 1 to Length(Texto) do
  begin
    if ((Texto[i]) = (Caracter)) then
      ivTot := ivTot + 1;
  end;
  Result := ivTot;
end;

function TfrmImportar_PlanoNovoSistema.fnc_Nivel_Superior(Conta: string; Nivel: Integer): Integer;
var
  i: Integer;
begin
  Conta := ReverseString(Conta);

  i := pos('.', Conta);
  Delete(Conta, 1, i);
  Conta := ReverseString(Conta);
  qPlano_Contabil.Close;
  qPlano_Contabil.Open;
  qPlano_Contabil.Locate('CODIGO', Conta, [loCaseInsensitive]);
  if Nivel > 1 then
    Result := qPlano_ContabilID.AsInteger;
end;

end.

