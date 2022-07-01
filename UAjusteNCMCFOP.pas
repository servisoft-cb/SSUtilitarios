unit UAjusteNCMCFOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, FMTBcd, DB, SqlExpr, Provider,
  DBClient, CurrEdit, NxCollection, Grids, ComObj, UDMAjustarNCMCFOP;

type
  TfrmAjusteNCMCFOP = class(TForm)
    Label2: TLabel;
    FilenameEdit1: TFilenameEdit;
    Label1: TLabel;
    ceTotal: TCurrencyEdit;
    NxButton1: TNxButton;
    DirectoryEdit1: TDirectoryEdit;
    Label3: TLabel;
    Label4: TLabel;
    ceLidos: TCurrencyEdit;
    Label5: TLabel;
    FilenameEdit2: TFilenameEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fDMAjustarNCMCFOP : TDMAjustarNCMCFOP;

    vArquivo_XLS : String;
    Linha : Integer;
    gGrid: TStringGrid;

    function fnc_verifica_Arquivo(NomeArquivo, Le_Grava : String) : String;
    function XlsToStringGrid2(AGrid: TStringGrid; AXLSFile: string; WorkSheet: Integer): Boolean;
    procedure prc_Le_Arq_Planilha;
    procedure prc_Le_Arq_Planilha2;
    procedure prc_Le_Arquivo_CSV;
    function Monta_Numero(Campo: String; Tamanho: Integer): String;

  public
    { Public declarations }
  end;

var
  frmAjusteNCMCFOP: TfrmAjusteNCMCFOP;

implementation

uses DmdDatabase, StdConvs, rsDBUtils, uUtilPadrao;

{$R *.dfm}

