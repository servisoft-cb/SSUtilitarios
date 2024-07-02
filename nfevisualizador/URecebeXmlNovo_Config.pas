unit URecebeXmlNovo_Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxEdit, StdCtrls, NxCollection;

type
  TfrmRecebeXmlNovo_Config = class(TForm)
    ckAssociar: TNxCheckBox;
    ckUsarConfigCFOPInt: TNxCheckBox;
    ckUsaNome: TNxCheckBox;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    ckCopiarInfAdicionaisProd: TNxCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebeXmlNovo_Config: TfrmRecebeXmlNovo_Config;

implementation

{$R *.dfm}

procedure TfrmRecebeXmlNovo_Config.FormShow(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmRecebeXmlNovo_Config.btnCancelarClick(Sender: TObject);
begin
  Close;
  ModalResult := mrCancel;
end;

procedure TfrmRecebeXmlNovo_Config.btnConfirmarClick(Sender: TObject);
begin
  close;
  ModalResult := mrOk;
end;

end.
