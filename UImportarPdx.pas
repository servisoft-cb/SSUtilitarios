unit UImportarPdx;

interface

uses
  inifiles, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, xmldom, Grids, DBGrids,
  DB, Xmlxform, ExtCtrls, StdCtrls, ComCtrls, Mask, DBCtrls, RXDBCtrl, SMDBGrid, Buttons, DBTables, ToolEdit, RxLookup,
  UDMImportarPdx, UCBase, StrUtils, DBXpress, ShellApi, StdConvs, Contnrs, SqlExpr;

type
  TfrmImportarPdx = class(TForm)
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    ProgressBar1: TProgressBar;
    BitBtn9: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn13: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
  private
    { Private declarations }
    vCodCidade    : Integer;
    vCodTransp    : Integer;

    vIDVendedor: Integer;
    vIDPais       : Integer;
    vDescICMS     : array[1..9] of String;
    vTipoIcms     : String;
    vCSTInterno   : Integer;
    vItem         : Integer;
    vGravar       : Boolean;
    vOpenDialog   : String;
    vIDEstoqueMov : Integer;

    fDMImportarPdx: TDMImportarPdx;

    procedure Gravar_Cliente;
    procedure Gravar_Cidade;
    procedure Gravar_Pais;
    procedure Gravar_Transp;
    procedure Gravar_CondPgto;
    procedure Gravar_Fornecedores;
    procedure Gravar_Vendedor(ID: Integer = 0);
    procedure Gravar_Sequencial(Tabela: String ; Codigo: Integer);

    procedure Gravar_Produto(NomeCor: String);
    procedure Gravar_Tamanho;

    procedure prc_Abrir_qFilial(CNPJ_CPF: String);
    procedure prc_Grava_Estoque_Mov(Tamanho : String ; Qtd : Real);

    procedure Ajustar_Fornecedores_Email;

    function fnc_NumValido(Const S: String): Integer;


  public
    { Public declarations }
    vUsaConfigNatOper2: String;
    vCodFornecedor: Integer;
    vCodTransportadora: Integer;

    function fnc_Monta_CNPJ(CNPJ: String; Qtd: Integer): String;

  end;

var
  frmImportarPdx: TfrmImportarPdx;

implementation

uses
  DmdDatabase, uUtilPadrao, UMenu, rsDBUtils, uNFeComandos, UConvMaterial;

{$R *.dfm}


procedure TfrmImportarPdx.FormShow(Sender: TObject);
begin
  fDMImportarPdx     := TDMImportarPdx.Create(Self);

  oDBUtils.SetDataSourceProperties(Self,fDMImportarPdx);

  fDMImportarPdx.cdsCondPgto.Close;
  fDMImportarPdx.cdsCondPgto.Open;
  fDMImportarPdx.cdsPais.Close;
  fDMImportarPdx.cdsPais.Open;
end;

procedure TfrmImportarPdx.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMImportarPdx);
  Action := Cafree;
end;

function TfrmImportarPdx.fnc_Monta_CNPJ(CNPJ: String; Qtd: Integer): String;
begin
  result := '';
  if Qtd = 14 then
    result := Copy(cnpj,1,2)
            + '.' + Copy(cnpj,3,3)
            + '.' + Copy(cnpj,6,3)
            + '/' + Copy(cnpj,9,4)
            + '-' + Copy(cnpj,13,2)
  else
    result := Copy(cnpj,1,3)
            + '.' + Copy(cnpj,4,3)
            + '.' + Copy(cnpj,7,3)
            + '-' + Copy(cnpj,10,2);
end;

procedure TfrmImportarPdx.BitBtn2Click(Sender: TObject);
begin
  fDMImportarPdx.tCliente.Close;
  fDMImportarPdx.tCliente.Open;
  fDMImportarPdx.tCliente.First;
  ProgressBar1.Max      := fDMImportarPdx.tCliente.RecordCount;
  ProgressBar1.Position := 0;
  while not fDMImportarPdx.tCliente.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    Gravar_Cliente;
    fDMImportarPdx.tCliente.Next;
  end;

  {fDMImportarPdx.tCliente.First;
  while not fDMImportarPdx.tCliente.Eof do
  begin
    if fDMImportarPdx.tCliente

    fDMImportarPdx.tCliente.Next;
  end;}

  ShowMessage('Clientes, geração concluída!');
end;

procedure TfrmImportarPdx.Gravar_Cidade;
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('CIDADE',0);

  fDMImportarPdx.cdsCidade.Insert;
  fDMImportarPdx.cdsCidadeID.AsInteger          := vAux;
  fDMImportarPdx.cdsCidadeNOME.AsString         := fDMImportarPdx.tCidadeNome.AsString;
  fDMImportarPdx.cdsCidadeUF.AsString           := fDMImportarPdx.tCidadeEstado.AsString;
  fDMImportarPdx.cdsCidadeCODMUNICIPIO.AsString := fDMImportarPdx.tCidadeCodMunicipio.AsString; 
  vCodCidade := vAux;

  fDMImportarPdx.cdsCidade.Post;
  fDMImportarPdx.cdsCidade.ApplyUpdates(0);
end;

procedure TfrmImportarPdx.Gravar_Pais;
var                           
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('PAIS',0);

  fDMImportarPdx.cdsPais.Insert;

  fDMImportarPdx.cdsPaisID.AsInteger     := vAux;
  fDMImportarPdx.cdsPaisNOME.AsString    := fDMImportarPdx.tPaisPais.AsString;
  fDMImportarPdx.cdsPaisCODPAIS.AsString := fDMImportarPdx.tPaisCodPais.AsString;
  fDMImportarPdx.cdsPais.Post;
  fDMImportarPdx.cdsPais.ApplyUpdates(0);
  vIDPais := vAux;
end;

procedure TfrmImportarPdx.Gravar_Cliente;
var
  vAux: Integer;
  vTexto: String;
  vFlag: Boolean;
  vDocAux : String;
  vExiste : Boolean;
  vAux2 : Integer;
