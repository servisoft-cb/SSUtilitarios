unit ULeEstoque_Mov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, UDMEstoqueUtil;

type
  TfrmLeEstoque_Mov = class(TForm)
    BitBtn1: TBitBtn;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fDMEstoqueUtil: TDMEstoqueUtil;

  public
    { Public declarations }
  end;

var
  frmLeEstoque_Mov: TfrmLeEstoque_Mov;

implementation

uses rsDBUtils;


{$R *.dfm}

procedure TfrmLeEstoque_Mov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmLeEstoque_Mov.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Confirma a geração do Estoque?',mtConfirmation,[mbOk,mbNo],0) <> mrYes then
    exit;

  Label2.Caption := '... Aguarde, limpando a tabela ESTOQUE_ATUAL ...';
  Label2.Refresh;
  Refresh;

  fDMEstoqueUtil.qParametros.Close;
  fDMEstoqueUtil.qParametros.Open;

  fDMEstoqueUtil.qParametros_Prod.Close;
  fDMEstoqueUtil.qParametros_Prod.Open;

  fDMEstoqueUtil.prc_Limpar_Estoque_Atual;

  Label2.Caption := '... Aguarde, lendo a tabela Estoque_Mov ... ';
  Label2.Refresh;
  Refresh;

  fDMEstoqueUtil.cdsEstoque_Atual.Close;
  fDMEstoqueUtil.cdsEstoque_Atual.Open;

  fDMEstoqueUtil.cdsEstoque_Mov.Close;
  fDMEstoqueUtil.cdsEstoque_Mov.Open;
  ProgressBar1.Max := fDMEstoqueUtil.cdsEstoque_Mov.RecordCount;
  ProgressBar1.Position := 0;

  fDMEstoqueUtil.cdsEstoque_Mov.First;
  while not fDMEstoqueUtil.cdsEstoque_Mov.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    Refresh;
    fDMEstoqueUtil.prc_Gravar_Estoque_Atual;
    fDMEstoqueUtil.cdsEstoque_Mov.Next;
  end;

  Label2.Caption := 'Estoque Gerado';
  Label2.Refresh;
  Refresh;
  ShowMessage('Estoque Gerado!');
end;

procedure TfrmLeEstoque_Mov.FormShow(Sender: TObject);
begin
  fDMEstoqueUtil := TDMEstoqueUtil.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMEstoqueUtil);
end;

end.
