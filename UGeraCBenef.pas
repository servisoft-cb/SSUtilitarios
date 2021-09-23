unit UGeraCBenef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, FMTBcd, DB, SqlExpr, Provider,
  DBClient, CurrEdit, NxCollection, Grids, ComObj;

type
  TfrmGeraCBenef = class(TForm)
    Label2: TLabel;
    FilenameEdit1: TFilenameEdit;
    sdsCBenef: TSQLDataSet;
    dspCBenef: TDataSetProvider;
    sdsCBenefID: TIntegerField;
    sdsCBenefCODIGO: TStringField;
    sdsCBenefUF: TStringField;
    sdsCBenefDESCRICAO: TStringField;
    sdsCBenefOBS: TStringField;
    sdsCBenefDTINICIO: TDateField;
    sdsCBenefDTFINAL: TDateField;
    sdsCBenefCST_00: TStringField;
    sdsCBenefCST_10: TStringField;
    sdsCBenefCST_20: TStringField;
    sdsCBenefCST_30: TStringField;
    sdsCBenefCST_40: TStringField;
    sdsCBenefCST_41: TStringField;
    sdsCBenefCST_50: TStringField;
    sdsCBenefCST_51: TStringField;
    sdsCBenefCST_60: TStringField;
    sdsCBenefCST_70: TStringField;
    sdsCBenefCST_90: TStringField;
    cdsCBenef: TClientDataSet;
    cdsCBenefID: TIntegerField;
    cdsCBenefCODIGO: TStringField;
    cdsCBenefUF: TStringField;
    cdsCBenefDESCRICAO: TStringField;
    cdsCBenefOBS: TStringField;
    cdsCBenefDTINICIO: TDateField;
    cdsCBenefDTFINAL: TDateField;
    cdsCBenefCST_00: TStringField;
    cdsCBenefCST_10: TStringField;
    cdsCBenefCST_20: TStringField;
    cdsCBenefCST_30: TStringField;
    cdsCBenefCST_40: TStringField;
    cdsCBenefCST_41: TStringField;
    cdsCBenefCST_50: TStringField;
    cdsCBenefCST_51: TStringField;
    cdsCBenefCST_60: TStringField;
    cdsCBenefCST_70: TStringField;
    cdsCBenefCST_90: TStringField;
    dsCBenef: TDataSource;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    NxButton1: TNxButton;
    qMax: TSQLQuery;
    qMaxID: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    vArquivo_XLS : String;
    Linha : Integer;
    gGrid: TStringGrid;

    function fnc_verifica_Arquivo(NomeArquivo, Le_Grava : String) : String;
    function XlsToStringGrid2(AGrid: TStringGrid; AXLSFile: string; WorkSheet: Integer): Boolean;
    procedure prc_Le_Arq_Planilha;
    function Monta_Numero(Campo: String; Tamanho: Integer): String;

  public
    { Public declarations }
  end;

var
  frmGeraCBenef: TfrmGeraCBenef;

implementation

uses DmdDatabase, StdConvs;

{$R *.dfm}

