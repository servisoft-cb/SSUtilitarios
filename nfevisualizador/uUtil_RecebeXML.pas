unit uUtil_RecebeXML;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, Messages, Controls, Graphics, UDMRecebeXML, Variants, DB, StrUtils, Windows;

  procedure Gravar_Unidade(fDMRecebeXML: TDMRecebeXML);
  function fnc_Cor_Habilitado(vOpcao: Boolean): TColor;
  function fnc_Verifica_Dados_Gravacao(fDMRecebeXML: TDMRecebeXML; Data: TDate; Cliente_Inf, Filial_Inf: String): String;
  function fnc_Gravar_NotaEntradaParc(fDMRecebeXML: TDMRecebeXML; ID_Conta_Orcamento: Integer): Boolean;
  function fnc_erro(fDMRecebeXML: TDMRecebeXML; Vlr_Saldo_Usado: Real; ID_Conta: Integer; sF9: Boolean): Boolean;
  function fnc_NumValido(Const S: String): Integer;
  function fnc_Busca_Custo_mItens(fDMRecebeXML: TDMRecebeXML; Aplicar_Margem, CustoManual: String): Real;

  procedure prc_Copiar_Arquivo(Pasta_XML, ArqLista: String; Data: TDateTime; Filial: Integer; NaoLancado: Boolean = False);
  procedure MoverArquivo(Origem, Destino,Arquivo: String);

implementation

uses uUtilPadrao, DateUtils, SysConst;

procedure Gravar_Unidade(fDMRecebeXML: TDMRecebeXML);
begin
  if trim(fDMRecebeXML.mItensNotaUnidade.AsString) = '' then
    exit;
  try
    fDMRecebeXML.cdsUnidade.Close;
    fDMRecebeXML.sdsUnidade.ParamByName('UNIDADE').AsString := fDMRecebeXML.mItensNotaUnidade.AsString;
    fDMRecebeXML.cdsUnidade.Open;
    if trim(fDMRecebeXML.mItensNotaUnidadeInterno.AsString) = '' then
    begin
      fDMRecebeXML.mItensNota.Edit;
      fDMRecebeXML.mItensNotaUnidadeInterno.AsString := fDMRecebeXML.mItensNotaUnidade.AsString;
      fDMRecebeXML.mItensNota.Post;
    end;
    if (fDMRecebeXML.cdsUnidade.IsEmpty) or (fDMRecebeXML.cdsUnidadeUNIDADE.AsString = '') then
    begin
      fDMRecebeXML.cdsUnidade.Insert;
      fDMRecebeXML.cdsUnidadeUNIDADE.AsString  := fDMRecebeXML.mItensNotaUnidade.AsString;
      fDMRecebeXML.cdsUnidadeNOME.AsString     := fDMRecebeXML.mItensNotaUnidade.AsString;
      fDMRecebeXML.cdsUnidadeCONVERSOR.AsFloat := 0;
      fDMRecebeXML.cdsUnidade.Post;
      fDMRecebeXML.cdsUnidade.ApplyUpdates(0);
    end;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a unidade: ' + #13 + e.Message);
    end
  end;
end;

function fnc_Cor_Habilitado(vOpcao: Boolean): TColor;
begin
  if vOpcao then
    Result := clWindow
  else
    Result := $00C9C9C9;
end;

function fnc_Verifica_Dados_Gravacao(fDMRecebeXML: TDMRecebeXML; Data: TDate; Cliente_Inf, Filial_Inf: String): String;
var
  vMSGAux: String;
begin
  Result  := '';
  vMSGAux := '';
  if Data < 10 then
    vMSGAux := vMSGAux + #13 + '*** Data de entrada não informada!';
  if fDMRecebeXML.vDtEmissao > Data then
    vMSGAux := vMSGAux + #13 + '*** Data de entrada é menor que a data de emissão!';
  if fDMRecebeXML.cdsCabecalhotpAmb.AsString <> '1' then
    vMSGAux := vMSGAux + #13 + '*** Nota de homologação não pode ser gravada no sistema!';
  if (fDMRecebeXML.vFilial_Local < 1) and (trim(Cliente_Inf) = '') then
    vMSGAux := vMSGAux + #13 + '*** Nota não pertence a empresa. Verifique se o campo <Cliente Triangular> está preenchido!';
  if (fDMRecebeXML.vFilial_Local <= 0) and (trim(Filial_Inf) = '') then
    vMSGAux := vMSGAux + #13 + '*** Nota não pertence a empresa. Verifique se o campo <Filial> está preenchido!';
  Result := vMsgAux;
end;

function fnc_Gravar_NotaEntradaParc(fDMRecebeXML: TDMRecebeXML; ID_Conta_Orcamento: Integer): Boolean;
var
  vItemAux: Integer;
  vVlrParc: Real;
  vGravar: Boolean;
