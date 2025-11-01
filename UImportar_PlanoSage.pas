unit UImportar_PlanoSage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask,
  ToolEdit, Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr, UDMCadPlano_Contas,
  uDMCadPlano_Contabil, NxCollection, ExtCtrls, AdvPanel, ComObj, Grids;

type
  TfrmImportar_PlanoSage = class(TForm)
    pnlPrincipal: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FilenameEdit1: TFilenameEdit;
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
    btnImportar: TNxButton;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadPlano_Contabil: TDMCadPlano_Contabil;
    gGrid: TStringGrid;
    vArquivo_XLS : String;
    Linha: Integer;
    vNivelSuperior: Integer;

    function fnc_Nivel_Superior(Conta: string; Nivel: Integer): Integer;

    procedure prc_Le_XLS;
    procedure prc_Gravar_PlanoContabil;

    function XlsToStringGrid2(AGrid: TStringGrid; AXLSFile: string; WorkSheet: Integer): Boolean;
    function fnc_verifica_Arquivo(NomeArquivo, Le_Grava : String) : String;

  public
    { Public declarations }
  end;

var
  frmImportar_PlanoSage: TfrmImportar_PlanoSage;

implementation

uses
  DmdDatabase, uUtilPadrao, StrUtils;

{$R *.dfm}

procedure TfrmImportar_PlanoSage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmImportar_PlanoSage.FormShow(Sender: TObject);
begin
  fDMCadPlano_Contabil := TDMCadPlano_Contabil.Create(Self);
end;

function TfrmImportar_PlanoSage.fnc_Nivel_Superior(Conta: string; Nivel: Integer): Integer;
begin
  Conta := ReverseString(Conta);
  case nivel of
    2 : Delete(Conta,1,1);
    3 : Delete(Conta,1,2);
    4 : Delete(Conta,1,2);
    5 : Delete(Conta,1,4);
  end;
  Conta := ReverseString(Conta);
  qPlano_Contabil.Close;
  qPlano_Contabil.Open;
  qPlano_Contabil.Locate('CODIGO', Conta, [loCaseInsensitive]);
  if Nivel > 1 then
    Result := qPlano_ContabilID.AsInteger
  else
    Result := 0;
end;

procedure TfrmImportar_PlanoSage.btnImportarClick(Sender: TObject);
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    ShowMessage('Aquivo não informado!');
    exit;
  end;
  fDMCadPlano_Contabil.cdsPlano_Contabil.Close;
  fDMCadPlano_Contabil.cdsPlano_Contabil.Open;
  gGrid := TStringGrid.Create(gGrid);
  try
    vArquivo_XLS := fnc_verifica_Arquivo(FilenameEdit1.Text,'L');
    XlsToStringGrid2(gGrid,vArquivo_XLS,1);
    prc_Le_XLS;
  finally
    FreeAndNil(gGrid);
  end;

  ShowMessage('Plano Contábil Convertido');
end;

function TfrmImportar_PlanoSage.fnc_verifica_Arquivo(NomeArquivo,
  Le_Grava: String): String;
