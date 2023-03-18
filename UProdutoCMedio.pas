unit UProdutoCMedio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, UDMProdutoCMedio, StdCtrls,
  NxEdit, NxCollection, ComCtrls, Mask, ToolEdit;

type
  TfrmProdutoCMedio = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    btnConsultar: TNxButton;
    NxComboBox1: TNxComboBox;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    btnGerarPrecoMedio: TNxButton;
    DateEdit1: TDateEdit;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnGerarPrecoMedioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fDMProdutoCMedio: TDMProdutoCMedio;

    procedure prc_Gravar_CMedio(ID_COR : Integer; Preco : Real);

  public
    { Public declarations }
  end;

var
  frmProdutoCMedio: TfrmProdutoCMedio;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfrmProdutoCMedio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmProdutoCMedio.btnConsultarClick(Sender: TObject);
begin
  fDMProdutoCMedio.cdsProduto.Close;
  case NxComboBox1.ItemIndex of
    0 : fDMProdutoCMedio.sdsProduto.ParamByName('TIPO_REG').AsString := 'P';
    1 : fDMProdutoCMedio.sdsProduto.ParamByName('TIPO_REG').AsString := 'S';
    2 : fDMProdutoCMedio.sdsProduto.ParamByName('TIPO_REG').AsString := 'M';
    3 : fDMProdutoCMedio.sdsProduto.ParamByName('TIPO_REG').AsString := 'C';
  end;
  fDMProdutoCMedio.cdsProduto.Open;
end;

procedure TfrmProdutoCMedio.btnGerarPrecoMedioClick(Sender: TObject);
var
  vPreco: Real;
begin
  if MessageDlg('Gerar o Preço Médio?',mtConfirmation,[mbOk,mbNo],0) <> mrOK then
    exit;
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data não informada!', mtError, [mbOk], 0);
    exit;
  end;
  SMDBGrid1.DisableScroll;
  try
    ProgressBar1.Max      := fDMProdutoCMedio.cdsProduto.RecordCount;
    ProgressBar1.Position := 0;
    fDMProdutoCMedio.cdsProduto.First;
    while not fDMProdutoCMedio.cdsProduto.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      Application.ProcessMessages;
      if (fDMProdutoCMedio.cdsProdutoUSA_PRECO_COR.AsString = 'S') and
         ((fDMProdutoCMedio.cdsProdutoTIPO_REG.AsString = 'M') or (fDMProdutoCMedio.cdsProdutoTIPO_REG.AsString = 'C')) then
      begin
        fDMProdutoCMedio.cdsProduto_Comb.Close;
        fDMProdutoCMedio.sdsProduto_Comb.ParamByName('ID').AsInteger := fDMProdutoCMedio.cdsProdutoID.AsInteger;
        fDMProdutoCMedio.cdsProduto_Comb.Open;
        ProgressBar2.Max      := fDMProdutoCMedio.cdsProduto_Comb.RecordCount;
        ProgressBar2.Position := 0;
        fDMProdutoCMedio.cdsProduto_Comb.First;
        while not fDMProdutoCMedio.cdsProduto_Comb.Eof do
        begin
          ProgressBar2.Position := ProgressBar2.Position + 1;
          Application.ProcessMessages;
          if StrToFloat(FormatFloat('0.00000',fDMProdutoCMedio.cdsProduto_CombPRECO_CUSTO.AsFloat)) > 0 then
            vPreco := StrToFloat(FormatFloat('0.00000',fDMProdutoCMedio.cdsProduto_CombPRECO_CUSTO.AsFloat))
          else
          if StrToFloat(FormatFloat('0.00000',fDMProdutoCMedio.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat)) > 0 then
            vPreco := StrToFloat(FormatFloat('0.00000',fDMProdutoCMedio.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat))
          else
            vPreco := StrToFloat(FormatFloat('0.00000',fDMProdutoCMedio.cdsProdutoPRECO_CUSTO.AsFloat));
          prc_Gravar_CMedio(fDMProdutoCMedio.cdsProduto_CombID_COR_COMBINACAO.AsInteger,vPreco);
          fDMProdutoCMedio.cdsProduto_Comb.Next;
        end;
      end
      else
      begin
        if StrToFloat(FormatFloat('0.00000',fDMProdutoCMedio.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat)) > 0 then
          vPreco := StrToFloat(FormatFloat('0.00000',fDMProdutoCMedio.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat))
        else
          vPreco := StrToFloat(FormatFloat('0.00000',fDMProdutoCMedio.cdsProdutoPRECO_CUSTO.AsFloat));
        prc_Gravar_CMedio(0,vPreco);
      end;
      fDMProdutoCMedio.cdsProduto.Next;
    end;
  finally
    SMDBGrid1.EnableScroll;
  end;
  MessageDlg('*** Preço Médio gerado!', mtConfirmation, [mbOk], 0);
end;

procedure TfrmProdutoCMedio.prc_Gravar_CMedio(ID_COR: Integer;
  Preco: Real);
begin
  fDMProdutoCMedio.cdsProduto_CMedio.Close;
  fDMProdutoCMedio.sdsProduto_CMedio.ParamByName('ID').AsInteger     := fDMProdutoCMedio.cdsProdutoID.AsInteger;
  fDMProdutoCMedio.sdsProduto_CMedio.ParamByName('ID_COR').AsInteger := ID_COR;
  fDMProdutoCMedio.sdsProduto_CMedio.ParamByName('DATA').AsDate      := DateEdit1.Date;
  fDMProdutoCMedio.cdsProduto_CMedio.Open;
  if not fDMProdutoCMedio.cdsProduto_CMedio.IsEmpty then
    fDMProdutoCMedio.cdsProduto_CMedio.Edit
  else
  begin
    fDMProdutoCMedio.cdsProduto_CMedio.Insert;
    fDMProdutoCMedio.cdsProduto_CMedioID.AsInteger     := fDMProdutoCMedio.cdsProdutoID.AsInteger;
    fDMProdutoCMedio.cdsProduto_CMedioID_COR.AsInteger := ID_COR;
    fDMProdutoCMedio.cdsProduto_CMedioDATA.AsDateTime  := DateEdit1.Date;
  end;
  fDMProdutoCMedio.cdsProduto_CMedioPRECO_MEDIO.AsFloat := StrToFloat(FormatFloat('0.00000',Preco));
  fDMProdutoCMedio.cdsProduto_CMedio.Post;
  fDMProdutoCMedio.cdsProduto_CMedio.ApplyUpdates(0);
end;

procedure TfrmProdutoCMedio.FormShow(Sender: TObject);
begin
  fDMProdutoCMedio := TDMProdutoCMedio.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMProdutoCMedio);
end;

end.