function TfrmGeraCBenef.fnc_verifica_Arquivo(NomeArquivo,
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

procedure TfrmGeraCBenef.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

function TfrmGeraCBenef.Monta_Numero(Campo: String;
  Tamanho: Integer): String;
var
  texto2: String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

procedure TfrmGeraCBenef.NxButton1Click(Sender: TObject);
begin
  gGrid := TStringGrid.Create(gGrid);
  vArquivo_XLS := fnc_verifica_Arquivo(FilenameEdit1.Text,'L');
  XlsToStringGrid2(gGrid,vArquivo_XLS,1);
  prc_Le_Arq_Planilha;
  FreeAndNil(gGrid);
end;

procedure TfrmGeraCBenef.prc_Le_Arq_Planilha;
var
  vTexto1 : String;
  vCont : Integer;
  vID_CBenef : Integer;
  sds: TSQLDataSet;
begin
  vCont := 0;
  Linha := 0;
  qMax.Close;
  qMax.Open;
  vID_CBenef := qMaxID.AsInteger;

  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'DELETE FROM CBENEF';
    sds.ExecSQL;
  finally
    FreeAndNil(sds);
  end;

  while Linha < gGrid.RowCount -1 do
  begin
    Linha := Linha + 1;
    if Linha > 1 then
    begin
      try
        vTexto1 := gGrid.Cells[0,Linha];
        if trim(copy(vTexto1,1,2)) = 'RS' then
        begin
          vCont := vCont + 1;
          CurrencyEdit1.AsInteger := vCont;
          
          cdsCBenef.Close;
          sdsCBenef.ParamByName('CODIGO').AsString := trim(vTexto1);
          cdsCBenef.Open;
          if not cdsCBenef.IsEmpty then
            cdsCBenef.Edit
          else
          begin
            vID_CBenef := vID_CBenef + 1;
            cdsCBenef.Insert;
            cdsCBenefID.AsInteger    := vID_CBenef;
            cdsCBenefCODIGO.AsString := gGrid.Cells[0,Linha];
            cdsCBenefUF.AsString     := 'RS';
          end;
          cdsCBenefDESCRICAO.AsString := gGrid.Cells[14,Linha];
          cdsCBenefOBS.AsString       := gGrid.Cells[15,Linha];
          vTexto1 := Monta_Numero(gGrid.Cells[12,Linha],0);
          if trim(vTexto1) <> '' then
          begin
            vTexto1 := Monta_Numero(vTexto1,8);
            vTexto1 := copy(vTexto1,1,2) + '/' + copy(vTexto1,3,2) + '/' + copy(vTexto1,5,4);
            cdsCBenefDTINICIO.AsString := vTexto1;
          end;
          vTexto1 := Monta_Numero(gGrid.Cells[13,Linha],0);
          if trim(vTexto1) <> '' then
          begin
            vTexto1 := Monta_Numero(vTexto1,8);
            vTexto1 := copy(vTexto1,1,2) + '/' + copy(vTexto1,3,2) + '/' + copy(vTexto1,5,4);
            cdsCBenefDTFINAL.AsString := vTexto1;
          end;
          vTexto1 := gGrid.Cells[1,Linha];
          if trim(vTexto1) = 'SIM' then
            cdsCBenefCST_00.AsString := 'S';
          vTexto1 := gGrid.Cells[2,Linha];
          if trim(vTexto1) = 'SIM' then
            cdsCBenefCST_10.AsString := 'S';
          vTexto1 := gGrid.Cells[3,Linha];
          if trim(vTexto1) = 'SIM' then
            cdsCBenefCST_20.AsString := 'S';
          vTexto1 := gGrid.Cells[4,Linha];
          if trim(vTexto1) = 'SIM' then
            cdsCBenefCST_30.AsString := 'S';
          vTexto1 := gGrid.Cells[5,Linha];
          if trim(vTexto1) = 'SIM' then
            cdsCBenefCST_40.AsString := 'S';
          vTexto1 := gGrid.Cells[6,Linha];
          if trim(vTexto1) = 'SIM' then
            cdsCBenefCST_41.AsString := 'S';
          vTexto1 := gGrid.Cells[7,Linha];
          if trim(vTexto1) = 'SIM' then
            cdsCBenefCST_50.AsString := 'S';
          vTexto1 := gGrid.Cells[8,Linha];
          if trim(vTexto1) = 'SIM' then
            cdsCBenefCST_51.AsString := 'S';
          vTexto1 := gGrid.Cells[9,Linha];
          if trim(vTexto1) = 'SIM' then
            cdsCBenefCST_60.AsString := 'S';
          vTexto1 := gGrid.Cells[10,Linha];
          if trim(vTexto1) = 'SIM' then
            cdsCBenefCST_70.AsString := 'S';
          vTexto1 := gGrid.Cells[11,Linha];
          if trim(vTexto1) = 'SIM' then
            cdsCBenefCST_90.AsString := 'S';
          cdsCBenef.Post;
          cdsCBenef.ApplyUpdates(0);
        end;
      except
        on e: Exception do
        ShowMessage('Ocorreu o seguinte erro ao gravar, CBENEF ' + cdsCBenefCODIGO.AsString  + ', na linha ' + IntToStr(linha) + ' :' + #13 + e.Message);
      end;
    end;
  end;
  MessageDlg('Tabela CBENEF gravada!', mtInformation, [mbOk], 0);
end;

function TfrmGeraCBenef.XlsToStringGrid2(AGrid: TStringGrid; AXLSFile: string;
  WorkSheet: Integer): Boolean;
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

end.