begin
  if copy(NomeArquivo,1,1) = '"' then
    delete(NomeArquivo,1,1);
  if copy(NomeArquivo,Length(NomeArquivo),1) = '"' then
    delete(NomeArquivo,Length(NomeArquivo),1);
  if (Le_Grava = 'G') and (copy(NomeArquivo,Length(NomeArquivo),1) = '\') then
    delete(NomeArquivo,Length(NomeArquivo),1);
  Result := NomeArquivo;
end;

procedure TfrmImportar_PlanoSage.prc_Le_XLS;
begin
  Label3.Caption := IntToStr(gGrid.RowCount);
  Label5.Caption := '0';
  Linha := 0;
  while Linha < gGrid.RowCount -1 do
  begin
    Linha := Linha + 1;
    Label5.Caption := IntToStr(Linha);
    Application.ProcessMessages;
    if (linha > 6) then
      prc_Gravar_PlanoContabil;
  end;
  ShowMessage('Concluído!');
end;

function TfrmImportar_PlanoSage.XlsToStringGrid2(AGrid: TStringGrid;
  AXLSFile: string; WorkSheet: Integer): Boolean;
const
	xlCellTypeLastCell = $0000000B;
var
	XLApp, Sheet: OLEVariant;
	RangeMatrix: Variant;
	x, y, k, r: Integer;
begin
	Result := False;
	//Cria Excel- OLE Object
	XLApp  := CreateOleObject('Excel.Application');
	try
		//Esconde Excel
		XLApp.Visible:=False;

		//Abre o Workbook
		XLApp.Workbooks.Open(AXLSFile);

		//Setar na planilha desejada
		XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[WorkSheet].Activate;

		// Para saber a dimensão do WorkSheet (o número de linhas e de colunas),
		//selecionamos a última célula não vazia do worksheet
		Sheet :=  XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[WorkSheet];
		Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Select;

    //Pegar o número da última linha
    x:=XLApp.ActiveCell.Row;
		//x:=fDMExcel.cdsProduto.RecordCount;
    //Pegar o número da última coluna
		y:=XLApp.ActiveCell.Column;

		//Seta Stringgrid linha e coluna
		AGrid.RowCount:=x;
		AGrid.ColCount:=y;

		//Associa a variant WorkSheet com a variant do Delphi
		RangeMatrix:=XLApp.Range['A1', XLApp.Cells.Item[X, Y]].Value;

		//Cria o loop para listar os registros no TStringGrid
		k:=1;
		repeat
		  for r:=1 to y do
		  begin
			 AGrid.Cells[(r - 1),(k - 1)] := RangeMatrix[K, R];

			 //Redimensionar tamanho das colunas do grid dinamicamente
			 If (AGrid.ColWidths[r-1] < (Length(AGrid.Cells[(r - 1),(k - 1)]) * 8)) then
				AGrid.ColWidths[r-1] := Length(AGrid.Cells[(r - 1),(k - 1)]) * 8;

		  end;
		  Inc(k,1);
		until k > x;
		RangeMatrix := Unassigned;
	finally
		//Fecha o Excel
		if not VarIsEmpty(XLApp) then
		   begin
			  XLApp.Quit;
			  XLAPP:=Unassigned;
			  Sheet:=Unassigned;
			  Result:=True;
		   end;
	end;
end;

procedure TfrmImportar_PlanoSage.prc_Gravar_PlanoContabil;
var
  vcod_Reduzido: String;
  vNatureza: Integer;
  vCod_Contabil: String;
begin
  vcod_Reduzido := Monta_Numero(gGrid.Cells[1,Linha],0);
  vCod_Contabil := gGrid.Cells[0,Linha];
  if trim(vCod_Contabil) = '' then
    exit;
  if trim(SQLLocate('PLANO_CONTABIL','CODIGO','NOME',vCod_Contabil)) <> '' then
    exit;
  fDMCadPlano_Contabil.prc_Inserir;
  fDMCadPlano_Contabil.cdsPlano_ContabilCODIGO_REDUZIDO.AsString := vCod_Reduzido;
  if trim(vcod_Reduzido) = '' then
    fDMCadPlano_Contabil.cdsPlano_ContabilTIPO_REG.AsString := 'S'
  else
    fDMCadPlano_Contabil.cdsPlano_ContabilTIPO_REG.AsString := 'A';
  fDMCadPlano_Contabil.cdsPlano_ContabilCODIGO.AsString   := vCod_Contabil;
  fDMCadPlano_Contabil.cdsPlano_ContabilNOME.AsString     := gGrid.Cells[2,Linha];
  fDMCadPlano_Contabil.cdsPlano_ContabilNIVEL.AsInteger   := StrToIntDef(gGrid.Cells[3,Linha],0);
  fDMCadPlano_Contabil.cdsPlano_ContabilDT_CADASTRO.AsDateTime := Date;
  vNatureza := StrToIntDef(Copy(fDMCadPlano_Contabil.cdsPlano_ContabilCODIGO.AsString, 1, 1),0);
  case vNatureza of
    1 : fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 1;
    2 : fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 2;
    3 : fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 4;
    4 : fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 4;
    5 : fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 9;
    6 : fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 9;
    7 : fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 5;
  end;
  vNivelSuperior := fnc_Nivel_Superior(fDMCadPlano_Contabil.cdsPlano_ContabilCODIGO.AsString, fDMCadPlano_Contabil.cdsPlano_ContabilNIVEL.AsInteger);
  if vNivelSuperior > 0 then                                                                
    fDMCadPlano_Contabil.cdsPlano_ContabilSUPERIOR.AsInteger := vNivelSuperior;
  fDMCadPlano_Contabil.cdsPlano_ContabilINATIVO.AsString := 'N';
  fDMCadPlano_Contabil.cdsPlano_Contabil.Post;
  fDMCadPlano_Contabil.cdsPlano_Contabil.ApplyUpdates(0);
end;

end.

