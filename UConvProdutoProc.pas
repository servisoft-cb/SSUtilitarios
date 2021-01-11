unit UConvProdutoProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMProdutoProcesso, NxCollection, ComCtrls;

type
  TfrmConvProdutoProc = class(TForm)
    NxButton1: TNxButton;
    ProgressBar1: TProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    fDMProdutoProcesso: TDMProdutoProcesso;
    
  public
    { Public declarations }
  end;

var
  frmConvProdutoProc: TfrmConvProdutoProc;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfrmConvProdutoProc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConvProdutoProc.FormShow(Sender: TObject);
begin
  fDMProdutoProcesso := TDMProdutoProcesso.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMProdutoProcesso);
end;

procedure TfrmConvProdutoProc.NxButton1Click(Sender: TObject);
var
  vItem : Integer;
  vIDAnt : Integer;
begin
  vItem  := 0;
  vIDAnt := 0;
  fDMProdutoProcesso.cdsConsulta.Close;
  fDMProdutoProcesso.cdsConsulta.Open;
  ProgressBar1.Max      := fDMProdutoProcesso.cdsConsulta.RecordCount;
  ProgressBar1.Position := 0;
  fDMProdutoProcesso.cdsConsulta.First;
  while not fDMProdutoProcesso.cdsConsulta.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1; 
    if vIDAnt <> fDMProdutoProcesso.cdsConsultaID.AsInteger then
      vItem := 0;
    vItem := vItem + 1;
    fDMProdutoProcesso.cdsProdutoProcesso.Close;
    fDMProdutoProcesso.sdsProdutoProcesso.ParamByName('ID').AsInteger          := fDMProdutoProcesso.cdsConsultaID.AsInteger;
    fDMProdutoProcesso.sdsProdutoProcesso.ParamByName('ID_PROCESSO').AsInteger := fDMProdutoProcesso.cdsConsultaID_PROCESSO.AsInteger;
    fDMProdutoProcesso.cdsProdutoProcesso.Open;
    if fDMProdutoProcesso.cdsProdutoProcesso.IsEmpty then
    begin
      fDMProdutoProcesso.cdsProdutoProcesso.Insert;
      fDMProdutoProcesso.cdsProdutoProcessoID.AsInteger   := fDMProdutoProcesso.cdsConsultaID.AsInteger;
      fDMProdutoProcesso.cdsProdutoProcessoITEM.AsInteger := vItem;
      fDMProdutoProcesso.cdsProdutoProcessoID_PROCESSO.AsInteger := fDMProdutoProcesso.cdsConsultaID_PROCESSO.AsInteger;
      fDMProdutoProcesso.cdsProdutoProcessoID_SETOR.AsInteger    := fDMProdutoProcesso.cdsConsultaID_SETOR.AsInteger;
      fDMProdutoProcesso.cdsProdutoProcessoQTD.Clear;
      fDMProdutoProcesso.cdsProdutoProcessoUN.Clear;
      fDMProdutoProcesso.cdsProdutoProcessoVLR_UNIT.Clear;
      fDMProdutoProcesso.cdsProdutoProcessoVLR_TOTAL.Clear;
      fDMProdutoProcesso.cdsProdutoProcessoOBS.Clear;
      fDMProdutoProcesso.cdsProdutoProcessoID_POSICAO.Clear;
      fDMProdutoProcesso.cdsProdutoProcessoORDEM.AsInteger := vItem;
      fDMProdutoProcesso.cdsProdutoProcesso.Post;
      fDMProdutoProcesso.cdsProdutoProcesso.ApplyUpdates(0);
    end;
    vIDAnt := fDMProdutoProcesso.cdsConsultaID.AsInteger;
    fDMProdutoProcesso.cdsConsulta.Next;
  end;

  ShowMessage('Conversão Concluída!');
end;

end.
