unit UImportar_IBSCBS_Excel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask,
  ToolEdit, Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr, NxCollection,
  ExtCtrls, AdvPanel, ComObj, Grids;

type
  TfrmImportar_IBSCBS_Excel = class(TForm)
    pnlPrincipal: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FilenameEdit1: TFilenameEdit;
    btnImportar: TNxButton;
    Label4: TLabel;
    Label5: TLabel;
    sdsCT: TSQLDataSet;
    dspCT: TDataSetProvider;
    cdsCT: TClientDataSet;
    sdsCTID: TIntegerField;
    sdsCTCCLASSTRIB: TStringField;
    sdsCTDESCRICAO_CLASSTRIB: TStringField;
    sdsCTCST_IBS_CBS: TStringField;
    sdsCTFUNDAMENTO_LEGAL: TStringField;
    sdsCTTIPO_ALIQUOTA: TStringField;
    sdsCTPERCENTUAL_REDUCAO_IBS: TFMTBCDField;
    sdsCTPERCENTUAL_REDUCAO_CBS: TFMTBCDField;
    sdsCTIND_CREDITO_PERMITIDO: TStringField;
    sdsCTOBS: TMemoField;
    sdsCTDESCRICAO_CSTIBSCBS: TStringField;
    sdsCTNOME_CCLASTRIB: TStringField;
    sdsCTIND_REDUTORBC: TStringField;
    sdsCTIND_GTRIBREGULAR: TStringField;
    sdsCTIND_GCREDPRESOPER: TStringField;
    sdsCTIND_GMONOPADRAO: TStringField;
    sdsCTIND_GMONORETEN: TStringField;
    sdsCTIND_GMONORET: TStringField;
    sdsCTIND_GMONODIF: TStringField;
    sdsCTIND_GESTORNOCRED: TStringField;
    sdsCTCREDITO_PARA: TStringField;
    sdsCTDINIVIG: TDateField;
    sdsCTDFIMVIG: TDateField;
    sdsCTDATAATUALIZACAO: TDateField;
    sdsCTINDNFEABI: TStringField;
    sdsCTINDNFE: TStringField;
    sdsCTINDNFCE: TStringField;
    sdsCTINDCTE: TStringField;
    sdsCTINDCTEOS: TStringField;
    sdsCTINDBPE: TStringField;
    sdsCTINDBPETA: TStringField;
    sdsCTINDBPETM: TStringField;
    sdsCTINDNF3E: TStringField;
    sdsCTINDNFSE: TStringField;
    sdsCTINDNFSE_VIA: TStringField;
    sdsCTINDNFCOM: TStringField;
    sdsCTINDNFAG: TStringField;
    sdsCTINDNFGAS: TStringField;
    sdsCTINDDERE: TStringField;
    sdsCTANEXO: TStringField;
    cdsCTID: TIntegerField;
    cdsCTCCLASSTRIB: TStringField;
    cdsCTDESCRICAO_CLASSTRIB: TStringField;
    cdsCTCST_IBS_CBS: TStringField;
    cdsCTFUNDAMENTO_LEGAL: TStringField;
    cdsCTTIPO_ALIQUOTA: TStringField;
    cdsCTPERCENTUAL_REDUCAO_IBS: TFMTBCDField;
    cdsCTPERCENTUAL_REDUCAO_CBS: TFMTBCDField;
    cdsCTIND_CREDITO_PERMITIDO: TStringField;
    cdsCTOBS: TMemoField;
    cdsCTDESCRICAO_CSTIBSCBS: TStringField;
    cdsCTNOME_CCLASTRIB: TStringField;
    cdsCTIND_REDUTORBC: TStringField;
    cdsCTIND_GTRIBREGULAR: TStringField;
    cdsCTIND_GCREDPRESOPER: TStringField;
    cdsCTIND_GMONOPADRAO: TStringField;
    cdsCTIND_GMONORETEN: TStringField;
    cdsCTIND_GMONORET: TStringField;
    cdsCTIND_GMONODIF: TStringField;
    cdsCTIND_GESTORNOCRED: TStringField;
    cdsCTCREDITO_PARA: TStringField;
    cdsCTDINIVIG: TDateField;
    cdsCTDFIMVIG: TDateField;
    cdsCTDATAATUALIZACAO: TDateField;
    cdsCTINDNFEABI: TStringField;
    cdsCTINDNFE: TStringField;
    cdsCTINDNFCE: TStringField;
    cdsCTINDCTE: TStringField;
    cdsCTINDCTEOS: TStringField;
    cdsCTINDBPE: TStringField;
    cdsCTINDBPETA: TStringField;
    cdsCTINDBPETM: TStringField;
    cdsCTINDNF3E: TStringField;
    cdsCTINDNFSE: TStringField;
    cdsCTINDNFSE_VIA: TStringField;
    cdsCTINDNFCOM: TStringField;
    cdsCTINDNFAG: TStringField;
    cdsCTINDNFGAS: TStringField;
    cdsCTINDDERE: TStringField;
    cdsCTANEXO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImportarClick(Sender: TObject);
  private
    { Private declarations }
    gGrid: TStringGrid;
    vArquivo_XLS : String;
    Linha: Integer;

    procedure prc_Le_XLS;
    procedure prc_Gravar_CTIBSCBS;

    function XlsToStringGrid2(AGrid: TStringGrid; AXLSFile: string; WorkSheet: Integer): Boolean;
    function fnc_verifica_Arquivo(NomeArquivo, Le_Grava : String) : String;
    function Replace(Str, Ant, Novo: string): string;

    procedure salvar;

  public
    { Public declarations }
  end;

