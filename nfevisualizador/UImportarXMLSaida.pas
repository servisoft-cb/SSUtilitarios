unit UImportarXMLSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Grids, DBGrids, SMDBGrid, ExtCtrls, UDMNotaFiscal,
  DBCtrls, NxCollection,DB, ACBrBase, ACBrDFe, ACBrNFe, DBClient;

type
  TfrmImportarXMLSaida = class(TForm)
    pnlFiltro: TPanel;
    Panel1: TPanel;
    lblDiretorio: TLabel;
    edtDiretorio: TDirectoryEdit;
    lblLeitor: TLabel;
    edtProcuraChave: TEdit;
    gridChave: TSMDBGrid;
    btnAtualizar: TNxButton;
    lblTotal: TLabel;
    btnLeporACBR: TButton;
    ACBrNFe1: TACBrNFe;
    procedure FormShow(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
    fDMNotaFiscal: TDMNotaFiscal;
    procedure CarregarXMLDaPastaParaCDS(const APasta: string; ACBrNFe: TACBrNFe);

  public
    { Public declarations }
  end;

var
  frmImportarXMLSaida: TfrmImportarXMLSaida;

implementation

uses
  rsDBUtils, ACBrNFeNotasFiscais,
  uUtilPadrao, ACBrNFe.Classes;

{$R *.dfm}

procedure TfrmImportarXMLSaida.FormShow(Sender: TObject);
begin
  fDMNotaFiscal := TDMNotaFiscal.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,DMNotaFiscal);
end;

procedure TfrmImportarXMLSaida.CarregarXMLDaPastaParaCDS(
  const APasta: string; ACBrNFe: TACBrNFe);
var
  SR: TSearchRec;
  Arquivo: string;
begin
  fDMNotaFiscal.cdsXML.DisableControls;
  try
    fDMNotaFiscal.cdsXML.EmptyDataSet;

    if FindFirst(APasta + '\*.xml', faAnyFile, SR) = 0 then
    begin
      repeat
        Arquivo := APasta + '\' + SR.Name;

        try
          ACBrNFe.NotasFiscais.Clear;
          ACBrNFe.NotasFiscais.LoadFromFile(Arquivo);

          if ACBrNFe.NotasFiscais.Count = 0 then
            Continue;

          with ACBrNFe.NotasFiscais.Items[0].NFe do
          begin
            fDMNotaFiscal.cdsXML.Append;

            // =========================
            // ? CAMPOS PRINCIPAIS
            // =========================
            fDMNotaFiscal.cdsXMLARQUIVO.AsString := Arquivo;
            fDMNotaFiscal.cdsXMLCHAVE.AsString   := infNFe.ID;

            fDMNotaFiscal.cdsXMLNUMERO.AsInteger := Ide.nNF;
            fDMNotaFiscal.cdsXMLSERIE.AsInteger  := Ide.serie;
            fDMNotaFiscal.cdsXMLMODELO.AsString  := IntToStr(Ide.modelo);
            fDMNotaFiscal.cdsXMLDTEMISSAO.AsDateTime := Ide.dEmi;

            // =========================
            // ? EMITENTE
            // =========================
            fDMNotaFiscal.cdsXMLEMIT_CNPJ.AsString := Emit.CNPJCPF;
            fDMNotaFiscal.cdsXMLEMIT_NOME.AsString := Emit.xNome;

            // =========================
            // ? DESTINATÁRIO
            // =========================
            fDMNotaFiscal.cdsXMLDEST_CNPJ.AsString := Dest.CNPJCPF;
            fDMNotaFiscal.cdsXMLDEST_NOME.AsString := Dest.xNome;

            // =========================
            // ? TOTAIS
            // =========================
            fDMNotaFiscal.cdsXMLVLR_PROD.AsFloat :=
              Total.ICMSTot.vProd;

            fDMNotaFiscal.cdsXMLVLR_NFE.AsFloat :=
              Total.ICMSTot.vNF;

            // =========================
            // ? CONTROLE
            // =========================
            fDMNotaFiscal.cdsXMLIMPORTAR.AsBoolean := True;

            fDMNotaFiscal.cdsXML.Post;
          end;

        except
          on E: Exception do
          begin
            // Se quiser futuramente:
            // GravarLog('Erro no XML: ' + Arquivo + ' - ' + E.Message);
          end;
        end;

      until FindNext(SR) <> 0;

      FindClose(SR);
    end;

  finally
    fDMNotaFiscal.cdsXML.EnableControls;
  end;
end;

procedure TfrmImportarXMLSaida.btnAtualizarClick(Sender: TObject);
begin
  CarregarXMLDaPastaParaCDS(edtDiretorio.Text, ACBrNFe1);
end;

end.