function TfrmAjusteNCMCFOP.fnc_verifica_Arquivo(NomeArquivo,
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

procedure TfrmAjusteNCMCFOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

function TfrmAjusteNCMCFOP.Monta_Numero(Campo: String;
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

procedure TfrmAjusteNCMCFOP.NxButton1Click(Sender: TObject);
begin
  if (trim(FilenameEdit1.Text) = '') and (trim(FilenameEdit2.Text) = '') then
  begin
    MessageDlg('*** Arquivo Excel ou CSV não informado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if trim(DirectoryEdit1.Text) = '' then
  begin
    MessageDlg('*** Pasta para gravar o txt não informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if copy(DirectoryEdit1.Text,1,Length(DirectoryEdit1.Text)) <> '\' then
    DirectoryEdit1.Text := DirectoryEdit1.Text + '\';
  if trim(FilenameEdit1.Text) <> '' then
  begin
    gGrid := TStringGrid.Create(gGrid);
    vArquivo_XLS := fnc_verifica_Arquivo(FilenameEdit1.Text,'L');
    XlsToStringGrid2(gGrid,vArquivo_XLS,1);
    //prc_Le_Arq_Planilha;
    prc_Le_Arq_Planilha2;
    FreeAndNil(gGrid);
  end
  else
  begin
    vArquivo_XLS := fnc_verifica_Arquivo(FilenameEdit2.Text,'L');
    prc_Le_Arquivo_CSV;
  end;
end;

procedure TfrmAjusteNCMCFOP.prc_Le_Arq_Planilha;
var
  vTexto1 : String;
  vCont : Integer;
  vID_CBenef : Integer;
  sds: TSQLDataSet;
  vID_CFOP5405 : Integer;
  Form: TForm;
begin
  vTexto1 := SQLLocate('TAB_CFOP','CODCFOP','ID','5405');
  if trim(vTexto1) = '' then
  begin
    MessageDlg('Não encontrou a CFOP 5405 no cadastro da CFOP!', mtInformation, [mbOk], 0);
    exit;
  end;
  vID_CFOP5405 := StrToInt(vTexto1);

  ceTotal.AsInteger := gGrid.RowCount;
  vCont := 0;
  Linha := 0;
  Form := TForm.Create(Application);
  sds := TSQLDataSet.Create(nil);
  try
    uUtilPadrao.prc_Form_Aguarde(Form);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    while Linha < gGrid.RowCount -1 do
    begin
      Linha := Linha + 1;
      ceLidos.AsInteger := Linha;
      Application.ProcessMessages;
      try
        vTexto1 := gGrid.Cells[0,Linha];
        fDMAjustarNCMCFOP.cdsTab_NCM.Close;
        fDMAjustarNCMCFOP.sdsTab_NCM.ParamByName('NCM').AsString := vTexto1 + '%';
        fDMAjustarNCMCFOP.cdsTab_NCM.Open;
        fDMAjustarNCMCFOP.cdsTab_NCM.First;
        while not fDMAjustarNCMCFOP.cdsTab_NCM.Eof do
        begin
          sds.Close;
          sds.CommandText := 'update PRODUTO P set P.ID_CFOP_NFCE = null, '
                           + '   P.ID_CSTICMS = null '
                           + 'where P.ID_CFOP_NFCE = :ID_CFOP and '
                           + '      P.ID_NCM = :ID_NCM ';
          sds.ParamByName('ID_CFOP').AsInteger := vID_CFOP5405;
          sds.ParamByName('ID_NCM').AsInteger  := fDMAjustarNCMCFOP.cdsTab_NCMID.AsInteger;
          sds.ExecSQL;

          if fDMAjustarNCMCFOP.cdsTab_NCMID_CFOP.AsInteger = vID_CFOP5405 then
          begin
            sds.Close;
            sds.CommandText := 'update TAB_NCM N set N.ID_CFOP = null, '
                             + '    N.ID_CST_ICMS = null '
                             + 'where N.ID = :ID ';
            sds.ParamByName('ID').AsInteger := fDMAjustarNCMCFOP.cdsTab_NCMID.AsInteger;
            sds.ExecSQL;
          end;
          fDMAjustarNCMCFOP.cdsTab_NCM.Next;
        end;
      except
        on e: Exception do
        ShowMessage('Ocorreu o seguinte erro ao gravar, Produto / NCM ' + fDMAjustarNCMCFOP.cdsTab_NCMID.AsString  + ', na linha ' + IntToStr(linha) + ' :' + #13 + e.Message);
      end;
    end;
  finally
    FreeAndNil(sds);
    FreeAndNil(Form);
  end;
  MessageDlg('NCM/CFOP Ajustados!', mtConfirmation, [mbOk], 0);
end;

function TfrmAjusteNCMCFOP.XlsToStringGrid2(AGrid: TStringGrid; AXLSFile: string;
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

procedure TfrmAjusteNCMCFOP.FormShow(Sender: TObject);
begin
  fDMAjustarNCMCFOP := TDMAjustarNCMCFOP.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMAjustarNCMCFOP);
end;

procedure TfrmAjusteNCMCFOP.prc_Le_Arq_Planilha2;
var
  vTexto1 : String;
  vCont : Integer;
  vID_CBenef : Integer;
  sds: TSQLDataSet;
  vID_CFOP5405 : Integer;
  Form: TForm;
  vArqTxt: TStringList;
begin
  vTexto1 := SQLLocate('TAB_CFOP','CODCFOP','ID','5405');
  if trim(vTexto1) = '' then
  begin
    MessageDlg('Não encontrou a CFOP 5405 no cadastro da CFOP!', mtInformation, [mbOk], 0);
    exit;
  end;
  vID_CFOP5405 := StrToInt(vTexto1);
  ceTotal.AsInteger := gGrid.RowCount;
  vCont := 0;
  Linha := 0;
  vArqTxt := TStringList.Create;
  Form := TForm.Create(Application);
  sds := TSQLDataSet.Create(nil);
  try
    uUtilPadrao.prc_Form_Aguarde(Form);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    while Linha < gGrid.RowCount -1 do
    begin
      Linha := Linha + 1;
      ceLidos.AsInteger := Linha;
      Application.ProcessMessages;
      try
        vTexto1 := gGrid.Cells[0,Linha];
        if trim(vTexto1) <> '' then
        begin
          fDMAjustarNCMCFOP.cdsTab_NCM.Close;
          fDMAjustarNCMCFOP.sdsTab_NCM.ParamByName('NCM').AsString := vTexto1 + '%';
          fDMAjustarNCMCFOP.cdsTab_NCM.Open;
          fDMAjustarNCMCFOP.cdsTab_NCM.First;
          while not fDMAjustarNCMCFOP.cdsTab_NCM.Eof do
          begin
            fDMAjustarNCMCFOP.cdsProduto.Close;
            fDMAjustarNCMCFOP.sdsProduto.ParamByName('ID_NCM').AsInteger := fDMAjustarNCMCFOP.cdsTab_NCMID.AsInteger;
            fDMAjustarNCMCFOP.cdsProduto.Open;
            fDMAjustarNCMCFOP.cdsProduto.First;
            while not fDMAjustarNCMCFOP.cdsProduto.Eof do
            begin
              if fDMAjustarNCMCFOP.cdsProdutoID_CFOP_NFCE.AsInteger = vID_CFOP5405 then
              begin
                vArqTxt.Add('Produto: ' + fDMAjustarNCMCFOP.cdsProdutoID.AsString + '  CFOP: ' + '5405   foi deixada em branco' );
                fDMAjustarNCMCFOP.cdsProduto.Edit;
                fDMAjustarNCMCFOP.cdsProdutoID_CFOP_NFCE.Clear;
                fDMAjustarNCMCFOP.cdsProdutoID_CSTICMS.Clear;
                fDMAjustarNCMCFOP.cdsProduto.Post;
                fDMAjustarNCMCFOP.cdsProduto.ApplyUpdates(0);
              end;
              fDMAjustarNCMCFOP.cdsProduto.Next;
            end;
            if fDMAjustarNCMCFOP.cdsTab_NCMID_CFOP.AsInteger = vID_CFOP5405 then
            begin
              vArqTxt.Add('NCM: ' + fDMAjustarNCMCFOP.cdsTab_NCMID.AsString  + '  NCM: ' + fDMAjustarNCMCFOP.cdsTab_NCMNCM.AsString + ' CFOP: ' + '5405   foi deixada em branco' );
              sds.Close;
              sds.CommandText := 'update TAB_NCM N set N.ID_CFOP = null, '
                               + '    N.ID_CST_ICMS = null '
                               + 'where N.ID = :ID ';
              sds.ParamByName('ID').AsInteger := fDMAjustarNCMCFOP.cdsTab_NCMID.AsInteger;
              sds.ExecSQL;
            end;
            fDMAjustarNCMCFOP.cdsTab_NCM.Next;
          end;
        end;
      except
        on e: Exception do
        ShowMessage('Ocorreu o seguinte erro ao gravar, Produto / NCM ' + fDMAjustarNCMCFOP.cdsTab_NCMID.AsString  + ', na linha ' + IntToStr(linha) + ' :' + #13 + e.Message);
      end;
    end;
  finally
    begin
      vArqTxt.SaveToFile(DirectoryEdit1.Text + 'AjusteNCMCFOP.txt');
      FreeAndNil(sds);
      FreeAndNil(Form);
      FreeAndNil(vArqTxt);
    end;
  end;
  MessageDlg('NCM/CFOP Ajustados!', mtConfirmation, [mbOk], 0);
end;

procedure TfrmAjusteNCMCFOP.prc_Le_Arquivo_CSV;
var
  vTexto1 : String;
  vCont : Integer;
  sds: TSQLDataSet;
  vID_CFOP5405 : Integer;
  Form: TForm;
  vArqTxt: TStringList;
  vArqCSV: TStringList;
  i: Integer;
begin
  vTexto1 := SQLLocate('TAB_CFOP','CODCFOP','ID','5405');
  if trim(vTexto1) = '' then
  begin
    MessageDlg('Não encontrou a CFOP 5405 no cadastro da CFOP!', mtInformation, [mbOk], 0);
    exit;
  end;
  vID_CFOP5405 := StrToInt(vTexto1);
  vArqCSV := TStringList.Create;
  vArqCSV.LoadFromFile(vArquivo_XLS);
  ceTotal.AsInteger := vArqCSV.Count;
  vCont := 0;
  Linha := 0;
  vArqTxt := TStringList.Create;
  Form := TForm.Create(Application);
  sds := TSQLDataSet.Create(nil);
  try
    uUtilPadrao.prc_Form_Aguarde(Form);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    for i := 0 to vArqCSV.Count - 1 do
    begin
      Linha := Linha + 1;
      ceLidos.AsInteger := Linha;
      Application.ProcessMessages;
      try
        vTexto1 := trim(vArqCSV.Strings[i]);
        if trim(vTexto1) <> '' then
        begin
          fDMAjustarNCMCFOP.cdsTab_NCM.Close;
          fDMAjustarNCMCFOP.sdsTab_NCM.ParamByName('NCM').AsString := vTexto1 + '%';
          fDMAjustarNCMCFOP.cdsTab_NCM.Open;
          fDMAjustarNCMCFOP.cdsTab_NCM.First;
          while not fDMAjustarNCMCFOP.cdsTab_NCM.Eof do
          begin
            fDMAjustarNCMCFOP.cdsProduto.Close;
            fDMAjustarNCMCFOP.sdsProduto.ParamByName('ID_NCM').AsInteger := fDMAjustarNCMCFOP.cdsTab_NCMID.AsInteger;
            fDMAjustarNCMCFOP.cdsProduto.Open;
            fDMAjustarNCMCFOP.cdsProduto.First;
            while not fDMAjustarNCMCFOP.cdsProduto.Eof do
            begin
              if fDMAjustarNCMCFOP.cdsProdutoID_CFOP_NFCE.AsInteger = vID_CFOP5405 then
              begin
                vArqTxt.Add('Produto: ' + fDMAjustarNCMCFOP.cdsProdutoID.AsString + '  CFOP: ' + '5405   foi deixada em branco' );
                fDMAjustarNCMCFOP.cdsProduto.Edit;
                fDMAjustarNCMCFOP.cdsProdutoID_CFOP_NFCE.Clear;
                fDMAjustarNCMCFOP.cdsProdutoID_CSTICMS.Clear;
                fDMAjustarNCMCFOP.cdsProduto.Post;
                fDMAjustarNCMCFOP.cdsProduto.ApplyUpdates(0);
              end;
              fDMAjustarNCMCFOP.cdsProduto.Next;
            end;
            if fDMAjustarNCMCFOP.cdsTab_NCMID_CFOP.AsInteger = vID_CFOP5405 then
            begin
              vArqTxt.Add('NCM: ' + fDMAjustarNCMCFOP.cdsTab_NCMID.AsString  + '  NCM: ' + fDMAjustarNCMCFOP.cdsTab_NCMNCM.AsString + ' CFOP: ' + '5405   foi deixada em branco' );
              sds.Close;
              sds.CommandText := 'update TAB_NCM N set N.ID_CFOP = null, '
                               + '    N.ID_CST_ICMS = null '
                               + 'where N.ID = :ID ';
              sds.ParamByName('ID').AsInteger := fDMAjustarNCMCFOP.cdsTab_NCMID.AsInteger;
              sds.ExecSQL;
            end;
            fDMAjustarNCMCFOP.cdsTab_NCM.Next;
          end;
        end;
      except
        on e: Exception do
        ShowMessage('Ocorreu o seguinte erro ao gravar, Produto / NCM ' + fDMAjustarNCMCFOP.cdsTab_NCMID.AsString  + ', na linha ' + IntToStr(linha) + ' :' + #13 + e.Message);
      end;
    end;
  finally
    begin
      vArqTxt.SaveToFile(DirectoryEdit1.Text + 'AjusteNCMCFOP.txt');
      FreeAndNil(sds);
      FreeAndNil(Form);
      FreeAndNil(vArqTxt);
      FreeAndNil(vArqCSV);
    end;
  end;
  MessageDlg('NCM/CFOP Ajustados!', mtConfirmation, [mbOk], 0);
end;

end.