begin
  try
    vDocAux := Monta_Numero(fDMImportarPdx.tClienteCgcCpf.AsString,0);
    vExiste := False;
    if trim(vDocAux) <> '' then
      if fDMImportarPdx.fnc_Abrir_Fornecedor(fDMImportarPdx.tClienteCgcCpf.AsString,'',0) then
        vExiste := True;

    if vExiste then
      fDMImportarPdx.cdsFornecedor.Edit
    else
    begin
      //vAux := dmDatabase.ProximaSequencia('PESSOA',0);
      fDMImportarPdx.cdsFornecedor.Insert;
      fDMImportarPdx.cdsFornecedorCODIGO.AsInteger  := fDMImportarPdx.tClienteCodigo.AsInteger;
      fDMImportarPdx.cdsFornecedorNOME.AsString     := fDMImportarPdx.tClienteNome.AsString;
      fDMImportarPdx.cdsFornecedorFANTASIA.AsString := fDMImportarPdx.tClienteFantasia.AsString;
      fDMImportarPdx.cdsFornecedorCNPJ_CPF.AsString := fDMImportarPdx.tClienteCgcCpf.AsString;
      fDMImportarPdx.cdsFornecedorCOD_ANT.AsInteger := fDMImportarPdx.tClienteCodigo.AsInteger;
      fDMImportarPdx.cdsFornecedorTP_FORNECEDOR.AsString     := 'N';
      fDMImportarPdx.cdsFornecedorTP_TRANSPORTADORA.AsString := 'N';
      fDMImportarPdx.cdsFornecedorTP_VENDEDOR.AsString       := 'N';
      fDMImportarPdx.cdsFornecedorTIPO_ICMS.AsString         := 'N';
      fDMImportarPdx.cdsFornecedorTP_ATELIER.AsString        := 'N';
      fDMImportarPdx.cdsFornecedorTP_ALUNO.AsString          := 'N';
      fDMImportarPdx.cdsFornecedorTP_EXPORTACAO.AsString     := 'N';
      fDMImportarPdx.cdsFornecedorTP_FUNCIONARIO.AsString    := 'N';
      fDMImportarPdx.cdsFornecedorTP_PREPOSTO.AsString       := 'N';
    end;
    fDMImportarPdx.cdsFornecedorTP_CLIENTE.AsString          := 'S';
    fDMImportarPdx.cdsFornecedorENDERECO.AsString        := fDMImportarPdx.tClienteEndereco.AsString;
    fDMImportarPdx.cdsFornecedorCOMPLEMENTO_END.AsString := fDMImportarPdx.tClienteComplEndereco.AsString;
    fDMImportarPdx.cdsFornecedorNUM_END.AsString         := fDMImportarPdx.tClienteNumEnd.AsString;
    fDMImportarPdx.cdsFornecedorBAIRRO.AsString          := fDMImportarPdx.tClienteBairro.AsString;

    vCodCidade := 0;
    if (fDMImportarPdx.tClienteCodCidade.AsInteger > 0) and (fDMImportarPdx.tCidade.Locate('Codigo',fDMImportarPdx.tClienteCodCidade.AsInteger,([LocaseInsensitive]))) then
    begin
      if not fDMImportarPdx.fnc_Abrir_Cidade(fDMImportarPdx.tCidadeCodMunicipio.AsString) then
        Gravar_Cidade;
      if vCodCidade <= 0 then
        vCodCidade := fDMImportarPdx.cdsCidadeID.AsInteger;
      fDMImportarPdx.cdsFornecedorCIDADE.AsString    := fDMImportarPdx.tCidadeNome.AsString;
    end;
    if vCodCidade > 0 then
      fDMImportarPdx.cdsFornecedorID_CIDADE.AsInteger := vCodCidade;
    if (trim(fDMImportarPdx.tClienteUf.AsString) <> '') and (fDMImportarPdx.tClienteUf.AsString <> EmptyStr) then
      fDMImportarPdx.cdsFornecedorUF.AsString        := fDMImportarPdx.tClienteUf.AsString;
    fDMImportarPdx.cdsFornecedorCEP.AsString       := fDMImportarPdx.tClienteCep.AsString;
    fDMImportarPdx.cdsFornecedorDDDFONE1.AsInteger := fDMImportarPdx.tClienteDDDFone1.AsInteger;
    fDMImportarPdx.cdsFornecedorTELEFONE1.AsString := fDMImportarPdx.tClienteTelefone.AsString;
    fDMImportarPdx.cdsFornecedorDDDFONE2.AsInteger := fDMImportarPdx.tClienteDDDFone2.AsInteger;
    fDMImportarPdx.cdsFornecedorTELEFONE2.AsString := fDMImportarPdx.tClienteTelefone2.AsString;
    fDMImportarPdx.cdsFornecedorDDDFAX.AsInteger   := fDMImportarPdx.tClienteDDDFax.AsInteger;
    fDMImportarPdx.cdsFornecedorFAX.AsString       := fDMImportarPdx.tClienteFax.AsString;
    fDMImportarPdx.cdsFornecedorPESSOA.AsString    := fDMImportarPdx.tClientePessoa.AsString;
    fDMImportarPdx.cdsFornecedorINSCR_EST.AsString := fDMImportarPdx.tClienteInscrEst.AsString;
    fDMImportarPdx.cdsFornecedorENDERECO_ENT.AsString := fDMImportarPdx.tClienteEndEntrega.AsString;
    fDMImportarPdx.cdsFornecedorCOMPLEMENTO_END_ENT.AsString := fDMImportarPdx.tClienteComplEnderecoEntrega.AsString;
    fDMImportarPdx.cdsFornecedorNUM_END_ENT.AsString         := fDMImportarPdx.tClienteNumEndEntrega.AsString;
    fDMImportarPdx.cdsFornecedorBAIRRO_ENT.AsString          := fDMImportarPdx.tClienteBairroEntrega.AsString;
    vCodCidade := 0;
    if (fDMImportarPdx.tClienteCodCidadeE.AsInteger > 0) and (fDMImportarPdx.tCidade.Locate('Codigo',fDMImportarPdx.tClienteCodCidadeE.AsInteger,([LocaseInsensitive]))) then
    begin
      if not fDMImportarPdx.fnc_Abrir_Cidade(fDMImportarPdx.tCidadeCodMunicipio.AsString) then
        Gravar_Cidade;
      if vCodCidade <= 0 then
        vCodCidade := fDMImportarPdx.cdsCidadeID.AsInteger;
      fDMImportarPdx.cdsFornecedorCIDADE_ENT.AsString     := fDMImportarPdx.tCidadeNome.AsString;
    end;
    if vCodCidade > 0 then
      fDMImportarPdx.cdsFornecedorID_CIDADE_ENT.AsInteger       := vCodCidade;
    fDMImportarPdx.cdsFornecedorCEP_ENT.AsString              := fDMImportarPdx.tClienteCepEntrega.AsString;
    if (trim(fDMImportarPdx.tClienteUfEntrega.AsString) <> '') and (fDMImportarPdx.tClienteUfEntrega.AsString <> EmptyStr) then
      fDMImportarPdx.cdsFornecedorUF_ENT.AsString               := fDMImportarPdx.tClienteUfEntrega.AsString;
    fDMImportarPdx.cdsFornecedorPESSOA_ENT.AsString           := fDMImportarPdx.tClientePessoaEntrega.AsString;
    fDMImportarPdx.cdsFornecedorCNPJ_CPF_ENT.AsString         := fDMImportarPdx.tClienteCgcCpfEntrega.AsString;
    fDMImportarPdx.cdsFornecedorINSC_EST_ENT.AsString         := fDMImportarPdx.tClienteInscEntrega.AsString;
    fDMImportarPdx.cdsFornecedorENDERECO_PGTO.AsString        := fDMImportarPdx.tClienteEndPgto.AsString;
    fDMImportarPdx.cdsFornecedorCOMPLEMENTO_END_PGTO.AsString := '';
    fDMImportarPdx.cdsFornecedorNUM_END_PGTO.AsString         := '';
    fDMImportarPdx.cdsFornecedorBAIRRO_PGTO.AsString          := fDMImportarPdx.tClienteBairroPgto.AsString;
    vCodCidade := 0;
    if (fDMImportarPdx.tClienteCodCidadeP.AsInteger > 0) and (fDMImportarPdx.tCidade.Locate('Codigo',fDMImportarPdx.tClienteCodCidadeP.AsInteger,([LocaseInsensitive]))) then
    begin
      if not fDMImportarPdx.fnc_Abrir_Cidade(fDMImportarPdx.tCidadeCodMunicipio.AsString) then
        Gravar_Cidade;
      if vCodCidade <= 0 then
        vCodCidade := fDMImportarPdx.cdsCidadeID.AsInteger;
      fDMImportarPdx.cdsFornecedorCIDADE_PGTO.AsString  := fDMImportarPdx.tCidadeNome.AsString;
    end;
    if vCodCidade > 0 then
      fDMImportarPdx.cdsFornecedorID_CIDADE_PGTO.AsInteger := vCodCidade;
    fDMImportarPdx.cdsFornecedorCEP_PGTO.AsString        := fDMImportarPdx.tClienteCepPgto.AsString;
    if (trim(fDMImportarPdx.tClienteUfPgto.AsString) <> '') and (fDMImportarPdx.tClienteUfPgto.AsString <> EmptyStr) then
      fDMImportarPdx.cdsFornecedorUF_PGTO.AsString         := fDMImportarPdx.tClienteUfPgto.AsString;
    fDMImportarPdx.cdsFornecedorUSUARIO.AsString         := 'PARADOX';
    fDMImportarPdx.cdsFornecedorDTCADASTRO.AsDateTime    := fDMImportarPdx.tClienteDtCadastro.AsDateTime;
    fDMImportarPdx.cdsFornecedorOBS.Value                := fDMImportarPdx.tClienteObs.Value;
    fDMImportarPdx.cdsFornecedorCAIXAPOSTAL.AsString     := fDMImportarPdx.tClienteCaixaPostal.AsString;
    fDMImportarPdx.cdsFornecedorRG.AsString              := fDMImportarPdx.tClienteRg.AsString;

    {vCodTransp := 0;
    if (fDMImportarPdx.tClienteCodTransp.AsInteger > 0) and (fDMImportarPdx.tTransportadora.Locate('Codigo',fDMImportarPdx.tClienteCodTransp.AsInteger,([LocaseInsensitive]))) then
    begin
      vFlag  := False;
      vTexto := Monta_Numero(fDMImportarPdx.tTransportadoraCNPJ.AsString,0);
      if (copy(vTexto,1,5) = '00000') or (trim(vTexto) = '') then
      begin
        if fDMImportarPdx.fnc_Abrir_Transp(fDMImportarPdx.tTransportadoraNome.AsString,'') then
          vFlag := True;
      end
      else
      begin
        if fDMImportarPdx.fnc_Abrir_Transp(fDMImportarPdx.tTransportadoraNome.AsString,fDMImportarPdx.tTransportadoraCNPJ.AsString) then
          vFlag := True;
      end;
      if not vFlag then
        Gravar_Transp;
      if vCodTransp <= 0 then
        vCodTransp := fDMImportarPdx.cdsTranspCODIGO.AsInteger;
    end;
    if vCodTransp > 0 then
      fDMImportarPdx.cdsFornecedorID_TRANSPORTADORA.AsInteger := vCodTransp;}

    {vCodTransp := 0;
    if (fDMImportarPdx.tClienteCodTranspRedespacho.AsInteger > 0) and (fDMImportarPdx.tTransportadora.Locate('Codigo',fDMImportarPdx.tClienteCodTranspRedespacho.AsInteger,([LocaseInsensitive]))) then
    begin
      vFlag := False;
      vTexto := Monta_Numero(fDMImportarPdx.tTransportadoraCNPJ.AsString,0);
      if (copy(vTexto,1,5) = '00000') or (trim(vTexto) = '') then
      begin
        if fDMImportarPdx.fnc_Abrir_Transp(fDMImportarPdx.tTransportadoraNome.AsString,'') then
          vFlag := True;
      end
      else
      begin
        if fDMImportarPdx.fnc_Abrir_Transp(fDMImportarPdx.tTransportadoraNome.AsString,fDMImportarPdx.tTransportadoraCNPJ.AsString) then
          vFlag := True;
      end;
      if not vFlag then
        Gravar_Transp;
      if vCodTransp <= 0 then
        vCodTransp := fDMImportarPdx.cdsTranspCODIGO.AsInteger;
    end;
    if vCodTransp > 0 then
      fDMImportarPdx.cdsFornecedorID_REDESPACHO.AsInteger := vCodTransp;}

    vIDPais := 0;
    if (fDMImportarPdx.tClienteIDPais.AsInteger > 0) and (fDMImportarPdx.tPais.Locate('ID',fDMImportarPdx.tClienteIDPais.AsInteger,([LocaseInsensitive]))) then
    begin
      if not fDMImportarPdx.fnc_Abrir_Pais(fDMImportarPdx.tPaisCodPais.AsString) then
        Gravar_Pais;
      if vIDPais <= 0 then
        vIDPais := fDMImportarPdx.cdsPaisID.AsInteger;
    end;
    if vIDPais <= 0 then
      vIDPais := 1;

    fDMImportarPdx.cdsFornecedorID_PAIS.AsInteger := vIDPais;
    fDMImportarPdx.cdsFornecedorID_REGIME_TRIB.AsInteger := 3;
    //fDMImportarPdx.cdsFornecedorPERC_COMISSAO.AsFloat    := fDMImportarPdx.tClientePercComissao.AsFloat;
    //fDMImportarPdx.cdsFornecedorFONE_ENT.AsString        := fDMImportarPdx.tClienteFoneEntrega.AsString;
    //fDMImportarPdx.cdsFornecedorFONE_PGTO.AsString       := fDMImportarPdx.tClientetFoneCobranca.AsString;
    fDMImportarPdx.cdsFornecedorINATIVO.AsString := 'N';
    fDMImportarPdx.cdsFornecedorHOMEPAGE.AsString     := fDMImportarPdx.tClienteHomePage.AsString;
    //if fDMImportarPdx.tClienteTipoFrete.AsString = 'C' then
    //  fDMImportarPdx.cdsFornecedorTIPO_FRETE.AsString := '1'
    //else
    //if fDMImportarPdx.tClienteTipoFrete.AsString = 'F' then
    //  fDMImportarPdx.cdsFornecedorTIPO_FRETE.AsString := '2';
    //fDMImportarPdx.cdsFornecedorNOME_ENTREGA.AsString  := fDMImportarPdx.tClienteNomeEntrega.AsString;
    fDMImportarPdx.cdsFornecedorEMAIL_NFE.AsString     := fDMImportarPdx.tClienteEmailNFe.AsString;
    fDMImportarPdx.cdsFornecedorEMAIL_NFE2.AsString    := fDMImportarPdx.tClienteEmailNFe2.AsString;
    fDMImportarPdx.cdsFornecedorEMAIL_PGTO.AsString    := '';
    //fDMImportarPdx.cdsFornecedorPESSOA_PGTO.AsString   := fDMImportarPdx.tClientePessoaPgto.AsString;
    //fDMImportarPdx.cdsFornecedorCNPJ_CPG_PGTO.AsString := fDMImportarPdx.tClienteCgcCpfPgto.AsString;
    //fDMImportarPdx.cdsFornecedorINSC_EST_PGTO.AsString := fDMImportarPdx.tClienteInscPgto.AsString;

    fDMImportarPdx.cdsFornecedorTP_CLIENTE.AsString    := 'S';

    if fDMImportarPdx.cdsFornecedorPESSOA.AsString = 'J' then
      fDMImportarPdx.cdsFornecedorTIPO_CONSUMIDOR.AsInteger := 0
    else
      fDMImportarPdx.cdsFornecedorTIPO_CONSUMIDOR.AsInteger := 1;

    if trim(fDMImportarPdx.cdsFornecedorINSCR_EST.AsString) = '' then
      fDMImportarPdx.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 9
    else
    if trim(fDMImportarPdx.cdsFornecedorINSCR_EST.AsString) = 'ISENTO' then
      fDMImportarPdx.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 2
    else
      fDMImportarPdx.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 1;
    fDMImportarPdx.cdsFornecedor.Post;

    fDMImportarPdx.cdsCONVERSOR_COD_ANT.Close;
    fDMImportarPdx.sdsCONVERSOR_COD_ANT.ParamByName('ID_PESSOA').AsInteger := fDMImportarPdx.cdsFornecedorCODIGO.AsInteger;
    fDMImportarPdx.cdsCONVERSOR_COD_ANT.Open;
    if fDMImportarPdx.cdsCONVERSOR_COD_ANT.IsEmpty then
    begin
      vAux2 := dmDatabase.ProximaSequencia('CONVERSOR_COD_ANT',0);
      fDMImportarPdx.cdsCONVERSOR_COD_ANT.Insert;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTID.AsInteger        := vaux2;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTID_PESSOA.AsInteger := fDMImportarPdx.cdsFornecedorCODIGO.AsInteger;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTCOD_ANT.AsInteger   := fDMImportarPdx.tClienteCodigo.AsInteger;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTTIPO.AsString       := 'C';
      fDMImportarPdx.cdsCONVERSOR_COD_ANT.Post;
      fDMImportarPdx.cdsCONVERSOR_COD_ANT.ApplyUpdates(0);
    end;

    fDMImportarPdx.cdsFornecedor.ApplyUpdates(0);
  except
    on e: Exception do
    begin
      ShowMessage('Fornecedor: ' + fDMImportarPdx.cdsFornecedorNOME.AsString);
      raise Exception.Create('Erro ao abrir o arquivo: ' + #13 + e.Message);
    end;
  end;
end;

procedure TfrmImportarPdx.Gravar_Produto(NomeCor: String);
var
  vAux: Integer;
begin
  vAux := fDMImportarPdx.tProdutoCodigo.AsInteger;

  if trim(NomeCor) <> '' then
  begin
    fDMImportarPdx.prc_Abrir_Produto(fDMImportarPdx.tProdutoCodigo.AsInteger,'');
    if not(fDMImportarPdx.cdsProduto.IsEmpty) and (fDMImportarPdx.cdsProdutoID.AsInteger = fDMImportarPdx.tProdutoCodigo.AsInteger) then
      vAux := dmDatabase.ProximaSequencia('PRODUTO',0);
  end;

  fDMImportarPdx.cdsProduto.Insert;
  //fDMImportarPdx.cdsProdutoID.AsInteger        := fDMImportarPdx.tProdutoCodigo.AsInteger;
  fDMImportarPdx.cdsProdutoID.AsInteger        := vAux;
  fDMImportarPdx.cdsProdutoREFERENCIA.AsString := fDMImportarPdx.tProdutoReferencia.AsString;
  fDMImportarPdx.cdsProdutoNOME.AsString       := fDMImportarPdx.tProdutoNome.AsString;
  if trim(NomeCor) <> '' then
    fDMImportarPdx.cdsProdutoNOME.AsString := fDMImportarPdx.tProdutoNome.AsString + '-' + NomeCor;
  fDMImportarPdx.cdsProdutoPESOLIQUIDO.AsFloat := fDMImportarPdx.tProdutoPesoLiquido.AsFloat;
  fDMImportarPdx.cdsProdutoPESOBRUTO.AsFloat   := fDMImportarPdx.tProdutoPesoBruto.AsFloat;
  if fDMImportarPdx.tProdutoInativo.AsBoolean then
    fDMImportarPdx.cdsProdutoINATIVO.AsString := 'S'
  else
    fDMImportarPdx.cdsProdutoINATIVO.AsString := 'N';

  vAux := 0;
  if trim(fDMImportarPdx.tProdutoCodCSTIPI.AsString) <> '' then
    vAux := fDMImportarPdx.fnc_Abrir_CSTIPI(fDMImportarPdx.tProdutoCodCSTIPI.AsString);
  if vAux > 0 then
    fDMImportarPdx.cdsProdutoID_CSTIPI.AsInteger := vAux;
  fDMImportarPdx.cdsProdutoPERC_IPI.AsFloat    := fDMImportarPdx.tProdutoAliqIPI.AsFloat;
  //fDMImportarPdx.cdsProdutoPRECO_CUSTO.AsFloat := fDMImportarPdx.tProdutoPrecoCusto.AsFloat;
  fDMImportarPdx.cdsProdutoPRECO_VENDA.AsFloat := fDMImportarPdx.tProdutoPrecoVenda.AsFloat;
  fDMImportarPdx.cdsProdutoTIPO_REG.AsString   := fDMImportarPdx.tProdutoProdMat.AsString;
  fDMImportarPdx.cdsProdutoPOSSE_MATERIAL.AsString := 'E';
  //if fDMImportarPdx.tProdutoEstoque.AsBoolean then
    fDMImportarPdx.cdsProdutoESTOQUE.AsString := 'S';
  //else
   // fDMImportarPdx.cdsProdutoESTOQUE.AsString := 'N';
  fDMImportarPdx.cdsProdutoMATERIAL_OUTROS.AsString := 'O';
  fDMImportarPdx.cdsProdutoUSUARIO.AsString := 'PARADOX';
  fDMImportarPdx.cdsProdutoDTCAD.AsDateTime := Date;
  fDMImportarPdx.cdsProdutoHRCAD.AsDateTime := Now;
  fDMImportarPdx.cdsProdutoCA.AsString      := '';
  fDMImportarPdx.cdsProdutoCOMPLEMENTO.AsString := fDMImportarPdx.tProdutoComplemento.AsString;

  fDMImportarPdx.vIDNCM := 0;
  if (trim(fDMImportarPdx.tProdutoCodClasFiscal.AsString) <> '') and (fDMImportarPdx.tClasFiscal.Locate('ClasFiscal',fDMImportarPdx.tProdutoCodClasFiscal.AsString,([LocaseInsensitive]))) then
  begin
    fDMImportarPdx.vIDNCM := fDMImportarPdx.fnc_Abrir_NCM(fDMImportarPdx.tProdutoCodClasFiscal.AsString);
    if fDMImportarPdx.vIDNCM <= 0 then
      fDMImportarPdx.Gravar_ClasFiscal(fDMImportarPdx.tProdutoCodClasFiscal.AsString);
  end;
  if fDMImportarPdx.vIDNCM > 0 then
    fDMImportarPdx.cdsProdutoID_NCM.AsInteger := fDMImportarPdx.vIDNCM;

  fDMImportarPdx.cdsProdutoORIGEM_PROD.AsString := fDMImportarPdx.tProdutoOrigemProd.AsString;
  fDMImportarPdx.cdsProdutoOBS.Value            := fDMImportarPdx.tProdutoObs.Value;
  fDMImportarPdx.cdsProdutoCODSITCF.AsString    := '';
  fDMImportarPdx.cdsProdutoPERC_REDUCAOICMS.AsFloat := 0;
  fDMImportarPdx.cdsProdutoTIPO_VENDA.AsString      := '';
  fDMImportarPdx.cdsProdutoPERC_MARGEMLUCRO.AsFloat := 0;
  //fDMImportarPdx.cdsProdutoDT_ALTPRECO.AsDateTime   := fDMImportarPdx.tProdutoDtAlteracao.AsDateTime;
  fDMImportarPdx.cdsProdutoUNIDADE.AsString         := fDMImportarPdx.tProdutoUnidade.AsString;
  if fDMImportarPdx.cdsProdutoUNIDADE.AsString = '' then
    fDMImportarPdx.cdsProdutoUNIDADE.AsString := 'PR';

  fDMImportarPdx.cdsProdutoUSA_GRADE.AsString       := 'N';

  fDMImportarPdx.Gravar_Unidade(fDMImportarPdx.tProdutoUnidade.AsString);
  fDMImportarPdx.cdsProduto.Post;
  fDMImportarPdx.cdsProduto.ApplyUpdates(0);
end;

function TfrmImportarPdx.fnc_NumValido(Const S: String): Integer;
var
  i: Integer;
  vTexto: String;
begin
  Result := 0;
  vTexto := '';
  for i := 1 to Length(s) do
  begin
    if S[i] in['0','1','2','3','4','5','6','7','8','9'] then
      vTexto := vTexto + s[i]
    else
    begin
      vTexto := '';
      Break;
    end;
  end;
  if vTexto <> '' then
    Result := StrToInt(vTexto);
end;

procedure TfrmImportarPdx.BitBtn4Click(Sender: TObject);
var
  vCodAux: Integer;
begin
  if not fDMImportarPdx.cdsProduto.Active then
    fDMImportarPdx.cdsProduto.Open;

  vCodAux := 0;
  fDMImportarPdx.tProduto.Close;
  fDMImportarPdx.tProduto.Open;
  fDMImportarPdx.tProduto.Open;
  fDMImportarPdx.tProduto.IndexFieldNames := 'Codigo';
  fDMImportarPdx.tProduto.First;
  while not fDMImportarPdx.tProduto.Eof do
  begin
    if not fDMImportarPdx.tProdutoLancaCor.AsBoolean then
    begin
      Gravar_Produto('');
      vCodAux := fDMImportarPdx.tProdutoCodigo.AsInteger;
    end;
    fDMImportarPdx.tProduto.Next;
  end;

  Gravar_Sequencial('PRODUTO',vCodAux);

  {fDMImportarPdx.tProduto.First;
  while not fDMImportarPdx.tProduto.Eof do
  begin
    if fDMImportarPdx.tProdutoLancaCor.AsBoolean then
    begin
      fDMImportarPdx.tProdutoCor.First;
      while not fDMImportarPdx.tProdutoCor.Eof do
      begin
        Gravar_Produto(fDMImportarPdx.tProdutoCorlkNomeCor.AsString);
        fDMImportarPdx.tProdutoCor.Next;
      end;
    end;
    fDMImportarPdx.tProduto.Next;
  end;}

  fDMImportarPdx.cdsProduto.IndexFieldNames := 'ID';
  fDMImportarPdx.cdsProduto.Last;
  vCodAux := fDMImportarPdx.cdsProdutoID.AsInteger;

  Gravar_Sequencial('PRODUTO',vCodAux);

  ShowMessage('Produtos, geração concluída!');
end;

procedure TfrmImportarPdx.prc_Abrir_qFilial(CNPJ_CPF: String);
begin
  vFilial := 0;
  fDMImportarPdx.qFilial.Close;
  fDMImportarPdx.qFilial.ParamByName('CNPJ_CPF').AsString := CNPJ_CPF;
  fDMImportarPdx.qFilial.Open;
  vFilial := fDMImportarPdx.qFilialID.AsInteger;
end;

procedure TfrmImportarPdx.Gravar_Transp;
var
  vAux: String;
  vIDAux: Integer;
  vDocAux : String;
  vExiste : Boolean;
  vAux2 : Integer;
begin
  try
    vDocAux := Monta_Numero(fDMImportarPdx.tTransportadoraCNPJ.AsString,0);
    vExiste := False;
    if trim(vDocAux) <> '' then
      if fDMImportarPdx.fnc_Abrir_Transp(fDMImportarPdx.tTransportadoraCNPJ.AsString,'') then
        vExiste := True;

    if vExiste then
      fDMImportarPdx.cdsTransp.Edit
    else
    begin
      vIDAux := dmDatabase.ProximaSequencia('PESSOA',0);
      fDMImportarPdx.cdsTransp.Insert;
      fDMImportarPdx.cdsTranspCODIGO.AsInteger  := vIDAux;
      vCodTransp                                := fDMImportarPdx.cdsTranspCODIGO.AsInteger;
      fDMImportarPdx.cdsTranspCOD_ANT.AsInteger := fDMImportarPdx.tTransportadoraCodigo.AsInteger;
      fDMImportarPdx.cdsTranspNOME.AsString     := fDMImportarPdx.tTransportadoraNome.AsString;
      fDMImportarPdx.cdsTranspFANTASIA.AsString := fDMImportarPdx.tTransportadoraFantasia.AsString;
      fDMImportarPdx.cdsTranspCNPJ_CPF.AsString := fDMImportarPdx.tTransportadoraCNPJ.AsString;
      fDMImportarPdx.cdsTranspPESSOA.AsString   := fDMImportarPdx.tTransportadoraPessoa.AsString;

      fDMImportarPdx.cdsTranspTP_FORNECEDOR.AsString  := 'N';
      fDMImportarPdx.cdsTranspTP_CLIENTE.AsString     := 'N';
      fDMImportarPdx.cdsTranspTP_VENDEDOR.AsString    := 'N';
      fDMImportarPdx.cdsTranspTIPO_ICMS.AsString      := 'N';
      fDMImportarPdx.cdsTranspTP_ATELIER.AsString     := 'N';
      fDMImportarPdx.cdsTranspTP_ALUNO.AsString       := 'N';
      fDMImportarPdx.cdsTranspTP_EXPORTACAO.AsString  := 'N';
      fDMImportarPdx.cdsTranspTP_FUNCIONARIO.AsString := 'N';
      fDMImportarPdx.cdsTranspTP_PREPOSTO.AsString    := 'N';
      fDMImportarPdx.cdsTranspINATIVO.AsString        := 'N';
      fDMImportarPdx.cdsTranspENDERECO.AsString := fDMImportarPdx.tTransportadoraEndereco.AsString;
      fDMImportarPdx.cdsTranspBAIRRO.AsString   := fDMImportarPdx.tTransportadoraBairro.AsString;
      vCodCidade := 0;
      if (fDMImportarPdx.tTransportadoraCodCidade.AsInteger > 0) and (fDMImportarPdx.tCidade.Locate('Codigo',fDMImportarPdx.tTransportadoraCodCidade.AsInteger,([LocaseInsensitive]))) then
      begin
        if not fDMImportarPdx.fnc_Abrir_Cidade(fDMImportarPdx.tCidadeCodMunicipio.AsString) then
          Gravar_Cidade;
        if vCodCidade <= 0 then
          vCodCidade := fDMImportarPdx.cdsCidadeID.AsInteger;
        fDMImportarPdx.cdsTranspCIDADE.AsString := fDMImportarPdx.tCidadeNome.AsString;
      end;
      if vCodCidade > 0 then
        fDMImportarPdx.cdsTranspID_CIDADE.AsInteger := vCodCidade;
      if (trim(fDMImportarPdx.tTransportadoraUF.AsString) <> '') and (fDMImportarPdx.tTransportadoraUF.AsString <> EmptyStr) then
        fDMImportarPdx.cdsTranspUF.AsString        := fDMImportarPdx.tTransportadoraUF.AsString;
      fDMImportarPdx.cdsTranspCEP.AsString       := fDMImportarPdx.tTransportadoraCep.AsString;
      fDMImportarPdx.cdsTranspTELEFONE1.AsString := fDMImportarPdx.tTransportadoraFone.AsString;
      fDMImportarPdx.cdsTranspFAX.AsString       := fDMImportarPdx.tTransportadoraFax.AsString;
      fDMImportarPdx.cdsTranspPESSOA.AsString    := fDMImportarPdx.tTransportadoraPessoa.AsString;
      fDMImportarPdx.cdsTranspINSCR_EST.AsString := fDMImportarPdx.tTransportadoraInscricao.AsString;

      fDMImportarPdx.cdsTranspUSUARIO.AsString      := 'PARADOX';
      fDMImportarPdx.cdsTranspDTCADASTRO.AsDateTime := Date;
      fDMImportarPdx.cdsTranspHRCADASTRO.AsDateTime := Now;

      vIDPais := 0;
      if (fDMImportarPdx.tTransportadoraIDPais.AsInteger > 0) and (fDMImportarPdx.tPais.Locate('ID',fDMImportarPdx.tTransportadoraIDPais.AsInteger,([LocaseInsensitive]))) then
      begin
        if not fDMImportarPdx.fnc_Abrir_Pais(fDMImportarPdx.tPaisCodPais.AsString) then
          Gravar_Pais;
        if vIDPais <= 0 then
          vIDPais := fDMImportarPdx.cdsPaisID.AsInteger;
      end;
      if vIDPais <= 0 then
        vIDPais := 1;
      fDMImportarPdx.cdsTranspID_PAIS.AsInteger := vIDPais;

      fDMImportarPdx.cdsTranspHOMEPAGE.AsString  := fDMImportarPdx.tTransportadoraHomePage.AsString;
      fDMImportarPdx.cdsTranspEMAIL_NFE.AsString := fDMImportarPdx.tTransportadoraEmailNFe.AsString;

      if (trim(fDMImportarPdx.tTransportadoraUFPlaca.AsString) <> '') and (fDMImportarPdx.tTransportadoraUFPlaca.AsString <> EmptyStr) then
        fDMImportarPdx.cdsTranspUF_PLACA.AsString := fDMImportarPdx.tTransportadoraUFPlaca.AsString;
      fDMImportarPdx.cdsTranspPLACA.AsString      := fDMImportarPdx.tTransportadoraPlaca.AsString;
    end;
    fDMImportarPdx.cdsTranspTP_TRANSPORTADORA.AsString := 'S';

    if fDMImportarPdx.cdsTranspPESSOA.AsString = 'J' then
      fDMImportarPdx.cdsTranspTIPO_CONSUMIDOR.AsInteger := 0
    else
      fDMImportarPdx.cdsTranspTIPO_CONSUMIDOR.AsInteger := 1;

    if trim(fDMImportarPdx.cdsTranspINSCR_EST.AsString) = '' then
      fDMImportarPdx.cdsTranspTIPO_CONTRIBUINTE.AsInteger := 9
    else
    if trim(fDMImportarPdx.cdsTranspINSCR_EST.AsString) = 'ISENTO' then
      fDMImportarPdx.cdsTranspTIPO_CONTRIBUINTE.AsInteger := 2
    else
      fDMImportarPdx.cdsTranspTIPO_CONTRIBUINTE.AsInteger := 1;

    fDMImportarPdx.cdsTransp.Post;

    fDMImportarPdx.cdsCONVERSOR_COD_ANT.Close;
    fDMImportarPdx.sdsCONVERSOR_COD_ANT.ParamByName('ID_PESSOA').AsInteger := fDMImportarPdx.cdsTranspCODIGO.AsInteger;
    fDMImportarPdx.cdsCONVERSOR_COD_ANT.Open;
    if fDMImportarPdx.cdsCONVERSOR_COD_ANT.IsEmpty then
    begin
      vAux2 := dmDatabase.ProximaSequencia('CONVERSOR_COD_ANT',0);
      fDMImportarPdx.cdsCONVERSOR_COD_ANT.Insert;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTID.AsInteger        := vaux2;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTID_PESSOA.AsInteger := fDMImportarPdx.cdsTranspCODIGO.AsInteger;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTCOD_ANT.AsInteger   := fDMImportarPdx.tTransportadoraCodigo.AsInteger;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTTIPO.AsString       := 'T';
      fDMImportarPdx.cdsCONVERSOR_COD_ANT.Post;
      fDMImportarPdx.cdsCONVERSOR_COD_ANT.ApplyUpdates(0);
    end;

    fDMImportarPdx.cdsTransp.ApplyUpdates(0);
  except
    on e: Exception do
    begin
      ShowMessage(' Transp Fornecedor: ' + fDMImportarPdx.cdsTranspNOME.AsString);
      raise Exception.Create('Erro ao abrir o arquivo: ' + #13 + e.Message);
    end;
  end;
end;

procedure TfrmImportarPdx.BitBtn1Click(Sender: TObject);
begin
  fDMImportarPdx.cdsTransp.Close;
  fDMImportarPdx.cdsTransp.Open;
  fDMImportarPdx.tTransportadora.Close;
  fDMImportarPdx.tTransportadora.Open;
  fDMImportarPdx.tTransportadora.First;
  ProgressBar1.Max      := fDMImportarPdx.tTransportadora.RecordCount;
  ProgressBar1.Position := 0;
  while not fDMImportarPdx.tTransportadora.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    Gravar_Transp;
    fDMImportarPdx.tTransportadora.Next;
  end;
  ShowMessage('Transportadoras, geração concluída!');
end;

procedure TfrmImportarPdx.BitBtn6Click(Sender: TObject);
var
  vCodAux: Integer;
begin
  fDMImportarPdx.cdsCondPgto.Close;
  fDMImportarPdx.cdsCondPgto.Open;
  fDMImportarPdx.cdsCondPgto_Dia.Close;
  fDMImportarPdx.cdsCondPgto_Dia.Open;

  fDMImportarPdx.tCondPgto.Close;
  fDMImportarPdx.tCondPgto.Open;
  fDMImportarPdx.tCondPgto.IndexFieldNames := 'Codigo';
  vCodAux := 0;
  fDMImportarPdx.tCondPgto.First;
  while not fDMImportarPdx.tCondPgto.Eof do
  begin
    Gravar_CondPgto;

    vCodAux := fDMImportarPdx.tCondPgtoCodigo.AsInteger;
    fDMImportarPdx.tCondPgto.Next;
  end;
  Gravar_Sequencial('CONDPGTO',vCodAux);

  ShowMessage('Condição de pagamento, geração concluída!');
end;

procedure TfrmImportarPdx.Gravar_CondPgto;
begin

  fDMImportarPdx.cdsCondPgto.Insert;
  fDMImportarPdx.cdsCondPgtoID.AsInteger  := fDMImportarPdx.tCondPgtoCodigo.AsInteger;
  fDMImportarPdx.cdsCondPgtoNOME.AsString := fDMImportarPdx.tCondPgtoNome.AsString;
  fDMImportarPdx.cdsCondPgtoTIPO.AsString := fDMImportarPdx.tCondPgtoPrazoVista.AsString;
  fDMImportarPdx.cdsCondPgtoIMPRIMIR_NFSE.AsString := 'N';
  fDMImportarPdx.cdsCondPgtoTIPO_CONDICAO.AsString := 'V';
  fDMImportarPdx.cdsCondPgtoQTD_PARCELA.AsInteger  := 0;
  fDMImportarPdx.cdsCondPgtoENTRADA.AsString       := 'N';
  fDMImportarPdx.cdsCondPgto.Post;
  fDMImportarPdx.cdsCondPgto.ApplyUpdates(0);

  fDMImportarPdx.tCondPgtoItem.First;
  while not fDMImportarPdx.tCondPgtoItem.Eof do
  begin
    fDMImportarPdx.cdsCondPgto_Dia.Insert;
    fDMImportarPdx.cdsCondPgto_DiaID.AsInteger      := fDMImportarPdx.tCondPgtoItemCodigo.AsInteger;
    fDMImportarPdx.cdsCondPgto_DiaITEM.AsInteger    := fDMImportarPdx.tCondPgtoItemItem.AsInteger;
    fDMImportarPdx.cdsCondPgto_DiaQTDDIAS.AsInteger := fDMImportarPdx.tCondPgtoItemQtdDias.AsInteger;
    fDMImportarPdx.cdsCondPgto_Dia.Post;

    fDMImportarPdx.tCondPgtoItem.Next;
  end;
  fDMImportarPdx.cdsCondPgto_Dia.ApplyUpdates(0);
end;

procedure TfrmImportarPdx.BitBtn3Click(Sender: TObject);
begin
  fDMImportarPdx.tFornecedores.Close;
  fDMImportarPdx.tFornecedores.Open;
  ProgressBar1.Max      := fDMImportarPdx.tFornecedores.RecordCount;
  ProgressBar1.Position := 0;
  fDMImportarPdx.tFornecedores.First;
  while not fDMImportarPdx.tFornecedores.Eof do
  begin
    if fDMImportarPdx.tFornecedoresCodForn.AsInteger = 1213 then
      ShowMessage('Aqui 1213');
    ProgressBar1.Position := ProgressBar1.Position + 1;
    Gravar_Fornecedores;
    fDMImportarPdx.tFornecedores.Next;
  end;
  ShowMessage('Clientes, geração concluída!');
end;

procedure TfrmImportarPdx.Gravar_Fornecedores;
var
  vAux: Integer;
  vFlag: Boolean;
  vTexto: String;
  vDocAux : String;
  vExiste : Boolean;
  vaux2 : Integer;
begin
  fDMImportarPdx.qCodAnt.Close;
  fDMImportarPdx.qCodAnt.ParamByName('COD_ANT').AsInteger := fDMImportarPdx.tFornecedoresCodForn.AsInteger;
  fDMImportarPdx.qCodAnt.Open;
  if fDMImportarPdx.qCodAntCONTADOR.AsInteger > 0 then
    exit;

  try
    vDocAux := Monta_Numero(fDMImportarPdx.tFornecedoresCGC.AsString,0);
    vExiste := False;
    if trim(vDocAux) <> '' then
      if fDMImportarPdx.fnc_Abrir_Fornecedor(fDMImportarPdx.tFornecedoresCGC.AsString,'',0) then
        vExiste := True;

    //if (fDMImportarPdx.tFornecedoresCGC.AsString <> '') and (fDMImportarPdx.fnc_Abrir_Fornecedor(fDMImportarPdx.tFornecedoresCGC.AsString,'')) then
    if vExiste then
      fDMImportarPdx.cdsFornecedor.Edit
    else
    begin
      vAux := dmDatabase.ProximaSequencia('PESSOA',0);
      fDMImportarPdx.cdsFornecedor.Insert;
      fDMImportarPdx.cdsFornecedorCODIGO.AsInteger  := vAux;
      fDMImportarPdx.cdsFornecedorNOME.AsString     := fDMImportarPdx.tFornecedoresNomeForn.AsString;
      fDMImportarPdx.cdsFornecedorFANTASIA.AsString := fDMImportarPdx.tFornecedoresFantasia.AsString;
      fDMImportarPdx.cdsFornecedorCNPJ_CPF.AsString := fDMImportarPdx.tFornecedoresCGC.AsString;

      fDMImportarPdx.cdsFornecedorTP_TRANSPORTADORA.AsString := 'N';
      fDMImportarPdx.cdsFornecedorTP_VENDEDOR.AsString       := 'N';
      fDMImportarPdx.cdsFornecedorTIPO_ICMS.AsString         := 'N';
      fDMImportarPdx.cdsFornecedorTP_ATELIER.AsString        := 'N';
      fDMImportarPdx.cdsFornecedorTP_CLIENTE.AsString        := 'N';
      fDMImportarPdx.cdsFornecedorTP_EXPORTACAO.AsString     := 'N';
      fDMImportarPdx.cdsFornecedorTP_FUNCIONARIO.AsString    := 'N';
      fDMImportarPdx.cdsFornecedorTP_ALUNO.AsString          := 'N';
      fDMImportarPdx.cdsFornecedorTP_PREPOSTO.AsString       := 'N';
      fDMImportarPdx.cdsFornecedorINATIVO.AsString           := 'N';
    end;

    if (fDMImportarPdx.cdsFornecedorTP_FORNECEDOR.AsString = 'N') or (fDMImportarPdx.cdsFornecedorTP_FORNECEDOR.IsNull) then
    begin
      fDMImportarPdx.cdsFornecedorTP_FORNECEDOR.AsString   := 'S';
      fDMImportarPdx.cdsFornecedorENDERECO.AsString        := fDMImportarPdx.tFornecedoresEndForn.AsString;
      fDMImportarPdx.cdsFornecedorNUM_END.AsString         := fDMImportarPdx.tFornecedoresNumEnd.AsString;
      fDMImportarPdx.cdsFornecedorBAIRRO.AsString          := fDMImportarPdx.tFornecedoresBairroForn.AsString;
      fDMImportarPdx.cdsFornecedorEMAIL_COMPRAS.AsString   := fDMImportarPdx.tFornecedoresEmail.AsString;

      vCodCidade := 0;
      if (fDMImportarPdx.tFornecedoresCodCidade.AsInteger > 0) and (fDMImportarPdx.tCidade.Locate('Codigo',fDMImportarPdx.tFornecedoresCodCidade.AsInteger,([LocaseInsensitive]))) then
      begin
        if not fDMImportarPdx.fnc_Abrir_Cidade(fDMImportarPdx.tCidadeCodMunicipio.AsString) then
          Gravar_Cidade;
        if vCodCidade <= 0 then
          vCodCidade := fDMImportarPdx.cdsCidadeID.AsInteger;
        fDMImportarPdx.cdsFornecedorCIDADE.AsString := fDMImportarPdx.tCidadeNome.AsString;
      end;
      if vCodCidade > 0 then
        fDMImportarPdx.cdsFornecedorID_CIDADE.AsInteger := vCodCidade;

      if (trim(fDMImportarPdx.tFornecedoresEstadoForn.AsString) <> '') and (fDMImportarPdx.tFornecedoresEstadoForn.AsString <> EmptyStr) then
        fDMImportarPdx.cdsFornecedorUF.AsString        := fDMImportarPdx.tFornecedoresEstadoForn.AsString;
      fDMImportarPdx.cdsFornecedorCEP.AsString       := fDMImportarPdx.tFornecedoresCEPForn.AsString;
      //fDMImportarPdx.cdsFornecedorDDDFONE1.AsInteger := fDMImportarPdx.tFornecedoresDDDFone1.AsInteger;
      fDMImportarPdx.cdsFornecedorTELEFONE1.AsString := fDMImportarPdx.tFornecedoresTel1Forn.AsString;
      //fDMImportarPdx.cdsFornecedorDDDFONE2.AsInteger := fDMImportarPdx.tFornecedoresDDDFone2.AsInteger;
      fDMImportarPdx.cdsFornecedorTELEFONE2.AsString := fDMImportarPdx.tFornecedoresTel2Forn.AsString;
      //fDMImportarPdx.cdsFornecedorDDDFAX.AsInteger   := fDMImportarPdx.tFornecedoresDDDFax.AsInteger;
      fDMImportarPdx.cdsFornecedorFAX.AsString       := fDMImportarPdx.tFornecedoresFaxForn.AsString;
      fDMImportarPdx.cdsFornecedorPESSOA.AsString    := 'J';
      fDMImportarPdx.cdsFornecedorINSCR_EST.AsString := fDMImportarPdx.tFornecedoresInsc.AsString;

      fDMImportarPdx.cdsFornecedorUSUARIO.AsString        := 'PARADOX';
      fDMImportarPdx.cdsFornecedorDTCADASTRO.AsDateTime   := fDMImportarPdx.tFornecedoresDataCadastroForn.AsDateTime;
      //fDMImportarPdx.cdsFornecedorHRCADASTRO.AsDateTime   := fDMImportarPdx.tFornecedoresHrCad.AsDateTime;
      fDMImportarPdx.cdsFornecedorOBS.Value               := fDMImportarPdx.tFornecedoresObsForn.Value;
      if fDMImportarPdx.tFornecedoresCodCondPgto.AsInteger > 0 then
      begin
        fDMImportarPdx.cdsFornecedorID_CONDPGTO.AsInteger := fDMImportarPdx.tFornecedoresCodCondPgto.AsInteger;
        if not (fDMImportarPdx.cdsCondPgto.Locate('ID',fDMImportarPdx.cdsFornecedorID_CONDPGTO.AsInteger,([LocaseInsensitive]))) then
        begin
          ShowMessage('ID Cond: ' + fDMImportarPdx.cdsFornecedorID_CONDPGTO.AsString + '   ID Forn: ' + fDMImportarPdx.tFornecedoresCodForn.AsString) ;
          fDMImportarPdx.cdsFornecedorID_CONDPGTO.Clear;
        end;
      end;

      {vCodTransp := 0;
      if (fDMImportarPdx.tFornecedoresCodTransportadora.AsInteger > 0) and (fDMImportarPdx.tTransportadora.Locate('Codigo',fDMImportarPdx.tFornecedoresCodTransportadora.AsInteger,([LocaseInsensitive]))) then
      begin
        vFlag  := False;
        vTexto := Monta_Numero(fDMImportarPdx.tTransportadoraCNPJ.AsString,0);
        if (copy(vTexto,1,5) = '00000') or (trim(vTexto) = '') then
        begin
          if fDMImportarPdx.fnc_Abrir_Transp(fDMImportarPdx.tTransportadoraNome.AsString,'') then
            vFlag := True;
        end
        else
        begin
          if fDMImportarPdx.fnc_Abrir_Transp(fDMImportarPdx.tTransportadoraNome.AsString,fDMImportarPdx.tTransportadoraCNPJ.AsString) then
            vFlag := True;
        end;
        if not vFlag then
          Gravar_Transp;
        if vCodTransp <= 0 then
          vCodTransp := fDMImportarPdx.cdsTranspCODIGO.AsInteger;
      end;
      if vCodTransp > 0 then
        fDMImportarPdx.cdsFornecedorID_TRANSPORTADORA.AsInteger := vCodTransp;}

      vIDPais := 0;
      if (fDMImportarPdx.tFornecedoresIDPais.AsInteger > 0) and (fDMImportarPdx.tPais.Locate('ID',fDMImportarPdx.tFornecedoresIDPais.AsInteger,([LocaseInsensitive]))) then
      begin
        if not fDMImportarPdx.fnc_Abrir_Pais(fDMImportarPdx.tPaisCodPais.AsString) then
          Gravar_Pais;
        if vIDPais <= 0 then
          vIDPais := fDMImportarPdx.cdsPaisID.AsInteger;
      end;
      if vIDPais <= 0 then
        vIDPais := 1;
    end;

    if fDMImportarPdx.cdsFornecedorTP_FORNECEDOR.AsString = 'N' then
    begin
      fDMImportarPdx.cdsFornecedorID_PAIS.AsInteger := vIDPais;
      if (fDMImportarPdx.cdsFornecedorID_PAIS.AsInteger > 0) then
        if not(fDMImportarPdx.cdsPais.Locate('ID',fDMImportarPdx.cdsFornecedorID_PAIS.AsInteger,([LocaseInsensitive]))) then
          fDMImportarPdx.cdsFornecedorID_PAIS.Clear;

      fDMImportarPdx.cdsFornecedorID_REGIME_TRIB.AsInteger := 3;
      fDMImportarPdx.cdsFornecedorINATIVO.AsString := 'N';
      fDMImportarPdx.cdsFornecedorHOMEPAGE.AsString := fDMImportarPdx.tFornecedoresHomePage.AsString;
      //if fDMImportarPdx.tClienteTipoFrete.AsString = 'C' then
      //  fDMImportarPdx.cdsFornecedorTIPO_FRETE.AsString := '1'
      //else
      //if fDMImportarPdx.tClienteTipoFrete.AsString = 'F' then
      //  fDMImportarPdx.cdsFornecedorTIPO_FRETE.AsString := '2';
    end;

    if fDMImportarPdx.cdsFornecedorPESSOA.AsString = 'J' then
      fDMImportarPdx.cdsFornecedorTIPO_CONSUMIDOR.AsInteger := 0
    else
      fDMImportarPdx.cdsFornecedorTIPO_CONSUMIDOR.AsInteger := 1;

    if trim(fDMImportarPdx.cdsFornecedorINSCR_EST.AsString) = '' then
      fDMImportarPdx.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 9
    else
    if trim(fDMImportarPdx.cdsFornecedorINSCR_EST.AsString) = 'ISENTO' then
      fDMImportarPdx.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 2
    else
      fDMImportarPdx.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 1;

    fDMImportarPdx.cdsFornecedor.Post;

    if vExiste then
    begin
      fDMImportarPdx.qCodAnt.Close;
      fDMImportarPdx.qCodAnt.ParamByName('COD_ANT').AsInteger := fDMImportarPdx.tFornecedoresCodForn.AsInteger;
      fDMImportarPdx.qCodAnt.Open;

      if fDMImportarPdx.qCodAntCONTADOR.AsInteger <= 0 then
      begin
        fDMImportarPdx.cdsCONVERSOR_COD_ANT.Close;
        fDMImportarPdx.sdsCONVERSOR_COD_ANT.ParamByName('ID_PESSOA').AsInteger := -1;
        fDMImportarPdx.cdsCONVERSOR_COD_ANT.Open;
      end
      else
      begin
        fDMImportarPdx.cdsCONVERSOR_COD_ANT.Close;
        fDMImportarPdx.sdsCONVERSOR_COD_ANT.ParamByName('ID_PESSOA').AsInteger := fDMImportarPdx.cdsFornecedorCODIGO.AsInteger;
        fDMImportarPdx.cdsCONVERSOR_COD_ANT.Open;
      end
    end
    else
    begin
      fDMImportarPdx.cdsCONVERSOR_COD_ANT.Close;
      fDMImportarPdx.sdsCONVERSOR_COD_ANT.ParamByName('ID_PESSOA').AsInteger := fDMImportarPdx.cdsFornecedorCODIGO.AsInteger;
      fDMImportarPdx.cdsCONVERSOR_COD_ANT.Open;
    end;
    if fDMImportarPdx.cdsCONVERSOR_COD_ANT.IsEmpty then
    begin
      vAux2 := dmDatabase.ProximaSequencia('CONVERSOR_COD_ANT',0);
      fDMImportarPdx.cdsCONVERSOR_COD_ANT.Insert;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTID.AsInteger        := vaux2;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTID_PESSOA.AsInteger := fDMImportarPdx.cdsFornecedorCODIGO.AsInteger;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTCOD_ANT.AsInteger   := fDMImportarPdx.tFornecedoresCodForn.AsInteger;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTTIPO.AsString       := 'F';
      fDMImportarPdx.cdsCONVERSOR_COD_ANT.Post;
      fDMImportarPdx.cdsCONVERSOR_COD_ANT.ApplyUpdates(0);
    end;

    fDMImportarPdx.cdsFornecedor.ApplyUpdates(0);
  except
    on e: Exception do
    begin
      ShowMessage('Fornecedor: ' + fDMImportarPdx.cdsFornecedorNOME.AsString);
      raise Exception.Create('Erro ao abrir o arquivo: ' + #13 + e.Message);
    end;
  end;
end;

procedure TfrmImportarPdx.BitBtn5Click(Sender: TObject);
var
  vAux2 : Integer;
begin
  fDMImportarPdx.tVendedor.Close;
  fDMImportarPdx.tVendedor.Open;
  while not fDMImportarPdx.tVendedor.Eof do
  begin
    Gravar_Vendedor(fDMImportarPdx.tVendedorCodigo.AsInteger);
    fDMImportarPdx.tVendedor.Next;
  end;
  ShowMessage('Vendedores, geração concluída!');
end;

procedure TfrmImportarPdx.Gravar_Vendedor(ID: Integer = 0);
var
  vAux: String;
  vFlag: Boolean;
  vIDAux: Integer;
  vAux2 : Integer;
begin
  try
    vIDAux := 0;
    vFlag  := False;
    vAux   := Monta_Numero(fDMImportarPdx.tVendedorCgcCpf.AsString,0);
    if (copy(vAux,1,5) = '00000') or (trim(vAux) = '') then
    begin
      if fDMImportarPdx.fnc_Abrir_Transp(fDMImportarPdx.tVendedorNome.AsString,'') then
        vFlag := True;
    end
    else
    begin
      if fDMImportarPdx.fnc_Abrir_Transp(fDMImportarPdx.tVendedorNome.AsString,fDMImportarPdx.tVendedorCgcCpf.AsString) then
        vFlag := True;
    end;

    if not(vFlag) and (ID > 0) then
    begin
      if fDMImportarPdx.fnc_Abrir_Transp('','',ID) then
      begin
        if fDMImportarPdx.cdsTranspTP_VENDEDOR.AsString = 'S' then
          vIDVendedor := fDMImportarPdx.cdsTranspCODIGO.AsInteger
        else
          vIDAux := 0;
      end
      else
        vIDAux := ID;
    end;

    if vFlag then
      fDMImportarPdx.cdsTransp.Edit
    else
    begin
      if vIDAux <= 0 then
        vIDAux := dmDatabase.ProximaSequencia('PESSOA',0);
      fDMImportarPdx.cdsTransp.Insert;
      fDMImportarPdx.cdsTranspCODIGO.AsInteger  := vIDAux;
      fDMImportarPdx.cdsTranspNOME.AsString     := fDMImportarPdx.tVendedorNome.AsString;
      fDMImportarPdx.cdsTranspFANTASIA.AsString := fDMImportarPdx.tVendedorNome.AsString;
      fDMImportarPdx.cdsTranspCNPJ_CPF.AsString := fDMImportarPdx.tVendedorCgcCpf.AsString;
      fDMImportarPdx.cdsTranspPESSOA.AsString   := fDMImportarPdx.tVendedorPessoa.AsString;
      fDMImportarPdx.cdsTranspTIPO_COMISSAO.AsString := fDMImportarPdx.tVendedorTipoComissao.AsString;

      fDMImportarPdx.cdsTranspTP_FORNECEDOR.AsString     := 'N';
      fDMImportarPdx.cdsTranspTP_CLIENTE.AsString        := 'N';
      fDMImportarPdx.cdsTranspTP_TRANSPORTADORA.AsString := 'N';
      fDMImportarPdx.cdsTranspTIPO_ICMS.AsString         := 'N';
      fDMImportarPdx.cdsTranspTP_ATELIER.AsString        := 'N';
      fDMImportarPdx.cdsTranspTP_ALUNO.AsString          := 'N';
      fDMImportarPdx.cdsTranspTP_EXPORTACAO.AsString     := 'N';
      fDMImportarPdx.cdsTranspTP_FUNCIONARIO.AsString    := 'N';
      fDMImportarPdx.cdsTranspTP_PREPOSTO.AsString       := 'N';

      fDMImportarPdx.cdsTranspENDERECO.AsString := fDMImportarPdx.tVendedorEndereco.AsString;
      fDMImportarPdx.cdsTranspBAIRRO.AsString   := fDMImportarPdx.tVendedorBairro.AsString;

      if (trim(fDMImportarPdx.tVendedorEstado.AsString) <> '') and (fDMImportarPdx.tVendedorEstado.AsString <> EmptyStr) then
        fDMImportarPdx.cdsTranspUF.AsString      := fDMImportarPdx.tVendedorEstado.AsString;
      fDMImportarPdx.cdsTranspCEP.AsString       := fDMImportarPdx.tVendedorCep.AsString;
      fDMImportarPdx.cdsTranspTELEFONE1.AsString := fDMImportarPdx.tVendedorFone.AsString;
      fDMImportarPdx.cdsTranspFAX.AsString       := fDMImportarPdx.tVendedorFax.AsString;
      fDMImportarPdx.cdsTranspPESSOA.AsString    := fDMImportarPdx.tVendedorPessoa.AsString;
      fDMImportarPdx.cdsTranspINSCR_EST.AsString := fDMImportarPdx.tVendedorInscEst.AsString;
      fDMImportarPdx.cdsTranspPERC_COMISSAO.AsFloat := fDMImportarPdx.tVendedorPercComissao.AsFloat;

      fDMImportarPdx.cdsTranspUSUARIO.AsString      := 'PARADOX';
      fDMImportarPdx.cdsTranspDTCADASTRO.AsDateTime := Date;
      fDMImportarPdx.cdsTranspHRCADASTRO.AsDateTime := Now;
      fDMImportarPdx.cdsTranspCOD_ANT.AsInteger     := fDMImportarPdx.tVendedorCodigo.AsInteger;
      fDMImportarPdx.cdsTranspTIPO_CONSUMIDOR.AsInteger := 1;
      if trim(fDMImportarPdx.cdsTranspINSCR_EST.AsString) = '' then
        fDMImportarPdx.cdsTranspTIPO_CONTRIBUINTE.AsInteger := 9
      else
      if trim(fDMImportarPdx.cdsTranspINSCR_EST.AsString) = 'ISENTO' then
        fDMImportarPdx.cdsTranspTIPO_CONTRIBUINTE.AsInteger := 2
      else
        fDMImportarPdx.cdsTranspTIPO_CONTRIBUINTE.AsInteger := 1;
      fDMImportarPdx.cdsTranspID_PAIS.AsInteger := 1;
    end;
    fDMImportarPdx.cdsTranspTP_VENDEDOR.AsString    := 'S';
    fDMImportarPdx.cdsTransp.Post;
    vIDVendedor := fDMImportarPdx.cdsTranspCODIGO.AsInteger;

    fDMImportarPdx.cdsCONVERSOR_COD_ANT.Close;
    fDMImportarPdx.sdsCONVERSOR_COD_ANT.ParamByName('ID_PESSOA').AsInteger := fDMImportarPdx.cdsTranspCODIGO.AsInteger;
    fDMImportarPdx.cdsCONVERSOR_COD_ANT.Open;
    if fDMImportarPdx.cdsCONVERSOR_COD_ANT.IsEmpty then
    begin
      vAux2 := dmDatabase.ProximaSequencia('CONVERSOR_COD_ANT',0);
      fDMImportarPdx.cdsCONVERSOR_COD_ANT.Insert;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTID.AsInteger        := vaux2;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTID_PESSOA.AsInteger := fDMImportarPdx.cdsTranspCODIGO.AsInteger;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTCOD_ANT.AsInteger   := fDMImportarPdx.tVendedorCodigo.AsInteger;
      fDMImportarPdx.cdsCONVERSOR_COD_ANTTIPO.AsString       := 'V';
      fDMImportarPdx.cdsCONVERSOR_COD_ANT.Post;
      fDMImportarPdx.cdsCONVERSOR_COD_ANT.ApplyUpdates(0);
    end;



    fDMImportarPdx.cdsTransp.ApplyUpdates(0);

  except
    on e: Exception do
    begin
      ShowMessage(' Transp Fornecedor: ' + fDMImportarPdx.cdsTranspNOME.AsString);
      raise Exception.Create('Erro ao abrir o arquivo: ' + #13 + e.Message);
    end;
  end;
end;

procedure TfrmImportarPdx.Gravar_Sequencial(Tabela: String;
  Codigo: Integer);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata  := True;
  sds.GetMetadata := False;

  sds.CommandText := 'UPDATE SEQUENCIAL SET NUMREGISTRO = ' + IntToStr(Codigo)
                   +  ' WHERE TABELA = ' + QuotedStr(Tabela)
                   +  ' AND FILIAL = 0 ';
  sds.ExecSQL;
end;

procedure TfrmImportarPdx.BitBtn8Click(Sender: TObject);
var
  vLancaGrade : Boolean;
begin
  fDMImportarPdx.cdsEstoque_Mov.Close;
  fDMImportarPdx.cdsEstoque_Mov.Open;
  fDMImportarPdx.cdsEstoque_Mov.Last;
  fDMImportarPdx.tMaterial.Close;
  fDMImportarPdx.tMaterial.Open;
  fDMImportarPdx.tMaterialCor.Close;
  fDMImportarPdx.tMaterialCor.Open;
  fDMImportarPdx.cdsProduto.Open;
  fDMImportarPdx.tCor.Open;
  fDMImportarPdx.tGrade.Open;
  fDMImportarPdx.tGradeItem.Open;

  vIDEstoqueMov := 0;
  fDMImportarPdx.qEstoqueMatMov.Close;
  fDMImportarPdx.qEstoqueMatMov.Open;
  fDMImportarPdx.qEstoqueMatMov.Filtered := False;
  fDMImportarPdx.qEstoqueMatMov.Filtered := True;

  fDMImportarPdx.qEstoqueMatMovGrade.Close;
  fDMImportarPdx.qEstoqueMatMovGrade.Open;

  fDMImportarPdx.qVlrUnitario.Close;
  fDMImportarPdx.qVlrUnitario.Open;

  ProgressBar1.Max      := fDMImportarPdx.qEstoqueMatMov.RecordCount;
  ProgressBar1.Position := 0;

  try
  while not fDMImportarPdx.qEstoqueMatMov.Eof do
  begin
    //if fDMImportarPdx.qEstoqueMatMovcodmaterial.AsInteger <> 6162 then
    //begin
    //  fDMImportarPdx.qEstoqueMatMov.Next;
    //  continue;
    //end;
    //if fDMImportarPdx.qEstoqueMatMovcodmaterial.AsInteger = 6162 then
    //  ShowMessage('Material 6162');
    ProgressBar1.Position := ProgressBar1.Position + 1;
    if StrToFloat(FormatFloat('0.00000',fDMImportarPdx.qEstoqueMatMovqtd2.AsFloat)) > 0 then
    begin
      if fDMImportarPdx.tMaterial.Locate('Codigo',fDMImportarPdx.qEstoqueMatMovcodmaterial.AsInteger,([LocaseInsensitive])) then
        fDMImportarPdx.Gravar_Material;

      vLancaGrade := False;
      if (fDMImportarPdx.tMaterial.Locate('Codigo',fDMImportarPdx.qEstoqueMatMovcodmaterial.AsInteger,([LocaseInsensitive]))) then
      begin
        if fDMImportarPdx.tMaterialCodGrade.AsInteger > 0 then
          vLancaGrade := fDMImportarPdx.tMaterialLancaGrade.AsBoolean;
      end;                                          

      if vLancaGrade then
      begin
        try
          fDMImportarPdx.qEstoqueMatMovGrade.Filtered := False;
          fDMImportarPdx.qEstoqueMatMovGrade.Filter   := 'CodMaterial = ' + QuotedStr(fDMImportarPdx.qEstoqueMatMovcodmaterial.AsString)
                                                       + ' and ' + ' CodCor = '  + QuotedStr(fDMImportarPdx.qEstoqueMatMovcodcor.AsString);
          fDMImportarPdx.qEstoqueMatMovGrade.Filtered := True;
          fDMImportarPdx.qEstoqueMatMovGrade.First;
          while not fDMImportarPdx.qEstoqueMatMovGrade.Eof do
          begin
            if StrToFloat(FormatFloat('0.00000',fDMImportarPdx.qEstoqueMatMovGradeqtd2.AsFloat)) > 0 then
              prc_Grava_Estoque_Mov(fDMImportarPdx.qEstoqueMatMovGradetamanho.AsString,fDMImportarPdx.qEstoqueMatMovGradeqtd2.AsFloat);
            fDMImportarPdx.qEstoqueMatMovGrade.Next;
          end;
        except
        end;
      end
      else
        prc_Grava_Estoque_Mov('',fDMImportarPdx.qEstoqueMatMovqtd2.AsFloat);

    end;
    fDMImportarPdx.qEstoqueMatMov.Next;
  end;

  except
    on e: Exception do
      ShowMessage('Ocorreu o seguinte erro ao executar: ' + fDMImportarPdx.qEstoqueMatMovcodmaterial.AsString  + #13 + e.Message);
  end;
  
  Gravar_Sequencial('ESTOQUE_MOV',vIDEstoqueMov);

  ShowMessage('Estoque, geração concluída!');
end;

procedure TfrmImportarPdx.BitBtn11Click(Sender: TObject);
begin
  fDMImportarPdx.cdscor.Close;
  fDMImportarPdx.cdscor.Open;

  ProgressBar1.Max      := fDMImportarPdx.tCor.RecordCount;
  ProgressBar1.Position := 0;
  fDMImportarPdx.tCor.First;
  while not fDMImportarPdx.tCor.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1; 
    if not (fDMImportarPdx.cdscor.Locate('ID',fDMImportarPdx.tCorCodigo.AsInteger,([LocaseInsensitive]))) then
    begin
      fDMImportarPdx.cdscor.Insert;
      fDMImportarPdx.cdscorID.AsInteger := fDMImportarPdx.tCorCodigo.AsInteger;
      fDMImportarPdx.cdscorNOME.AsString := fDMImportarPdx.tCorNome.AsString;
      fDMImportarPdx.cdscor.Post;
      fDMImportarPdx.cdscor.ApplyUpdates(0);
    end;

    {if not (fDMImportarPdx.cdsCombinacao.Locate('ID',fDMImportarPdx.tCorCodigo.AsInteger,([LocaseInsensitive]))) then
    begin
      fDMImportarPdx.cdsCombinacao.Insert;
      fDMImportarPdx.cdsCombinacaoID.AsInteger := fDMImportarPdx.tCorCodigo.AsInteger;
      fDMImportarPdx.cdsCombinacaoID_PRODUTO.Clear;
      fDMImportarPdx.cdsCombinacaoITEM_COMBINACAO.Clear;
      fDMImportarPdx.cdsCombinacaoID_COR.Clear;
      fDMImportarPdx.cdsCombinacaoNOME.AsString := fDMImportarPdx.tCorNome.AsString;
      fDMImportarPdx.cdsCombinacaoTIPO_REG.AsString := 'C';
      fDMImportarPdx.cdsCombinacaoID_ANT.AsInteger := fDMImportarPdx.tCorCodigo.AsInteger;
      fDMImportarPdx.cdsCombinacao.Post;
      fDMImportarPdx.cdsCombinacao.ApplyUpdates(0);
    end;}
    fDMImportarPdx.tCor.Next;
  end;
end;

procedure TfrmImportarPdx.BitBtn12Click(Sender: TObject);
begin
  fDMImportarPdx.cdsTamanho.Close;
  fDMImportarPdx.cdsTamanho.Open;
  fDMImportarPdx.tTamanhos.Close;
  fDMImportarPdx.tTamanhos.Open;
  while not fDMImportarPdx.tTamanhos.Eof do
  begin
    Gravar_Tamanho;
    fDMImportarPdx.tTamanhos.Next;
  end;
  ShowMessage('Tamanhos... geração concluída!');
end;

procedure TfrmImportarPdx.Gravar_Tamanho;
var
  vAux : Integer;
begin
  fDMImportarPdx.qTam.Close;
  fDMImportarPdx.qTam.ParamByName('TAMANHO').AsString := fDMImportarPdx.tTamanhosTamanho.AsString;
  fDMImportarPdx.qTam.Open;
  if fDMImportarPdx.qTamCONTADOR.AsInteger > 0 then
    exit;

  vAux := dmDatabase.ProximaSequencia('TAMANHO',0);

  fDMImportarPdx.cdsTamanho.Insert;
  fDMImportarPdx.cdsTamanhoID.AsInteger := vAux;
  fDMImportarPdx.cdsTamanhoTAMANHO.AsString := fDMImportarPdx.tTamanhosTamanho.AsString;
  fDMImportarPdx.cdsTamanho.Post;
  fDMImportarPdx.cdsTamanho.ApplyUpdates(0);
end;

procedure TfrmImportarPdx.BitBtn9Click(Sender: TObject);
begin
  frmConvMaterial := TfrmConvMaterial.Create(self);
  frmConvMaterial.fDMImportarPdx := fDMImportarPdx;
  frmConvMaterial.ShowModal;
  FreeAndNil(frmConvMaterial);
end;

procedure TfrmImportarPdx.prc_Grava_Estoque_Mov(Tamanho: String; Qtd: Real);
var
  vTamAux : String;
  vIDCorAux : Integer;
begin
  vIDEstoqueMov := vIDEstoqueMov + 1;

  vTamAux := Tamanho;
  if trim(Tamanho) = '' then
    vTamAux := '';
  vIDCorAux := fDMImportarPdx.qEstoqueMatMovcodcor.AsInteger;
  if fDMImportarPdx.qEstoqueMatMovcodcor.AsInteger <= 0 then
    vIDCorAux := 0;
  fDMImportarPdx.cdsEstoque_Mov.Insert;
  fDMImportarPdx.cdsEstoque_MovID.AsInteger           := vIDEstoqueMov;
  fDMImportarPdx.cdsEstoque_MovFILIAL.AsInteger       := 1;
  fDMImportarPdx.cdsEstoque_MovID_PRODUTO.AsInteger   := fDMImportarPdx.qEstoqueMatMovcodmaterial.AsInteger;
  fDMImportarPdx.cdsEstoque_MovID_COR.AsInteger       := vIDCorAux;
  fDMImportarPdx.cdsEstoque_MovTAMANHO.AsString       := vTamAux;
  fDMImportarPdx.cdsEstoque_MovDTMOVIMENTO.AsDateTime := Date;
  fDMImportarPdx.cdsEstoque_MovTIPO_ES.AsString       := 'E';
  fDMImportarPdx.cdsEstoque_MovTIPO_MOV.AsString      := 'INI';

  fDMImportarPdx.qVlrUnitario.Filtered := False;
  if fDMImportarPdx.qEstoqueMatMovcodmaterial.AsInteger > 0 then
    fDMImportarPdx.qVlrUnitario.Filter := 'CodMaterial = ' + QuotedStr(fDMImportarPdx.qEstoqueMatMovcodmaterial.AsString)
                                        + ' and CodCor = ' + QuotedStr(fDMImportarPdx.qEstoqueMatMovcodcor.AsString)
  else
    fDMImportarPdx.qVlrUnitario.Filter := 'CodMaterial = ' + QuotedStr(fDMImportarPdx.qEstoqueMatMovcodmaterial.AsString);
  fDMImportarPdx.qVlrUnitario.Filtered := True;
  fDMImportarPdx.qVlrUnitario.Last;

  if StrToFloat(FormatFloat('0.0000',fDMImportarPdx.tMaterialPrCusto.AsFloat)) > StrToFloat(FormatFloat('0.0000',fDMImportarPdx.qVlrUnitarioVLRUNITARIO.AsFloat)) then
    fDMImportarPdx.cdsEstoque_MovVLR_UNITARIO.AsFloat   := StrToFloat(FormatFloat('0.00000',fDMImportarPdx.tMaterialPrCusto.AsFloat))
  else
    fDMImportarPdx.cdsEstoque_MovVLR_UNITARIO.AsFloat   := StrToFloat(FormatFloat('0.00000',fDMImportarPdx.qVlrUnitarioVLRUNITARIO.AsFloat));
  fDMImportarPdx.cdsEstoque_MovQTD.AsFloat            := StrToFloat(FormatFloat('0.00000',Qtd));
  fDMImportarPdx.cdsEstoque_MovQTD2.AsFloat           := StrToFloat(FormatFloat('0.00000',Qtd));

  fDMImportarPdx.cdsEstoque_MovPERC_ICMS.AsFloat    := fDMImportarPdx.tMaterialICMS.AsFloat;
  fDMImportarPdx.cdsEstoque_MovPERC_IPI.AsFloat     := fDMImportarPdx.tMaterialIPI.AsFloat;
  fDMImportarPdx.cdsEstoque_MovUNIDADE.AsString     := fDMImportarPdx.tMaterialUnidade.AsString;
    
  if StrToFloat(FormatFloat('0.00',fDMImportarPdx.cdsEstoque_MovPERC_ICMS.AsFloat)) > 0 then
    fDMImportarPdx.cdsEstoque_MovPERC_TRIBUTACAO.AsFloat := 100;
  fDMImportarPdx.cdsEstoque_MovVLR_FRETE.AsFloat := StrToFloat(FormatFloat('0.00',0));
  fDMImportarPdx.cdsEstoque_MovUNIDADE_ORIG.AsString := fDMImportarPdx.cdsEstoque_MovUNIDADE.AsString;
  fDMImportarPdx.cdsEstoque_MovVLR_UNITARIOORIG.AsFloat   := StrToFloat(FormatFloat('0.00000',fDMImportarPdx.cdsEstoque_MovVLR_UNITARIO.AsFloat));
  fDMImportarPdx.cdsEstoque_MovQTD_ORIG.AsFloat           := StrToFloat(FormatFloat('0.00000',fDMImportarPdx.cdsEstoque_MovQTD.AsFloat));
  fDMImportarPdx.cdsEstoque_MovMERCADO.AsString           := 'I';
  fDMImportarPdx.cdsEstoque_MovID_LOCAL_ESTOQUE.AsInteger := 1;
  fDMImportarPdx.cdsEstoque_MovGERAR_CUSTO.AsString       := 'S';
  fDMImportarPdx.cdsEstoque_Mov.Post;
  fDMImportarPdx.cdsEstoque_Mov.ApplyUpdates(0);
end;

procedure TfrmImportarPdx.BitBtn13Click(Sender: TObject);
begin
  fDMImportarPdx.tFornecedores.Close;
  fDMImportarPdx.tFornecedores.Open;
  ProgressBar1.Max      := fDMImportarPdx.tFornecedores.RecordCount;
  ProgressBar1.Position := 0;
  fDMImportarPdx.tFornecedores.First;
  while not fDMImportarPdx.tFornecedores.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    Ajustar_Fornecedores_Email;
    fDMImportarPdx.tFornecedores.Next;
  end;
  ShowMessage('Fornecedores, geração concluída!');
end;

procedure TfrmImportarPdx.Ajustar_Fornecedores_Email;
var
  vAux: Integer;
  vFlag: Boolean;
  vTexto: String;
  vDocAux : String;
  vExiste : Boolean;
  vaux2 : Integer;
begin
  if trim(fDMImportarPdx.tFornecedoresEmail.AsString) = '' then
    exit;

  fDMImportarPdx.qCodAnt2.Close;
  fDMImportarPdx.qCodAnt2.ParamByName('COD_ANT').AsInteger := fDMImportarPdx.tFornecedoresCodForn.AsInteger;
  fDMImportarPdx.qCodAnt2.Open;
  if fDMImportarPdx.qCodAnt2.IsEmpty then
    exit;

  if not fDMImportarPdx.fnc_Abrir_Fornecedor('','',fDMImportarPdx.qCodAnt2ID_PESSOA.AsInteger) then
    exit;

  try
    fDMImportarPdx.cdsFornecedor.Edit;
    fDMImportarPdx.cdsFornecedorEMAIL_COMPRAS.AsString := fDMImportarPdx.tFornecedoresEmail.AsString;
    fDMImportarPdx.cdsFornecedor.Post;
    fDMImportarPdx.cdsFornecedor.ApplyUpdates(0);

  except
    on e: Exception do
    begin
      ShowMessage('Fornecedor: ' + fDMImportarPdx.cdsFornecedorNOME.AsString);
      raise Exception.Create('Erro ao gravar o arquivo: ' + #13 + e.Message);
    end;
  end;
end;

end.