begin
  Result := False;
  fDMRecebeXML.cdsNotaFiscal_Parc.Last;
  vItemAux := fDMRecebeXML.cdsNotaFiscal_ParcITEM.AsInteger;
  vVlrParc := 0;
  if fDMRecebeXML.cdsNotaFiscal.State in [dsEdit,dsInsert] then
    fDMRecebeXML.cdsNotaFiscal.Post;
  try
    fDMRecebeXML.mParc.First;
    while not fDMRecebeXML.mParc.Eof do
    begin
      vGravar := True;
      if (vGravar) and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mParcVlrVencimento.AsFloat)) > 0) then
      begin
        vItemAux := vItemAux + 1;
        fDMRecebeXML.cdsNotaFiscal_Parc.Insert;
        fDMRecebeXML.cdsNotaFiscal_ParcID.AsInteger              := fDMRecebeXML.cdsNotaFiscalID.AsInteger;
        fDMRecebeXML.cdsNotaFiscal_ParcITEM.AsInteger            := vItemAux;
        fDMRecebeXML.cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime   := fDMRecebeXML.mParcDtVencimento.AsDateTime;
        fDMRecebeXML.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat    := StrtoFloat(FormatFloat('0.00',fDMRecebeXML.mParcVlrVencimento.AsFloat));
        if fDMRecebeXML.mParcID_Conta.AsInteger > 0 then
          fDMRecebeXML.cdsNotaFiscal_ParcID_CONTA.AsInteger := fDMRecebeXML.mParcID_Conta.AsInteger;
        if fDMRecebeXML.mParcID_TipoCobranca.AsInteger > 0 then
          fDMRecebeXML.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger := fDMRecebeXML.mParcID_TipoCobranca.AsInteger;
        fDMRecebeXML.cdsNotaFiscal_Parc.Post;

        vVlrParc := StrtoFloat(FormatFloat('0.00',vVlrParc + fDMRecebeXML.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat));
      end;
      fDMRecebeXML.mParc.Next;
    end;
    if fDMRecebeXML.cdsNotaFiscal.State in [dsBrowse] then
      fDMRecebeXML.cdsNotaFiscal.Edit;
    fDMRecebeXML.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrtoFloat(FormatFloat('0.00',vVlrParc));
    fDMRecebeXML.cdsNotaFiscal.Post;
    if not fDMRecebeXML.cdsNotaFiscal_Parc.IsEmpty then
      Result := True;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a parcelas na nota: ' + #13 + e.Message);
    end
  end;
end;

function fnc_erro(fDMRecebeXML: TDMRecebeXML; Vlr_Saldo_Usado: Real; ID_Conta: Integer; sF9: Boolean): Boolean;
var
  vErro: String;
  vErroProd: String;
  vMsgAux: WideString;
  vSenhaAux: String;
  vContadorErroProd: Integer;
begin
  Result := False;
  if (fDMRecebeXML.qParametrosPROCURAR_POR_REF_XML.AsString = 'S') then
    exit;
  vErro     := '';
  vErroProd := '';
  //if rxdbLocalEstoque.Text <> '' then
  if (fDMRecebeXML.vID_Local_Estoque_XML <= 0) and (fDMRecebeXML.qParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S') then
  begin
    fDMRecebeXML.vID_Local_Estoque_XML := fnc_Verificar_Local(fDMRecebeXML.qParametrosUSA_LOCAL_ESTOQUE.AsString);
    if (fDMRecebeXML.vID_Local_Estoque_XML <= 0) and (fDMRecebeXML.qParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S') then
      fDMRecebeXML.vID_Local_Estoque_XML := 1;
  end;
  //27/05/2019
  fDMRecebeXML.mParc.First;
  while not fDMRecebeXML.mParc.Eof do
  begin
    if (fDMRecebeXML.vDtEmissao > fDMRecebeXML.mParcDtVencimento.AsDateTime) then
      vErro := vErro + #13 + '*** Data de vencimento menor que a data de entrada!';
    if (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mParcVlrVencimento.AsFloat)) <= 0) then
      vErro := vErro + #13 + '*** Valor Parcela esta zerado na nota, favor verificar!!';
    fDMRecebeXML.mParc.Next;
  end;
  //*************
  if fDMRecebeXML.vID_Local_Estoque_XML <= 0 then
    vErro := '*** Local do Estoque não informado!';
  if Trim(vErro) = '' then
  begin
    vMsgAux   := '';
    vSenhaAux := '';
    fDMRecebeXML.mItensNota.First;
    while not fDMRecebeXML.mItensNota.Eof do
    begin
      if (fDMRecebeXML.mItensNotaCFOPInterno.AsString = '0') or (fDMRecebeXML.mItensNotaCFOPInterno.AsString = '') then
        vErro := vErro + '*** Existem itens sem a natureza de operação (CFOP)'
      else
      if (UpperCase(fDMRecebeXML.mItensNotaUnidade.AsString) <> UpperCase(fDMRecebeXML.mItensNotaUnidadeInterno.AsString)) then
      begin
        if (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) <= 0) then
          vMsgAux := vMsgAux + #13 + 'Item: ' + fDMRecebeXML.mItensNotaItem.AsString;
      end
      else
      if fDMRecebeXML.qParametros_RecXMLUSA_CONTROLE_PRODUTO.AsString = 'S' then
      begin
        if fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger <= 0 then
          vErro := vErro + #13 + '*** Existe produto não associado com o sistema, não pode ser gravada a nota sem associar um produto!' + #13
                 + 'Produto: ' + fDMRecebeXML.mItensNotaNomeProduto.AsString;
      end;
      if trim(vErro) <> '' then
        fDMRecebeXML.mItensNota.Last;
      fDMRecebeXML.mItensNota.Next;
    end;
  end;
  if trim(vErroProd) <> '' then
    vErro := vErro + #13 + #13 + vErroProd;
  if trim(vErro) <> '' then
  begin
    MessageDlg(vErro, mtError, [mbOk], 0);
    Result := True;
  end;