var
  frmImportar_IBSCBS_Excel: TfrmImportar_IBSCBS_Excel;

implementation

uses
  DmdDatabase, uUtilPadrao, StrUtils, UTransactionHelper;

{$R *.dfm}

procedure TfrmImportar_IBSCBS_Excel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmImportar_IBSCBS_Excel.btnImportarClick(Sender: TObject);
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    ShowMessage('Aquivo não informado!');
    exit;
  end;
  cdsCT.Open;
  gGrid := TStringGrid.Create(gGrid);
  try
    vArquivo_XLS := fnc_verifica_Arquivo(FilenameEdit1.Text,'L');
    XlsToStringGrid2(gGrid,vArquivo_XLS,1);
    prc_Le_XLS;
  finally
    FreeAndNil(gGrid);
  end;
  ShowMessage('Tabela CST IBS CSB Convertida!');
end;

function TfrmImportar_IBSCBS_Excel.fnc_verifica_Arquivo(NomeArquivo,
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

procedure TfrmImportar_IBSCBS_Excel.prc_Le_XLS;
begin
  Label3.Caption := IntToStr(gGrid.RowCount);
  Label5.Caption := '0';
  Linha := 0;
  while Linha < gGrid.RowCount -1 do
  begin
    Linha := Linha + 1;
    Label5.Caption := IntToStr(Linha);
    Application.ProcessMessages;
    //if (linha > 0) then
    prc_Gravar_CTIBSCBS;
  end;
  ShowMessage('Concluído!');
end;

function TfrmImportar_IBSCBS_Excel.Replace(Str, Ant, Novo: string): string;
var
  iPos: Integer;
begin
  while Pos(Ant, Str) > 0 do
  begin
    iPos := Pos(Ant, Str);
    Str := copy(Str, 1, iPos - 1) + Novo + copy(Str, iPos + 1, Length(Str) - iPos);
  end;
  Result := Str;
end;

function TfrmImportar_IBSCBS_Excel.XlsToStringGrid2(AGrid: TStringGrid;
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

procedure TfrmImportar_IBSCBS_Excel.prc_Gravar_CTIBSCBS;
var
  i, i2 : Integer;
  vTexto: String;
  vTexto2: String;
  vQtdAux: Real;
  vcod_Reduzido: String;
  vNatureza: Integer;
  vNome: String;
  vNivel: Integer;
  vCODCST: String;
  vCClassTrib: String;
  vIDCT: Integer;
begin
  vcodCST := gGrid.Cells[0,Linha];
  if (vCODCST = '210') or (vCODCST = '510') then
    exit;

  vCClassTrib := Monta_Numero(gGrid.Cells[2,Linha],6);

  vIDCT := StrToIntDef(SQLLocate('CT_IBS_CBS','CCLASSTRIB','ID',vCClassTrib),0);
  if vIDCT > 0 then
    exit;

  vIDCT := dmDatabase.fnc_Generator_ID('GEN_CT_IBS_CBS_ID',False);
  cdsCT.Insert;
  cdsCTID.AsInteger        := vIDCT;
  cdsCTCCLASSTRIB.AsString := vCClassTrib;
  cdsCTDESCRICAO_CSTIBSCBS.AsString := gGrid.Cells[1,Linha];
  cdsCTNOME_CCLASTRIB.AsString := gGrid.Cells[3,Linha];
  cdsCTDESCRICAO_CLASSTRIB.AsString := gGrid.Cells[4,Linha];
  cdsCTCST_IBS_CBS.AsString := vcodcst;
  cdsCTFUNDAMENTO_LEGAL.AsString := gGrid.Cells[5,Linha];
  cdsCTOBS.Value                 := gGrid.Cells[5,Linha];
  cdsCTTIPO_ALIQUOTA.AsString    := TirarAcento(gGrid.Cells[7,Linha]);
  vTexto2 := trim(gGrid.Cells[8,Linha]);
  vTexto2 := Replace(vTexto2,'.','');
  cdsCTPERCENTUAL_REDUCAO_IBS.AsString := trim(vTexto2);

  vTexto2 := trim(gGrid.Cells[9,Linha]);
  vTexto2 := Replace(vTexto2,'.','');
  cdsCTPERCENTUAL_REDUCAO_CBS.AsString := trim(vTexto2);

  cdsCTIND_REDUTORBC.AsString := trim(gGrid.Cells[10,Linha]);
  cdsCTIND_GTRIBREGULAR.AsString := trim(gGrid.Cells[11,Linha]);
  cdsCTIND_GCREDPRESOPER.AsString := trim(gGrid.Cells[12,Linha]);
  cdsCTIND_GMONOPADRAO.AsString := trim(gGrid.Cells[13,Linha]);
  cdsCTIND_GMONORETEN.AsString := trim(gGrid.Cells[14,Linha]);
  cdsCTIND_GMONORET.AsString := trim(gGrid.Cells[15,Linha]);
  cdsCTIND_GMONODIF.AsString := trim(gGrid.Cells[16,Linha]);
  cdsCTIND_GESTORNOCRED.AsString := trim(gGrid.Cells[17,Linha]);
  cdsCTCREDITO_PARA.AsString := trim(gGrid.Cells[18,Linha]);
  vTexto2 := trim(gGrid.Cells[19,Linha]);
  if trim(vTexto2) <> '' then
    cdsCTDINIVIG.AsString := vTexto2;
  vTexto2 := trim(gGrid.Cells[20,Linha]);
  if trim(vTexto2) <> '' then
    cdsCTDFIMVIG.AsString := vTexto2;
  vTexto2 := trim(gGrid.Cells[21,Linha]);
  if trim(vTexto2) <> '' then
    cdsCTDATAATUALIZACAO.AsString := vTexto2;
  cdsCTINDNFEABI.AsString  := trim(gGrid.Cells[22,Linha]);
  cdsCTINDNFE.AsString     := trim(gGrid.Cells[23,Linha]);
  cdsCTINDNFCE.AsString    := trim(gGrid.Cells[24,Linha]);
  cdsCTINDCTE.AsString     := trim(gGrid.Cells[25,Linha]);
  cdsCTINDCTEOS.AsString   := trim(gGrid.Cells[26,Linha]);
  cdsCTINDBPE.AsString     := trim(gGrid.Cells[27,Linha]);
  cdsCTINDBPETA.AsString   := trim(gGrid.Cells[28,Linha]);
  cdsCTINDBPETM.AsString   := trim(gGrid.Cells[29,Linha]);
  cdsCTINDNF3E.AsString    := trim(gGrid.Cells[30,Linha]);
  cdsCTINDNFSE.AsString    := trim(gGrid.Cells[31,Linha]);
  cdsCTINDNFSE_VIA.AsString := trim(gGrid.Cells[32,Linha]);
  cdsCTINDNFCOM.AsString   := trim(gGrid.Cells[33,Linha]);
  cdsCTINDNFAG.AsString    := trim(gGrid.Cells[34,Linha]);
  cdsCTINDNFGAS.AsString   := trim(gGrid.Cells[35,Linha]);
  cdsCTINDDERE.AsString    := trim(gGrid.Cells[36,Linha]);
  cdsCTANEXO.AsString      := trim(gGrid.Cells[37,Linha]);
  cdsCT.Post;
  cdsCT.ApplyUpdates(0);
end;

procedure TfrmImportar_IBSCBS_Excel.salvar;
begin
end;

end.

