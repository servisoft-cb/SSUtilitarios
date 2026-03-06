unit uConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, IniFiles, Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, SMDBGrid, RxLookup,
  Mask, ToolEdit, ExtCtrls, DBXpress, DB, SqlExpr, IdBaseComponent,
  IdCoder, IdCoder3to4, IdCoderMIME, FMTBcd, DBClient, Provider;

type
  TfConsulta = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Edit1: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    Edit3: TEdit;
    Label8: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    SMDBGrid1: TSMDBGrid;
    DBMemo1: TDBMemo;
    scoLog: TSQLConnection;
    Decoder64: TIdDecoderMIME;
    sdsTabelas: TSQLDataSet;
    dspTabelas: TDataSetProvider;
    cdsTabelas: TClientDataSet;
    dsTabelas: TDataSource;
    cdsTabelasNOME_TABELA: TStringField;
    sdsLog: TSQLDataSet;
    dspLog: TDataSetProvider;
    cdsLog: TClientDataSet;
    dsLog: TDataSource;
    cdsLogID_LOG: TIntegerField;
    cdsLogNOME_TABELA: TStringField;
    cdsLogOPERACAO: TIntegerField;
    cdsLogUSUARIO: TStringField;
    cdsLogDATA_OPERACAO: TDateField;
    cdsLogHORA_OPERACAO: TTimeField;
    cdsLogLOG: TMemoField;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ctLog: String;
    function fnc_ArquivoConfiguracao: string;
  public
    { Public declarations }
  end;

var
  fConsulta: TfConsulta;

implementation

{$R *.dfm}

const
  cArquivoConfiguracao = 'Config.ini';

function TfConsulta.Fnc_ArquivoConfiguracao: string;
begin
  Result := ExtractFilePath(Application.ExeName) + cArquivoConfiguracao;
end;

procedure TfConsulta.FormShow(Sender: TObject);
var
  Config: TIniFile;
  vTexto: string;
  vVendorLib: String;
begin
  scoLog.KeepConnection := True;
  vTexto := Fnc_ArquivoConfiguracao;
  if not FileExists(Fnc_ArquivoConfiguracao) then
  begin
    MessageDlg(' Arquivo Config.ini não encontrado!',mtInformation,[mbOk],0);
    Exit;
  end;

  Config := TIniFile.Create(Fnc_ArquivoConfiguracao);
  scoLog.LoadParamsFromIniFile(Fnc_ArquivoConfiguracao);
//////////////////CONECTA AO BANCO DE DADOS DA APLICAÇÃO
    try
      scoLog.Params.Values['DRIVERNAME'] := 'INTERBASE';
      scoLog.Params.Values['SQLDIALECT'] := '3';
      scoLog.Params.Values['DATABASE']   := Config.ReadString('bando de dados', 'DATABASE', '');
      scoLog.Params.Values['USER_NAME']  := Config.ReadString('bando de dados', 'USERNAME', '');
      scoLog.Params.Values['PASSWORD']   := Decoder64.DecodeString(Config.ReadString('bando de dados', 'PASSWORD', ''));
      vVendorLib := Config.ReadString('bando de dados', 'VendorLib', '');
      if trim(vVendorLib) <> '' then
        scoLog.VendorLib := vVendorLib;
      scoLog.Connected := True;
    except
      on E: exception do
      begin
        MessageDlg('Erro ao conectar ao banco de dados do Servidor (NFCe Local):' + #13 +
                   'Mensagem: ' + E.Message + #13 +
                   'Classe: ' + E.ClassName + #13 + #13 +
                   'Dados da Conexao SSFacil ' + #13 +
                   'Banco de Dados: '  + scoLog.Params.Values['Database'] + #13 +
                   'Usuário: '         + scoLog.Params.Values['User_Name'],mtInformation,[mbOk],0);
        Application.Terminate;
      end;
    end;
  Memo1.Lines.Add(Config.ReadString('bando de dados', 'DATABASE', ''));
  ComboBox1.ItemIndex := 0;
  ctLog := sdsLog.CommandText;
  cdsTabelas.Close;
  cdsTabelas.Open;
end;

procedure TfConsulta.Button1Click(Sender: TObject);
begin
  cdsLog.Close;
  sdsLog.CommandText := ctLog;
  sdsLog.CommandText := sdsLog.CommandText + #13#10;
  if DateEdit1.Date > 10 then
  begin
    sdsLog.CommandText := sdsLog.CommandText + ' AND DATA_OPERACAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.Date));
    sdsLog.CommandText := sdsLog.CommandText + #13#10;
  end;
  if DateEdit2.Date > 10 then
  begin
    sdsLog.CommandText := sdsLog.CommandText + ' AND DATA_OPERACAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.Date));
    sdsLog.CommandText := sdsLog.CommandText + #13#10;
  end;
  if ComboBox1.ItemIndex > 0 then
  begin
    sdsLog.CommandText := sdsLog.CommandText + ' AND OPERACAO = ' + QuotedStr(IntToStr(ComboBox1.ItemIndex - 1));
    sdsLog.CommandText := sdsLog.CommandText + #13#10;
  end;
  if Edit1.Text <> 'ID: ' then
  begin
    sdsLog.CommandText := sdsLog.CommandText + ' AND LOG LIKE ''%' + Edit1.Text + '%''';
    sdsLog.CommandText := sdsLog.CommandText + #13#10;
  end;
  if Trim(Edit2.Text) <> '' then
  begin
    sdsLog.CommandText := sdsLog.CommandText + ' AND LOG LIKE ''%' + Edit2.Text + '%''';
    sdsLog.CommandText := sdsLog.CommandText + #13#10;
  end;
  if Trim(Edit3.Text) <> '' then
  begin
    sdsLog.CommandText := sdsLog.CommandText + ' AND LOG LIKE ''%' + Edit3.Text + '%''';
    sdsLog.CommandText := sdsLog.CommandText + #13#10;
  end;
  if Trim(Edit4.Text) <> '' then
  begin
    sdsLog.CommandText := sdsLog.CommandText + ' AND LOG LIKE ''%' + Edit4.Text + '%''';
    sdsLog.CommandText := sdsLog.CommandText + #13#10;
  end;
  sdsLog.ParamByName('TABELA').AsString := rxDBLookupCombo1.Text;
  Memo1.Text := sdsLog.CommandText;
  cdsLog.Open;
end;

procedure TfConsulta.FormCreate(Sender: TObject);
begin
  scoLog.Connected := False;
end;

end.