end;

function fnc_NumValido(Const S: String): Integer;
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

function fnc_Busca_Custo_mItens(fDMRecebeXML: TDMRecebeXML; Aplicar_Margem, CustoManual: String): Real;
var
  vValor: Real;
begin
  vValor := 0;
  if (CustoManual = 'S') and (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaPreco_Custo_Manual.AsFloat)) > 0) then
    vValor := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaPreco_Custo_Manual.AsFloat))
  else
  if (Aplicar_Margem = 'C')  and (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaPreco_Custo_Total.AsFloat)) > 0) then
    vValor := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaPreco_Custo_Total.AsFloat))
  else
  if StrToFloat(FormatCurr('0.00',fDMRecebeXML.mItensNotaVlrUnitario_Conversao.AsCurrency)) > 0 then
    vValor := StrToFloat(FormatCurr('0.0000',fDMRecebeXML.mItensNotaVlrUnitario_Conversao.AsCurrency))
  else
  if StrToFloat(FormatCurr('0.00',fDMRecebeXML.mItensNotaVlrUnitario.AsCurrency)) > 0 then
    vValor := StrToFloat(FormatCurr('0.0000',fDMRecebeXML.mItensNotaVlrUnitario.AsCurrency));
  Result := StrToFloat(FormatCurr('0.0000',vValor));
end;

procedure prc_Copiar_Arquivo(Pasta_XML, ArqLista: String; Data: TDateTime; Filial: Integer; NaoLancado: Boolean = False);
var
  Diretorio: String;
  Diretorio_Ori: String;
  vAnoMes: String;
  vArquivo: String;
begin
  Diretorio_Ori := ExtractFilePath(Pasta_XML);
  if PosEx('Copiado',Diretorio_Ori,0) > 0 then
    exit;
  Diretorio := SQLLocate('PARAMETROS','ID','ENDXML_NOTAENTRADA','1');
  if trim(Diretorio) = '' then
    exit;
  if copy(Diretorio,Length(Diretorio),1) <> '\' then
    Diretorio := Diretorio + '\';
  if not DirectoryExists(Diretorio) then
    CreateDir(Diretorio);
  Diretorio := Diretorio + 'Copiado\';
  if not DirectoryExists(Diretorio) then
    CreateDir(Diretorio);
  if NaoLancado then
    Diretorio := Diretorio + 'NaoLancado' + '\'
  else
  begin
    vAnoMes := FormatFloat('0000',YearOf(Data)) + FormatFloat('00',MonthOf(Data));
    Diretorio := Diretorio + vAnoMes + '\';
  end;
  if not DirectoryExists(Diretorio) then
    CreateDir(Diretorio);
  if Filial > 0 then
  begin
    Diretorio := Diretorio + FormatFloat('00',Filial) + '\';
    if not DirectoryExists(Diretorio) then
      CreateDir(Diretorio);
  end;
  vArquivo := ExtractFileName(Pasta_XML);
  if ArqLista <> EmptyStr then
  begin
    MoverArquivo(ExtractFilePath(ArqLista),Diretorio, ExtractFileName(ArqLista));
    ArqLista := '';
  end
  else
    MoverArquivo(Diretorio_Ori,Diretorio,vArquivo);
end;

procedure MoverArquivo(Origem, Destino,Arquivo: String);
var
  o, d: PAnsiChar;
begin
  o := PAnsiChar(Origem + Arquivo);
  d := PAnsiChar(Destino + Arquivo);
  MoveFile(o,d);
end;

end.
