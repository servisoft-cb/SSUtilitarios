unit uUtil_RecebeXML;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, Messages, Controls, Graphics, UDMRecebeXML, Variants, DB, StrUtils, Windows, UDMGravarFinanceiro;

  procedure Gravar_Unidade(fDMRecebeXML: TDMRecebeXML);
  procedure Gravar_Unidade_Conv(fDMRecebeXML: TDMRecebeXML);
  function fnc_Cor_Habilitado(vOpcao: Boolean): TColor;
  function fnc_Abrir_Produto_Forn(fDMRecebeXML: TDMRecebeXML; ID_Fornecedor: Integer; CodProdutoForn, CodBarra, CodBarra2: String; Gravar: Boolean = False): Boolean;
  function fnc_Produto_Vinculado_OK(fDMRecebeXML: TDMRecebeXML): String;
  function fnc_Verifica_Dados_Gravacao(fDMRecebeXML: TDMRecebeXML; Data: TDate; Cliente_Inf, Filial_Inf: String): String;
  function fnc_Gravar_NotaEntradaParc(fDMRecebeXML: TDMRecebeXML; ID_Conta_Orcamento: Integer): Boolean;
  procedure prc_Ajuste_Prod_Pela_OC(fDMRecebeXML: TDMRecebeXML; PeloXML: Boolean);
  procedure prc_Monta_Grupo(fDMRecebeXML: TDMRecebeXML; Mostra_Msg: String);
  procedure prc_Busca_CFOPAtual(fDMRecebeXML: TDMRecebeXML);
  function fnc_erro(fDMRecebeXML: TDMRecebeXML; Vlr_Saldo_Usado: Real; ID_Conta: Integer; sF9: Boolean): Boolean;
  function fnc_Item_Inativo(fDMRecebeXML: TDMRecebeXML): Boolean;
  function fnc_NumValido(Const S: String): Integer;
  function fnc_Abrir_OC(fDMRecebeXML: TDMRecebeXML): Boolean;
  function fnc_Busca_Custo_mItens(fDMRecebeXML: TDMRecebeXML; Aplicar_Margem, CustoManual: String): Real;
  function fnc_Pedido_Existe(ID_Cliente, Num_Nota: Integer; Serie: String; Mostrar_MSG: Boolean = True): Boolean;
  function fnc_Montar_PrecoCustoTotal(fDMRecebeXML: TDMRecebeXML; Unidade: String; CustoTotal :Boolean = True): Real;
  function fnc_move_preco_custo(fDMRecebeXML: TDMRecebeXML): Real;
  function fnc_move_preco_custo_Total(fDMRecebeXML: TDMRecebeXML): Real;

  procedure prc_Calcula_Vlr_Venda_mItens(fDMRecebeXML: TDMRecebeXML; Valor, Percentual: Real; TipoCalculo: String);
  procedure prc_Copiar_Arquivo(Pasta_XML, ArqLista: String; Data: TDateTime; Filial: Integer; NaoLancado: Boolean = False);
  procedure MoverArquivo(Origem, Destino,Arquivo: String);

  procedure Gravar_Duplicata(fDMRecebeXML: TDMRecebeXML; Tipo, TransfICMS, Adiantamento: String; Parcela: Integer;
                             Valor: Real; Data: TDateTime; ID_CCusto: Integer; ID_Conta_Orc: Integer); //P= Contas a Pagar   R= Contas a Receber
  procedure Gravar_Dupicata_Hist(fDMRecebeXML: TDMRecebeXML; Tipo: String);
  procedure Gravar_Duplicata_CCusto(fDMRecebeXML: TDMRecebeXML; ID_CCusto: Integer);

  procedure prc_Gravar_Financeiro(fDMRecebeXML: TDMRecebeXML; Tipo: string);
  procedure prc_Ajusta_CSTICMS(fDMRecebeXML: TDMRecebeXML);

  function fnc_Buscar_Regra_CFOP(fDMRecebeXML: TDMRecebeXML; ID_CFOP: Integer): Integer;
  function fnc_CFOP_Atualiza_PrecoVenda(ID_CFOP: Integer): Boolean;

  function fnc_OC_Aprovada(NumOC: String): String;

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
      if (trim(fDMRecebeXML.mItensNotaUnidadeInterno.AsString) <> '') and
         (fDMRecebeXML.mItensNotaUnidade.AsString <> fDMRecebeXML.mItensNotaUnidadeInterno.AsString) and
         (fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean) and
         (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) <> StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacoteInterno.AsFloat))) then
         Gravar_Unidade_Conv(fDMRecebeXML);
    end
    else
    begin
      if (trim(fDMRecebeXML.mItensNotaUnidadeInterno.AsString) <> '') and
         (fDMRecebeXML.mItensNotaUnidade.AsString <> fDMRecebeXML.mItensNotaUnidadeInterno.AsString) and
         (fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean) and
         (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) <> StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacoteInterno.AsFloat))) then
      begin
        fDMRecebeXML.qUnidade_Conv.Close;
        fDMRecebeXML.qUnidade_Conv.ParamByName('UNIDADE').AsString      := fDMRecebeXML.mItensNotaUnidadeInterno.AsString;
        fDMRecebeXML.qUnidade_Conv.ParamByName('UNIDADE_CONV').AsString := fDMRecebeXML.mItensNotaUnidade.AsString;
        fDMRecebeXML.qUnidade_Conv.ParamByName('QTD').AsFloat           := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
        fDMRecebeXML.qUnidade_Conv.Open;
        if fDMRecebeXML.qUnidade_Conv.IsEmpty then
          Gravar_Unidade_Conv(fDMRecebeXML)
        else
        begin
          fDMRecebeXML.mItensNota.Edit;
          fDMRecebeXML.mItensNotaItem_Unidade.AsInteger := fDMRecebeXML.qUnidade_ConvITEM.AsInteger;
          fDMRecebeXML.mItensNota.Post;
        end
      end;
    end;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a unidade: ' + #13 + e.Message);
    end
  end;
end;

procedure Gravar_Unidade_Conv(fDMRecebeXML: TDMRecebeXML);
var
  vItemAux: Integer;
begin
  if trim(fDMRecebeXML.mItensNotaUnidade.AsString) = '' then
    exit;

  try
    fDMRecebeXML.cdsUnidade_Conv.Close;
    fDMRecebeXML.sdsUnidade_Conv.ParamByName('UNIDADE').AsString := fDMRecebeXML.mItensNotaUnidadeInterno.AsString;
    fDMRecebeXML.cdsUnidade_Conv.Open;
    fDMRecebeXML.cdsUnidade_Conv.Last;
    vItemAux := fDMRecebeXML.cdsUnidade_ConvITEM.AsInteger + 1;

    fDMRecebeXML.cdsUnidade_Conv.Insert;
    fDMRecebeXML.cdsUnidade_ConvUNIDADE.AsString      := fDMRecebeXML.mItensNotaUnidadeInterno.AsString;
    fDMRecebeXML.cdsUnidade_ConvITEM.AsInteger        := vItemAux;
    fDMRecebeXML.cdsUnidade_ConvQTD.AsFloat           := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    fDMRecebeXML.cdsUnidade_ConvUNIDADE_CONV.AsString := fDMRecebeXML.mItensNotaUnidade.AsString;
    fDMRecebeXML.cdsUnidade_ConvNOME.AsString         := fDMRecebeXML.cdsUnidade_ConvUNIDADE_CONV.AsString + ' ' + FormatFloat('0.####',fDMRecebeXML.cdsUnidade_ConvQTD.AsFloat);
    fDMRecebeXML.cdsUnidade_Conv.Post;
    fDMRecebeXML.cdsUnidade_Conv.ApplyUpdates(0);

    fDMRecebeXML.mItensNota.Edit;
    fDMRecebeXML.mItensNotaItem_Unidade.AsInteger := fDMRecebeXML.cdsUnidade_ConvITEM.AsInteger;
    fDMRecebeXML.mItensNota.Post;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a unidade de conversão: ' + #13 + e.Message);
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

function fnc_Abrir_Produto_Forn(fDMRecebeXML: TDMRecebeXML; ID_Fornecedor: Integer; CodProdutoForn, CodBarra, CodBarra2: String; Gravar: Boolean = False): Boolean;
var
  vContAux: Integer;
  vIDAux, vItemAux: Integer;
begin
  fDMRecebeXML.vProduto_Inativo  := 'N';
  fDMRecebeXML.vGerar_CLiq       := 'N';
  fDMRecebeXML.vNome_Produto_Int := '';
  vIdAux   := 0;
  vItemAux := 0;
  Result   := False;
  if (fDMRecebeXML.qParametrosPROCURAR_POR_REF_XML.AsString = 'S') and (not(Gravar)) then
  begin
    fDMRecebeXML.cdsProduto.Close;                //aqui mexer aqui     22/10/2015
    fDMRecebeXML.sdsProduto.CommandText := 'SELECT * FROM PRODUTO WHERE REFERENCIA = ' + QuotedStr(CodProdutoForn);
    fDMRecebeXML.cdsProduto.Open;
    if not fDMRecebeXML.cdsProduto.IsEmpty then
    begin
      Result := True;
      fDMRecebeXML.vProduto_Inativo  := fDMRecebeXML.cdsProdutoINATIVO.AsString;
      fDMRecebeXML.vGerar_CLiq       := fDMRecebeXML.cdsProdutoUSA_CLIQ.AsString;
      fDMRecebeXML.vNome_Produto_Int := fDMRecebeXML.cdsProdutoNOME.AsString;
    end;
    fDMRecebeXML.cdsProduto_Forn.Close;
    fDMRecebeXML.sdsProduto_Forn.CommandText := fDMRecebeXML.ctProduto_Forn
                                 + ' WHERE PF.ID = ' + IntToStr(fDMRecebeXML.cdsProdutoID.AsInteger)
                                 + ' AND PF.COD_MATERIAL_FORN = ' + QuotedStr(CodProdutoForn)
                                 + ' AND PF.ID_FORNECEDOR = ' + IntToStr(ID_Fornecedor);
    fDMRecebeXML.cdsProduto_Forn.Open;
  end
  else
  if (fDMRecebeXML.qParametros_RecXMLPROCURAR_POR_CBARRA.AsString = 'S') and (not(Gravar)) and (trim(CodBarra) <> '') then
  begin
    fDMRecebeXML.cdsProduto.Close;                //aqui mexer aqui     22/10/2015
    fDMRecebeXML.sdsProduto.CommandText := 'SELECT * FROM PRODUTO WHERE COD_BARRA = ' + QuotedStr(CodBarra) + ' OR COD_BARRA = ' + QuotedStr(CodBarra2);
    fDMRecebeXML.cdsProduto.Open;
    if not fDMRecebeXML.cdsProduto.IsEmpty then
    begin
      Result := True;
      fDMRecebeXML.vProduto_Inativo  := fDMRecebeXML.cdsProdutoINATIVO.AsString;
      fDMRecebeXML.vGerar_CLiq       := fDMRecebeXML.cdsProdutoUSA_CLIQ.AsString;
      fDMRecebeXML.vNome_Produto_Int := fDMRecebeXML.cdsProdutoNOME.AsString;
    end
    else
    if (fDMRecebeXML.qParametros_RecXMLPROCURAR_CBARRA_SEM_FORN.AsString = 'S') then
    begin
      fDMRecebeXML.cdsProduto_Forn.Close;
      fDMRecebeXML.sdsProduto_Forn.CommandText := fDMRecebeXML.ctProduto_Forn
                                   //+ ' WHERE PF.ID = ' + IntToStr(fDMRecebeXML.cdsProdutoID.AsInteger)
                                   + '   AND PF.COD_MATERIAL_FORN = ' + QuotedStr(CodProdutoForn)
                                   + '   AND PF.ID_FORNECEDOR = ' + IntToStr(ID_Fornecedor);
      fDMRecebeXML.cdsProduto_Forn.Open;
      if not fDMRecebeXML.cdsProduto_Forn.IsEmpty then
      begin
        Result := True;
        fDMRecebeXML.vProduto_Inativo  := fDMRecebeXML.cdsProduto_FornINATIVO.AsString;
        fDMRecebeXML.vGerar_CLiq       := fDMRecebeXML.cdsProduto_FornUSA_CLIQ.AsString;
        fDMRecebeXML.vNome_Produto_Int := fDMRecebeXML.cdsProduto_FornNOME_PRODUTO.AsString;
        fDMRecebeXML.cdsProduto.Close;                //aqui mexer aqui     22/10/2015
        fDMRecebeXML.sdsProduto.CommandText := 'SELECT * FROM PRODUTO WHERE ID = ' + IntToStr(fDMRecebeXML.cdsProduto_FornID.AsInteger);
        fDMRecebeXML.cdsProduto.Open;
      end;
    end;
  end
  else
  begin
    fDMRecebeXML.cdsProduto_Forn.Close;
    fDMRecebeXML.sdsProduto_Forn.CommandText := fDMRecebeXML.ctProduto_Forn
                                 + ' WHERE PF.ID_FORNECEDOR = ' + IntToStr(ID_Fornecedor)
                                 + '   AND PF.COD_MATERIAL_FORN = ' + QuotedStr(CodProdutoForn);
    fDMRecebeXML.cdsProduto_Forn.Open;
    fDMRecebeXML.cdsProduto_Forn.First;
    while not fDMRecebeXML.cdsProduto_Forn.Eof do
    begin
      if fDMRecebeXML.cdsProduto_FornINATIVO.AsString <> 'S' then
      begin
        fDMRecebeXML.vProduto_Inativo := 'N';
        vIDAux   := fDMRecebeXML.cdsProduto_FornID.AsInteger;
        vItemAux := fDMRecebeXML.cdsProduto_FornITEM.AsInteger;
        fDMRecebeXML.vGerar_CLiq := fDMRecebeXML.cdsProduto_FornUSA_CLIQ.AsString;
        fDMRecebeXML.cdsProduto_Forn.Last;
      end
      else
      begin
        fDMRecebeXML.vProduto_Inativo := 'S';
        vIDAux   := fDMRecebeXML.cdsProduto_FornID.AsInteger;
        vItemAux := fDMRecebeXML.cdsProduto_FornITEM.AsInteger;
      end;
      fDMRecebeXML.cdsProduto_Forn.Next;
    end;
    fDMRecebeXML.cdsProduto_Forn.Locate('ID;ITEM',VarArrayOf([vIDAux,vItemAux]),[locaseinsensitive]);
    if not fDMRecebeXML.cdsProduto_Forn.IsEmpty then
    begin
      Result := True;
      fDMRecebeXML.vNome_Produto_Int := fDMRecebeXML.cdsProduto_FornNOME_PRODUTO.AsString;
    end;
  end;
end;

function fnc_Produto_Vinculado_OK(fDMRecebeXML: TDMRecebeXML): String;
var
  sds: TSQLDataSet;
  vCodBarra: String;
begin

  Result := '';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'select PF.ID, '
                       + ' (select first 1 n.numnota from notafiscal n  where n.id_cliente = :ID_FORNECEDOR     order by N.ID DESC) NUMNOTA '
                       + 'from PRODUTO_FORN PF '
                       + 'inner join PRODUTO P on PF.ID = P.ID '
                       + 'where PF.ID_FORNECEDOR = :ID_FORNECEDOR and '
                       + '      PF.COD_MATERIAL_FORN = :COD_MATERIAL_FORN and '
                       + '      PF.ID <> :ID and '
                       + '      P.INATIVO = ' + QuotedStr('N');
    if (fDMRecebeXML.qParametros_RecXMLPROCURAR_POR_CBARRA.AsString = 'S') then
      sds.CommandText := sds.CommandText + ' AND PF.COD_BARRA = ' + QuotedStr(fDMRecebeXML.mItensNotaCodBarra.AsString);
    sds.ParamByName('ID_FORNECEDOR').AsInteger    := fDMRecebeXML.mItensNotaCodFornecedor.AsInteger;
    sds.ParamByName('COD_MATERIAL_FORN').AsString := fDMRecebeXML.mItensNotaCodProduto.AsString;
    sds.ParamByName('ID').AsInteger               := fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger;
    sds.Open;
    if sds.FieldByName('ID').AsInteger > 0 then
    begin
      Result := '*** O produto do Fornecedor ' + fDMRecebeXML.mItensNotaCodProduto.AsString + ' '  + fDMRecebeXML.mItensNotaNomeProduto.AsString + #13
              + '     já esta associado ao produto interno com o ID ' + sds.FieldByName('ID').AsString + #13 //fDMRecebeXML.mItensNotaCodProdutoInterno.AsString + #13
              + '     essa associação foi feita na nota ' + sds.FieldByName('NUMNOTA').AsString + ' do fornecedor '
              + '     para continuar a gravação da nota atual, altere o produto associado com F3 ou altere o '
              + '     cadastro do produto ID ' + fDMRecebeXML.mItensNotaCodProduto.AsString + ', excluindo na aba Fornecedor a associação anterior; '
              + #13;
    end;
  finally
    FreeAndNil(sds);
  end;
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
  vVlrRestante: Real;
  vVlrAux: Real;
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

        Gravar_Duplicata(fDMRecebeXML,'P','N',fDMRecebeXML.mParcAdiantamento.AsString,
                                              fDMRecebeXML.cdsNotaFiscal_ParcITEM.AsInteger,
                                              fDMRecebeXML.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat,
                                              fDMRecebeXML.cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime,
                                              0,ID_Conta_Orcamento);

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

procedure prc_Ajuste_Prod_Pela_OC(fDMRecebeXML: TDMRecebeXML; PeloXML: Boolean);
begin
  if PeloXML then
  begin
    //if (fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger > 0) and (fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger = vCodProduto_Pos) then
    //  exit;
  end;
  fDMRecebeXML.mItensNota.Edit;
  fDMRecebeXML.mItensNotaID_CentroCusto.AsInteger    := vID_Centro_Custo;
  vID_Centro_Custo := 0;
  fDMRecebeXML.mItensNotaNumPedido.AsString          := fDMRecebeXML.vNum_Pedido;
  fDMRecebeXML.mItensNotaID_Pedido.AsInteger         := fDMRecebeXML.vID_Pedido;
  fDMRecebeXML.mItensNotaItemPedido.AsInteger        := fDMRecebeXML.vItem_Pedido;
  fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := vCodProduto_Pos;
  fDMRecebeXML.mItensNotaReferencia_Int.AsString     := vReferencia_Pos;
  fDMRecebeXML.mItensNotaUsa_Cor.AsString            := vUsa_Cor_Pos;
  fDMRecebeXML.mItensNotaUnidadeInterno.AsString     := fDMRecebeXML.vUnidade;
  fDMRecebeXML.mItensNotaAtualizarPreco.AsBoolean    := False;
  if fDMRecebeXML.vAtualizaCusto = 'S' then
    fDMRecebeXML.mItensNotaAtualizarPreco.AsBoolean := True;
  if fDMRecebeXML.mItensNotaUsa_Cor.AsString = 'S' then
    fDMRecebeXML.mItensNotaID_Cor.AsInteger := vID_Cor_Pos;
  fDMRecebeXML.mItensNotaUsa_Preco_Cor.AsString      := vUsa_Preco_Cor_Pos;
  //29/01/2019
  if trim(vTamanho_Pos) <> '' then
    fDMRecebeXML.mItensNotaTamanho.AsString := vTamanho_Pos;
  //***********************
  if (fDMRecebeXML.qParametrosMOSTRAR_MARCAR_PROD.AsString = 'S') then
  begin
    fDMRecebeXML.qMarcaProduto.Close;
    fDMRecebeXML.qMarcaProduto.ParamByName('PRODUTO').AsInteger :=
        fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger;
    fDMRecebeXML.qMarcaProduto.Open;    
    fDMRecebeXML.mItensNotaMarca.AsString := fDMRecebeXML.qMarcaProdutoNOME.Value;
  end;

  //22/01/2019 foi incluido o if para ler o produto somente quando for associado
  if ((fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S') and (fDMRecebeXML.vAssociar_Prod_XML)) or
     (trim(fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString) <> 'S') then
  begin
    fDMRecebeXML.prc_Abrir_Produto(fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger);
    if not fDMRecebeXML.cdsProduto.IsEmpty then
    begin
      fDMRecebeXML.mItensNotaPerc_Margem.AsFloat := fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat;
      fDMRecebeXML.mItensNotaID_Grupo.AsInteger  := fDMRecebeXML.cdsProdutoID_GRUPO.AsInteger;
      prc_Monta_Grupo(fDMRecebeXML,'N');
      if fDMRecebeXML.cdsProdutoID_CONTA_ORCAMENTO.AsInteger > 0 then
        fDMRecebeXML.mItensNotaID_ContaOrcamento.AsInteger := fDMRecebeXML.cdsProdutoID_CONTA_ORCAMENTO.AsInteger;
      fDMRecebeXML.mItensNotaPosse_Material.AsString := fDMRecebeXML.cdsProdutoPOSSE_MATERIAL.AsString;
      fDMRecebeXML.mItensNotaSped_Tipo.AsString      := fDMRecebeXML.cdsProdutoSPED_TIPO_ITEM.AsString;

      //22/08/2019
      fDMRecebeXML.mItensNotaID_CFOPAtual.AsInteger := fDMRecebeXML.cdsProdutoID_CFOP_NFCE.AsInteger;
      uUtil_RecebeXML.prc_Busca_CFOPAtual(fDMRecebeXML);
    end;
  end;
  fDMRecebeXML.mItensNota.Post;
end;

procedure prc_Monta_Grupo(fDMRecebeXML: TDMRecebeXML; Mostra_Msg: String);
begin
  if not (fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert]) then
    exit;

  if fDMRecebeXML.mItensNotaID_Grupo.AsInteger > 0 then
  begin
    fDMRecebeXML.qGrupo.Close;
    fDMRecebeXML.qGrupo.ParamByName('ID').AsInteger := fDMRecebeXML.mItensNotaID_Grupo.AsInteger;
    fDMRecebeXML.qGrupo.Open;
    if fDMRecebeXML.qGrupo.IsEmpty then
    begin
      fDMRecebeXML.mItensNotaNome_Grupo.AsString := '';
      fDMRecebeXML.mItensNotaID_Grupo.Clear;
      if Mostra_Msg = 'S' then
        MessageDlg('*** ID do grupo não encontrado!', mtInformation, [mbOk], 0);
    end
    else
      fDMRecebeXML.mItensNotaNome_Grupo.AsString := fDMRecebeXML.qGrupoCODIGO.AsString + ' ' + fDMRecebeXML.qGrupoNOME.AsString;
  end
  else
    fDMRecebeXML.mItensNotaNome_Grupo.AsString := '';
end;

procedure prc_Busca_CFOPAtual(fDMRecebeXML: TDMRecebeXML);
begin
  //21/08/2019
  fDMRecebeXML.qCFOP2.Close;
  fDMRecebeXML.qCFOP2.ParamByName('ID').AsInteger := fDMRecebeXML.mItensNotaID_CFOPAtual.AsInteger;
  fDMRecebeXML.qCFOP2.Open;
  fDMRecebeXML.mItensNotaCodCFOPAtual.AsString := fDMRecebeXML.qCFOP2CODCFOP.AsString;
  fDMRecebeXML.qCFOP2.Close;
  fDMRecebeXML.qCFOP2.ParamByName('ID').AsInteger := fDMRecebeXML.mItensNotaID_CFOPNCM.AsInteger;
  fDMRecebeXML.qCFOP2.Open;
  fDMRecebeXML.mItensNotaCodCFOPNCM.AsString := fDMRecebeXML.qCFOP2CODCFOP.AsString;

  fDMRecebeXML.mItensNotaCopiar_CFOP_Prod.AsString := 'N';
  if (trim(fDMRecebeXML.mItensNotaCodCFOP_NFCe.AsString) <> '') then
  begin
    if (trim(fDMRecebeXML.mItensNotaCodCFOPAtual.AsString) <> '')
      and (fDMRecebeXML.mItensNotaCodCFOPAtual.AsString <> fDMRecebeXML.mItensNotaCodCFOP_NFCe.AsString) then
      fDMRecebeXML.mItensNotaCopiar_CFOP_Prod.AsString := ''
    else
    if (trim(fDMRecebeXML.mItensNotaCodCFOPNCM.AsString) <> '') and (trim(fDMRecebeXML.mItensNotaCodCFOPAtual.AsString) = '')
      and (fDMRecebeXML.mItensNotaCodCFOPNCM.AsString <> fDMRecebeXML.mItensNotaCodCFOP_NFCe.AsString) then
      fDMRecebeXML.mItensNotaCopiar_CFOP_Prod.AsString := ''
    else
    if fDMRecebeXML.mItensNotaCodCFOPNCM.AsString = fDMRecebeXML.mItensNotaCodCFOP_NFCe.AsString then
      fDMRecebeXML.mItensNotaCopiar_CFOP_Prod.AsString := 'N'
    else
      fDMRecebeXML.mItensNotaCopiar_CFOP_Prod.AsString := 'S';
  end;
end;

function fnc_erro(fDMRecebeXML: TDMRecebeXML; Vlr_Saldo_Usado: Real; ID_Conta: Integer; sF9: Boolean): Boolean;
var
  vErro: String;
  vErroProd: String;
  vMsgAux: WideString;
  vSenhaAux: String;
  vIDAux: Integer;
  vCodAux: String;
  vTexto: String;
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
  vContadorErroProd := 0;
  if fDMRecebeXML.vID_Local_Estoque_XML <= 0 then
    vErro := '*** Local do Estoque não informado!';
  if Trim(vErro) = '' then
  begin
    vMsgAux   := '';
    vSenhaAux := '';
    fDMRecebeXML.mItensNota.First;
    while not fDMRecebeXML.mItensNota.Eof do
    begin
      if not sF9 then
      begin
        if (fDMRecebeXML.qParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (trim(fDMRecebeXML.mItensNotaNumPedido.AsString) <> '')
          and (fDMRecebeXML.mItensNotaItemPedido.AsInteger > 0) then
        begin
          vTexto := fnc_OC_Aprovada(fDMRecebeXML.mItensNotaNumPedido.AsString);
          if trim(vTexto) <> '' then
            vErro := vErro + #13 + vTexto;
        end;
      end;
      if trim(fDMRecebeXML.mItensNotaNomeProduto.AsString) = '' then
        vErro := vErro + '*** Nome do Produto não pode estar em branco!'
      else
      if (fDMRecebeXML.mItensNotaCFOPInterno.AsString = '0') or (fDMRecebeXML.mItensNotaCFOPInterno.AsString = '') then
        vErro := vErro + '*** Existem itens sem a natureza de operação (CFOP)'
      else
      //21/03/2023
      if (copy(fDMRecebeXML.mItensNotaCFOP.AsString,1,1) <> '1') and (copy(fDMRecebeXML.mItensNotaCFOP.AsString,1,1) <> '2') then
        vErro := vErro + '*** CFOP inválido no item ' + fDMRecebeXML.mItensNotaItem.AsString
      else
      if (fDMRecebeXML.cdsCabecalhoenderEmit_UF.AsString = fDMRecebeXML.cdsFilialUF.AsString) and
         (copy(fDMRecebeXML.mItensNotaCFOP.AsString,1,1) <> '1') then
        vErro := vErro + '*** CFOP inválido no item ' + fDMRecebeXML.mItensNotaItem.AsString + ',  CFOP precisa iniciar com 1'
      else
      if (fDMRecebeXML.cdsCabecalhoenderEmit_UF.AsString <> fDMRecebeXML.cdsFilialUF.AsString) and
         (copy(fDMRecebeXML.mItensNotaCFOP.AsString,1,1) <> '2') then
        vErro := vErro + '*** CFOP inválido no item ' + fDMRecebeXML.mItensNotaItem.AsString + ',  CFOP precisa iniciar com 2'
      else
      //************
      if (trim(fDMRecebeXML.vNotaDespesa) <> 'S') and (UpperCase(fDMRecebeXML.mItensNotaUnidade.AsString) <> UpperCase(fDMRecebeXML.mItensNotaUnidadeInterno.AsString)) and
         (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0) and not(fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean) then
        vErro := vErro + '*** Qtd. da conversão informada e não está marcado para converter a unidade de medida!'
      else
      if (trim(fDMRecebeXML.vNotaDespesa) <> 'S') and (UpperCase(fDMRecebeXML.mItensNotaUnidade.AsString) <> UpperCase(fDMRecebeXML.mItensNotaUnidadeInterno.AsString)) and
         (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) <= 0) and (fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean) then
        vErro := vErro + '*** Opção de converter unidade de medida marcada e quantidade para converter zerada!'
      else
      if (trim(fDMRecebeXML.vNotaDespesa) <> 'S') and (UpperCase(fDMRecebeXML.mItensNotaUnidade.AsString) <> UpperCase(fDMRecebeXML.mItensNotaUnidadeInterno.AsString)) then
      begin
        if (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) <= 0) then
          vMsgAux := vMsgAux + #13 + 'Item: ' + fDMRecebeXML.mItensNotaItem.AsString;
      end
      else
      begin
        if trim(fDMRecebeXML.vNotaDespesa) <> 'S' then
        begin
          if fnc_Item_Inativo(fDMRecebeXML) then
            vErroProd := vErroProd + #13 + '*** Produto ' + fDMRecebeXML.mItensNotaCodProduto.AsString + ' está inativo no ID do Produto: ' + fDMRecebeXML.qProdutoInativoID.AsString;
          if vContadorErroProd <= 5 then
          begin
            if ((trim(fDMRecebeXML.mItensNotaNumPedido.AsString) = '') or (fDMRecebeXML.mItensNotaItemPedido.AsInteger <= 0)) or (trim(fDMRecebeXML.qParametros_RecXMLUSA_OC_XML.AsString) <> 'S') then
            begin
              vTexto := fnc_Produto_Vinculado_OK(fDMRecebeXML);
              if trim(vTexto) <> '' then
              begin
                vErroProd := vErroProd + vTexto + #13;
                vContadorErroProd := vContadorErroProd + 1;
              end;
            end;
          end;
        end;
      end;
      if trim(fDMRecebeXML.vNotaDespesa) <> 'S' then
      begin
        if fDMRecebeXML.qParametros_OCPERMITIR_ENT_MAIOR.AsString <> 'S' then
        begin
          if fDMRecebeXML.mItensNotaID_Pedido.AsString <> '' then
          begin
            fDMRecebeXML.cdsOC.Close;
            fDMRecebeXML.sdsOC.CommandText := fDMRecebeXML.ctOC +
                                              ' AND PE.ID = ' + fDMRecebeXML.mItensNotaID_Pedido.AsString +
                                              ' AND PI.ITEM = ' + fDMRecebeXML.mItensNotaItemPedido.AsString;
            fDMRecebeXML.cdsOC.Open;
          if StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtd.AsFloat * fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) >
             StrToFloat(FormatFloat('0.0000',fDMRecebeXML.cdsOCQTD_RESTANTE.AsFloat)) then
            vErro := vErro + #13 + 'Item ' + fDMRecebeXML.mItensNotaItem.AsString + ': Quantidade da nota maior que a da OC!';
          end;
        end;
      end;
      if trim(fDMRecebeXML.vNotaDespesa) <> 'S' then
      begin
        if fDMRecebeXML.qParametros_RecXMLUSA_CONTROLE_PRODUTO.AsString = 'S' then
        begin
          if fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger <= 0 then
            vErro := vErro + #13 + '*** Existe produto não associado com o sistema, não pode ser gravada a nota sem associar um produto!' + #13
                   + 'Produto: ' + fDMRecebeXML.mItensNotaNomeProduto.AsString;
        end;
      end;

      if trim(vErro) <> '' then
        fDMRecebeXML.mItensNota.Last;
      fDMRecebeXML.mItensNota.Next;
    end;
    if trim(vMsgAux) <> '' then
    begin
      vMsgAux := 'Itens abaixo com Unidade de medida diferente e não foi feita a conversão: ' + #13 + vMsgAux;
      vSenhaAux := InputBox('Informe a Senha',vMsgAux + #13+ #13 + 'Informar a senha para confirmar:', '');
      if vSenhaAux <> '12' then
        vErro := vMsgAux;
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

function fnc_Item_Inativo(fDMRecebeXML: TDMRecebeXML): Boolean;
begin
  Result := False;
  fDMRecebeXML.qProdutoInativo.Close;
  fDMRecebeXML.qProdutoInativo.ParamByName('ID').AsInteger := fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger;
  fDMRecebeXML.qProdutoInativo.Open;
  if fDMRecebeXML.qProdutoInativoINATIVO.AsString = 'S' then
    Result := True;
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

function fnc_Abrir_OC(fDMRecebeXML: TDMRecebeXML): Boolean;
var
  vMSGAux: String;
begin
  vMSGAux := '';
  Result := True;
  fDMRecebeXML.cdsOC.Close;
  fDMRecebeXML.sdsOC.CommandText := fDMRecebeXML.ctOC
                                  + ' AND PE.NUM_PEDIDO = ' + fDMRecebeXML.cdsDetalhexPed.AsString
                                  + ' AND PE.ID_CLIENTE = ' + IntToStr(fDMRecebeXML.vCodFornecedor_XML)
                                  + ' AND PI.ITEM = ' + fDMRecebeXML.cdsDetalhenItemPed.AsString;
  fDMRecebeXML.cdsOC.Open;
  if fDMRecebeXML.cdsOCID.AsInteger <= 0 then
    vMSGAux := 'OC Não encontrada!'
  else
  if fDMRecebeXML.cdsOCID_CLIENTE.AsInteger <> fDMRecebeXML.mItensNotaCodFornecedor.AsInteger then
    vMSGAux := 'Fornecedor diferente!'
  else
  if fDMRecebeXML.cdsOCQTD_RESTANTE.AsFloat <= 0 then
    vMSGAux := 'OC já foi baixada!';
  if trim(vMSGAux) <> '' then
  begin
    Result := False;
    MessageDlg(vMSGAux, mtWarning, [mbOk], 0);
  end;
end;

function fnc_Busca_Custo_mItens(fDMRecebeXML: TDMRecebeXML; Aplicar_Margem, CustoManual: String): Real;
var
  vValor: Real;
begin
  if (CustoManual = 'S') and (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaPreco_Custo_Manual.AsFloat)) > 0) then
    vValor := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaPreco_Custo_Manual.AsFloat))
  else
  if (Aplicar_Margem = 'C')  and (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaPreco_Custo_Total.AsFloat)) > 0) then
  begin
    vValor := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaPreco_Custo_Total.AsFloat));
    //if (fDMRecebeXML.mItensNotaQtdPacote.AsFloat > 0) and (fDMRecebeXML.mItensNotaQtdPacote.AsFloat <> 1) then
     // vValor := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaPreco_Custo_Total.AsFloat / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
  end
  else
  if StrToFloat(FormatCurr('0.00',fDMRecebeXML.mItensNotaVlrUnitario_Conversao.AsCurrency)) > 0 then
    vValor := StrToFloat(FormatCurr('0.0000',fDMRecebeXML.mItensNotaVlrUnitario_Conversao.AsCurrency))
  else
  if StrToFloat(FormatCurr('0.00',fDMRecebeXML.mItensNotaVlrUnitario.AsCurrency)) > 0 then
    vValor := StrToFloat(FormatCurr('0.0000',fDMRecebeXML.mItensNotaVlrUnitario.AsCurrency));
  Result := StrToFloat(FormatCurr('0.0000',vValor));
end;

procedure prc_Calcula_Vlr_Venda_mItens(fDMRecebeXML: TDMRecebeXML; Valor, Percentual: Real; TipoCalculo: String);
begin
  if StrToFloat(FormatCurr('0.00',Valor)) <= 0 then
    exit;
  if not(fDMRecebeXML.mItensNota.State in [dsEdit]) then
    fDMRecebeXML.mItensNota.Edit;
  if TipoCalculo = 'S' then
    fDMRecebeXML.mItensNotaVlr_Venda.AsString := FormatFloat('0.00',Valor / ((100 - Percentual) / 100))
  else
    fDMRecebeXML.mItensNotaVlr_Venda.AsString := FormatFloat('0.00',Valor * (1 + Percentual / 100));
  fDMRecebeXML.mItensNotaPreco_Varejo.AsString := fDMRecebeXML.mItensNotaVlr_Venda.AsString;
  fDMRecebeXML.mItensNotaPerc_Margem.AsFloat   := Percentual;
  fDMRecebeXML.mItensNota.Post;
end;

function fnc_Pedido_Existe(ID_Cliente, Num_Nota: Integer; Serie: String; Mostrar_MSG: Boolean = True): Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  if Num_Nota <= 0 then
    exit;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'select P.NUM_PEDIDO from PEDIDO P '
                       + 'where P.ID_CLIENTE_ENT = :ID_CLIENTE_ENT and '
                       + '      P.NUM_NOTA_ENT = :NUM_NOTA_ENT and '
                       + '      P.SERIE_ENT = :SERIE_ENT ';
    sds.ParamByName('ID_CLIENTE_ENT').AsInteger := ID_Cliente;
    sds.ParamByName('NUM_NOTA_ENT').AsInteger   := Num_Nota;
    sds.ParamByName('SERIE_ENT').AsString       := Serie;
    sds.Open;
    if sds.FieldByName('NUM_PEDIDO').AsInteger > 0 then
    begin
      Result := True;
      if Mostrar_MSG then
        MessageDlg('*** Essa nota já esta no Pedido ' + sds.FieldByName('NUM_PEDIDO').AsString, mtWarning, [mbOk], 0);
    end;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Montar_PrecoCustoTotal(fDMRecebeXML: TDMRecebeXML; Unidade: String; CustoTotal :Boolean = True): Real;
var
  vVlrAux: Real;
  vVlrIPIAux: Real;
  vVlrFreteAux: Real;
  vVlrStAux: Real;
  vPercFrete: Real;
  vVlrICMSAux: Real;
  vVlrPisCofinsAux: Real;
  //18/01/2018
  vVlrAduaneira, vVlrII, vVlrAFRMM: Real;
  vVlrIPISub: Real;
  //***************
begin
  vVlrIPIAux       := StrToFloat(FormatFloat('0.00',0));
  vVlrFreteAux     := StrToFloat(FormatFloat('0.00',0));
  vVlrStAux        := StrToFloat(FormatFloat('0.00',0));
  vVlrICMSAux      := StrToFloat(FormatFloat('0.00',0));
  vVlrPisCofinsAux := StrToFloat(FormatFloat('0.00',0));
  vVlrAduaneira    := StrToFloat(FormatFloat('0.00',0));
  vVlrII           := StrToFloat(FormatFloat('0.00',0));
  vVlrAFRMM        := StrToFloat(FormatFloat('0.00',0));
  vVlrIPISub       := StrToFloat(FormatFloat('0.00',0));
  vVlrAux          := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
  //21/02/2022  Conceito Box  vai informar o valor do frete mesmo qdo vem na nota (serve para redespacho)
  //if StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsCabecalhovFrete.AsFloat)) > 0 then
    vPercFrete := 0;
  //else
  if fDMRecebeXML.vVlr_Frete_Inf > 0 then
    vPercFrete := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.vVlr_Frete_Inf /
                  (fDMRecebeXML.cdsCabecalhovNF.AsFloat - StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsCabecalhovFrete.AsFloat))) * 100));
  //11/11/2016
  if (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIPI.AsFloat)) > 0) then
  begin
    if (fDMRecebeXML.mItensNotaSOMAR_IPI_NO_CUSTO.AsString = 'S') then
      vVlrIPIAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrIPI.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat))
    else
    if (fDMRecebeXML.mItensNotaSUB_IPI_Custo.AsString = 'S') then
      vVlrIPISub := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrIPI.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat))
  end;

  if (fDMRecebeXML.mItensNotaSOMAR_FRETE_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrFrete.AsFloat)) > 0) then
    vVlrFreteAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrFrete.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat));
  //**************************
  //22/02/2017
  if (fDMRecebeXML.mItensNotaSOMAR_ST_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIcmsST.AsFloat)) > 0) then
    vVlrStAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrIcmsST.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat));
  //******************
  //02/11/2017
  if (fDMRecebeXML.mItensNotaSUB_ICMS_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIcms.AsFloat)) > 0) and
    (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIcmsST.AsFloat)) <= 0 ) then
    vVlrICMSAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrIcms.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat));
  if (fDMRecebeXML.mItensNotaSUB_PISCOFINS_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrPis.AsFloat + fDMRecebeXML.mItensNotaVlrCofins.AsFloat)) > 0) then
    vVlrPisCofinsAux := StrToFloat(FormatFloat('0.00000',(fDMRecebeXML.mItensNotaVlrPis.AsFloat + fDMRecebeXML.mItensNotaVlrCofins.AsFloat) / fDMRecebeXML.mItensNotaQtd.AsFloat));
  if (Unidade <> fDMRecebeXML.mItensNotaUnidade.AsString) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtd.AsFloat)) > 0) then
  begin
    vVlrAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    if (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIPI.AsFloat)) > 0) then
    begin
      if (fDMRecebeXML.mItensNotaSOMAR_IPI_NO_CUSTO.AsString = 'S') then
        vVlrIPIAux := StrToFloat(FormatFloat('0.00000',vVlrIPIAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat))
      else
      if (fDMRecebeXML.mItensNotaSUB_IPI_Custo.AsString = 'S') then
        vVlrIPISub := StrToFloat(FormatFloat('0.00000',vVlrIPISub / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    end;
    if (fDMRecebeXML.mItensNotaSOMAR_FRETE_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrFrete.AsFloat)) > 0) then
      vVlrFreteAux := StrToFloat(FormatFloat('0.00000',vVlrFreteAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    if (fDMRecebeXML.mItensNotaSOMAR_ST_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIcmsST.AsFloat)) > 0) then
      vVlrStAux := StrToFloat(FormatFloat('0.00000',vVlrStAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    if (fDMRecebeXML.mItensNotaSUB_ICMS_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',vVlrICMSAux)) > 0) then
      vVlrICMSAux := StrToFloat(FormatFloat('0.00000',vVlrICMSAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    if (fDMRecebeXML.mItensNotaSUB_PISCOFINS_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',vVlrPisCofinsAux)) > 0) then
      vVlrPisCofinsAux := StrToFloat(FormatFloat('0.00000',vVlrPisCofinsAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    //******
  end;
  //21/02/2022 Foi ajustado o esquema do Frete para calcular
  if StrToFloat(FormatFloat('0.0000',vPercFrete)) > 0 then
    vVlrFreteAux := vVlrFreteAux + (StrToFloat(FormatFloat('0.00', vVlrAux * vPercFrete / 100)));
  vVlrAux := StrToFloat(FormatFloat('0.00000',vVlrAux + vVlrIPIAux + vVlrFreteAux + vVlrStAux));
  vVlrAux := StrToFloat(FormatFloat('0.00000',vVlrAux - vVlrICMSAux - vVlrPisCofinsAux - vVlrIPISub));
  Result := StrToFloat(FormatFloat('0.00000',vVlrAux));
end;

function fnc_move_preco_custo(fDMRecebeXML: TDMRecebeXML): Real;
begin
  if StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaPreco_Custo_Manual.AsFloat)) > 0 then
    Result := fDMRecebeXML.mItensNotaPreco_Custo_Manual.AsFloat
  else
  if StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaVlrUnitario_Conversao.AsFloat)) > 0 then
    Result := StrtoFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario_Conversao.AsFloat))
  else
    Result := StrtoFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat));
end;

function fnc_move_preco_custo_Total(fDMRecebeXML: TDMRecebeXML): Real;
begin
  if StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaPreco_Custo_Manual.AsFloat)) > 0 then
    Result := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaPreco_Custo_Manual.AsFloat))
  else
  if StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaPreco_Custo_Total.AsFloat)) > 0 then
    Result := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaPreco_Custo_Total.AsFloat))
  else
    Result := fnc_Montar_PrecoCustoTotal(fDMRecebeXML,fDMRecebeXML.cdsProdutoUNIDADE.AsString);
end;

procedure prc_Copiar_Arquivo(Pasta_XML, ArqLista: String; Data: TDateTime; Filial: Integer; NaoLancado: Boolean = False);
var
  Diretorio: String;
  Diretorio_Ori: String;
  vAnoMes: String;
  vArquivo: String;
  vTexto: String;
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

procedure Gravar_Duplicata(fDMRecebeXML: TDMRecebeXML; Tipo, TransfICMS, Adiantamento: String; Parcela: Integer;
                           Valor: Real; Data: TDateTime; ID_CCusto: Integer; ID_Conta_Orc: Integer); //P= Contas a Pagar   R= Contas a Receber
var
  vAux: Integer;
  vQuitar : String;
begin
  if not fDMRecebeXML.cdsDuplicata.Active then
    fDMRecebeXML.Abrir_cdsDuplicata(0);
  vAux := fnc_Proxima_Seq_Duplicata;
  fDMRecebeXML.cdsDuplicata.Insert;
  fDMRecebeXML.cdsDuplicataID.AsInteger := vAux;
  if Tipo = 'R' then
    fDMRecebeXML.cdsDuplicataTIPO_ES.AsString := 'E'
  else
    fDMRecebeXML.cdsDuplicataTIPO_ES.AsString := 'S';
  fDMRecebeXML.cdsDuplicataFILIAL.AsInteger        := fDMRecebeXML.cdsNotaFiscalFILIAL.AsInteger;
  fDMRecebeXML.cdsDuplicataID_NOTA.AsInteger       := fDMRecebeXML.cdsNotaFiscalID.AsInteger;
  fDMRecebeXML.cdsDuplicataPARCELA.AsInteger       := Parcela;
  fDMRecebeXML.cdsDuplicataNUMDUPLICATA.AsString   := fDMRecebeXML.cdsNotaFiscalNUMNOTA.AsString;
  fDMRecebeXML.cdsDuplicataNUMNOTA.AsInteger       := fDMRecebeXML.cdsNotaFiscalNUMNOTA.AsInteger;
  fDMRecebeXML.cdsDuplicataSERIE.AsString          := fDMRecebeXML.cdsNotaFiscalSERIE.AsString;
  fDMRecebeXML.cdsDuplicataDTVENCIMENTO.AsDateTime := Data;
  fDMRecebeXML.cdsDuplicataVLR_PARCELA.AsFloat     := StrToFloat(FormatFloat('0.00',Valor));
  fDMRecebeXML.cdsDuplicataVLR_RESTANTE.AsFloat    := StrToFloat(FormatFloat('0.00',Valor));
  fDMRecebeXML.cdsDuplicataVLR_PAGO.AsFloat        := StrToFloat(FormatFloat('0.00',0));
  fDMRecebeXML.cdsDuplicataVLR_DEVOLUCAO.AsFloat   := StrToFloat(FormatFloat('0.00',0));
  fDMRecebeXML.cdsDuplicataVLR_DESPESAS.AsFloat    := StrToFloat(FormatFloat('0.00',0));
  fDMRecebeXML.cdsDuplicataVLR_DESCONTO.AsFloat    := StrToFloat(FormatFloat('0.00',0));
  fDMRecebeXML.cdsDuplicataVLR_JUROSPAGOS.AsFloat  := StrToFloat(FormatFloat('0.00',0));
  fDMRecebeXML.cdsDuplicataVLR_MULTA.AsFloat       := StrToFloat(FormatFloat('0.00',0));
  fDMRecebeXML.cdsDuplicataVLR_COMISSAO.AsFloat    := StrToFloat(FormatFloat('0.00',0));
  fDMRecebeXML.cdsDuplicataPERC_COMISSAO.AsFloat   := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscalPERC_COMISSAO.AsFloat));
  fDMRecebeXML.cdsDuplicataPERC_BASE_COMISSAO.AsFloat := 100;

  //25/07/2020
  if ID_Conta_Orc > 0 then
    fDMRecebeXML.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := ID_Conta_Orc
  else
  if fDMRecebeXML.cdsFornecedorFORNECEDOR_CONTA_ID.AsInteger > 0 then
    fDMRecebeXML.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := fDMRecebeXML.cdsFornecedorFORNECEDOR_CONTA_ID.AsInteger;
  //****************

  fDMRecebeXML.cdsDuplicataDTULTPAGAMENTO.Clear;
  fDMRecebeXML.cdsDuplicataID_PESSOA.AsInteger := fDMRecebeXML.cdsNotaFiscalID_CLIENTE.AsInteger;
  if fDMRecebeXML.cdsNotaFiscal_ParcID_CONTA.AsInteger > 0 then
    fDMRecebeXML.cdsDuplicataID_CONTA.AsInteger := fDMRecebeXML.cdsNotaFiscal_ParcID_CONTA.AsInteger;
  if fDMRecebeXML.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger > 0 then
    fDMRecebeXML.cdsDuplicataID_TIPOCOBRANCA.AsInteger := fDMRecebeXML.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger;
  if fDMRecebeXML.cdsNotaFiscalID_VENDEDOR.AsInteger > 0 then
    fDMRecebeXML.cdsDuplicataID_VENDEDOR.AsInteger := fDMRecebeXML.cdsNotaFiscalID_VENDEDOR.AsInteger;
  if fDMRecebeXML.cdsNotaFiscal_ParcID_CONTA.AsInteger > 0 then
    fDMRecebeXML.cdsDuplicataID_CONTA_BOLETO.AsInteger := fDMRecebeXML.cdsNotaFiscal_ParcID_CONTA.AsInteger;
  fDMRecebeXML.cdsDuplicataID_COMISSAO.AsInteger       := 0;
  fDMRecebeXML.cdsDuplicataQTD_DIASATRASO.AsInteger    := 0;
  fDMRecebeXML.cdsDuplicataDTRECEBIMENTO_TITULO.Clear;
  fDMRecebeXML.cdsDuplicataDTEMISSAO.AsDateTime        := fDMRecebeXML.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime;
  fDMRecebeXML.cdsDuplicataPAGO_CARTORIO.AsString      := 'N';
  fDMRecebeXML.cdsDuplicataPROTESTADO.AsString         := 'N';
  fDMRecebeXML.cdsDuplicataTIPO_LANCAMENTO.AsString    := fDMRecebeXML.cdsNotaFiscalTIPO_REG.AsString;
  fDMRecebeXML.cdsDuplicataARQUIVO_GERADO.AsString     := 'N';
  fDMRecebeXML.cdsDuplicataTRANSFERENCIA_ICMS.AsString := TransfICMS;
  fDMRecebeXML.cdsDuplicataNOSSONUMERO.AsString        := '';
  fDMRecebeXML.cdsDuplicataDTFINANCEIRO.Clear;
  fDMRecebeXML.cdsDuplicataNUMCHEQUE.AsInteger         := 0;
  fDMRecebeXML.cdsDuplicataACEITE.AsString             := '';
  fDMRecebeXML.cdsDuplicataTIPO_MOV.AsString           := 'N';
  fDMRecebeXML.cdsDuplicataTITULO_CARTORIO.AsString    := 'N';
  if vTerminal <= 0 then
    fDMRecebeXML.cdsDuplicataID_TERMINAL.Clear
  else
    fDMRecebeXML.cdsDuplicataID_TERMINAL.AsInteger := vTerminal;
  if Adiantamento = 'S' then
  begin
    fDMRecebeXML.cdsDuplicataDTULTPAGAMENTO.AsDateTime := fDMRecebeXML.cdsDuplicataDTVENCIMENTO.AsDateTime;
    fDMRecebeXML.cdsDuplicataVLR_PAGO.AsFloat          := fDMRecebeXML.cdsDuplicataVLR_RESTANTE.AsFloat;
    fDMRecebeXML.cdsDuplicataVLR_RESTANTE.AsFloat      := 0;
  end;
  fDMRecebeXML.cdsDuplicata.Post;

  Gravar_Dupicata_Hist(fDMRecebeXML,'');
  if ID_CCusto > 0 then
    Gravar_Duplicata_CCusto(fDMRecebeXML,ID_CCusto);

  if Adiantamento = 'S' then
    Gravar_Dupicata_Hist(fDMRecebeXML,'SALDO');

  //03/05/2024  vai gerar quitado o contas a pagar
  if fDMRecebeXML.cdsDuplicataID_TIPOCOBRANCA.AsInteger > 0 then
  begin
    vQuitar := SQLLocate('TIPOCOBRANCA','ID','QUITAR_AUTOMATICO',fDMRecebeXML.cdsDuplicataID_TIPOCOBRANCA.AsString);
    if (vQuitar = 'P') or (vQuitar = 'A') then
      Gravar_Dupicata_Hist(fDMRecebeXML,'PAG');
  end;
  //******************

  fDMRecebeXML.cdsDuplicata.ApplyUpdates(0);
end;

procedure Gravar_Dupicata_Hist(fDMRecebeXML: TDMRecebeXML; Tipo: String);
var
  vItemAux: Integer;
begin
  fDMRecebeXML.cdsDuplicata_Hist.Last;
  vItemAux := fDMRecebeXML.cdsDuplicata_HistITEM.AsInteger;
  vItemAux := vItemAux + 1;

  fDMRecebeXML.cdsDuplicata_Hist.Insert;
  fDMRecebeXML.cdsDuplicata_HistID.AsInteger               := fDMRecebeXML.cdsDuplicataID.AsInteger;
  fDMRecebeXML.cdsDuplicata_HistITEM.AsInteger             := vItemAux;
  fDMRecebeXML.cdsDuplicata_HistTIPO_HISTORICO.AsString    := 'ENT';
  fDMRecebeXML.cdsDuplicata_HistID_HISTORICO.AsInteger     := 0;
  if (Tipo = 'PAG') or (Tipo = 'SALDO') then
  begin
    fDMRecebeXML.cdsDuplicata_HistTIPO_HISTORICO.AsString := 'PAG';
    if tipo = 'SALDO' then
      fDMRecebeXML.cdsDuplicata_HistCOMPLEMENTO.AsString := 'PAGAMENTO DO TÍTULO COM SALDO DE CREDITO'
    else
      fDMRecebeXML.cdsDuplicata_HistCOMPLEMENTO.AsString := 'PAGAMENTO DO TÍTULO';
    fDMRecebeXML.cdsDuplicata_HistVLR_PAGAMENTO.AsFloat   := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsDuplicataVLR_PARCELA.AsFloat));
    fDMRecebeXML.cdsDuplicata_HistVLR_LANCAMENTO.AsFloat  := StrToFloat(FormatFloat('0.00',0));
    if fDMRecebeXML.cdsDuplicataID_TIPOCOBRANCA.AsInteger > 0 then
      fDMRecebeXML.cdsDuplicata_HistID_FORMA_PAGAMENTO.AsInteger := fDMRecebeXML.cdsDuplicataID_TIPOCOBRANCA.AsInteger;
  end
  else
  begin
    fDMRecebeXML.cdsDuplicata_HistCOMPLEMENTO.AsString := 'ENTRADA DO TÍTULO';
    fDMRecebeXML.cdsDuplicata_HistVLR_PAGAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
    fDMRecebeXML.cdsDuplicata_HistVLR_LANCAMENTO.AsFloat := fDMRecebeXML.cdsDuplicataVLR_PARCELA.AsFloat;
  end;
  fDMRecebeXML.cdsDuplicata_HistDTHISTORICO.AsDateTime     := Date;
  fDMRecebeXML.cdsDuplicata_HistDTLANCAMENTO.AsDateTime    := fDMRecebeXML.cdsDuplicataDTEMISSAO.AsDateTime;
  fDMRecebeXML.cdsDuplicata_HistVLR_JUROSPAGOS.AsFloat     := StrToFloat(FormatFloat('0.00',0));
  fDMRecebeXML.cdsDuplicata_HistVLR_MULTA.AsFloat          := StrToFloat(FormatFloat('0.00',0));
  fDMRecebeXML.cdsDuplicata_HistVLR_DESCONTOS.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  fDMRecebeXML.cdsDuplicata_HistVLR_DESPESAS.AsFloat       := StrToFloat(FormatFloat('0.00',0));
  fDMRecebeXML.cdsDuplicata_HistVLR_DEVOLUCAO.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  fDMRecebeXML.cdsDuplicata_HistVLR_JUROSCALCULADO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  fDMRecebeXML.cdsDuplicata_HistNUMCHEQUE.AsInteger        := 0;
  fDMRecebeXML.cdsDuplicata_HistDTPREVISAO_CHEQUE.Clear;
  fDMRecebeXML.cdsDuplicata_HistID_CONTA.AsInteger         := fDMRecebeXML.cdsDuplicataID_CONTA.AsInteger;
  fDMRecebeXML.cdsDuplicata_HistID_COMISSAO.AsInteger      := 0;
  fDMRecebeXML.cdsDuplicata_HistTIPO_ES.AsString           := fDMRecebeXML.cdsDuplicataTIPO_ES.AsString;
  fDMRecebeXML.cdsDuplicata_Hist.Post;
  if (Tipo = 'PAG') or (Tipo = 'SALDO') then
  begin
    if not (fDMRecebeXML.cdsDuplicata.State in [dsEdit,dsInsert]) then
      fDMRecebeXML.cdsDuplicata.Edit;
    fDMRecebeXML.cdsDuplicataVLR_RESTANTE.AsFloat := 0;
    fDMRecebeXML.cdsDuplicataVLR_PAGO.AsFloat     := fDMRecebeXML.cdsDuplicataVLR_PARCELA.AsFloat;
    fDMRecebeXML.cdsDuplicataDTULTPAGAMENTO.AsDateTime := Date;
    fDMRecebeXML.cdsDuplicata.Post; 
    prc_Gravar_Financeiro(fDMRecebeXML,Tipo);
  end;
end;

procedure Gravar_Duplicata_CCusto(fDMRecebeXML: TDMRecebeXML; ID_CCusto: Integer);
begin
  fDMRecebeXML.cdsDupCCusto.Close;
  fDMRecebeXML.sdsDupCCusto.ParamByName('ID').AsInteger := fDMRecebeXML.cdsDuplicataID.AsInteger;
  fDMRecebeXML.cdsDupCCusto.Open;

  fDMRecebeXML.cdsDupCCusto.Insert;
  fDMRecebeXML.cdsDupCCustoID.AsInteger             := fDMRecebeXML.cdsDuplicataID.AsInteger;
  fDMRecebeXML.cdsDupCCustoITEM.AsInteger           := 1;
  fDMRecebeXML.cdsDupCCustoID_CENTROCUSTO.AsInteger := ID_CCusto;
  fDMRecebeXML.cdsDupCCustoPERCENTUAL.AsFloat       := 100;
  fDMRecebeXML.cdsDupCCustoVALOR.AsFloat            := fDMRecebeXML.cdsDuplicataVLR_PARCELA.AsFloat;
  fDMRecebeXML.cdsDupCCusto.Post;
  fDMRecebeXML.cdsDupCCusto.ApplyUpdates(0);
end;

procedure prc_Gravar_Financeiro(fDMRecebeXML: TDMRecebeXML; Tipo: string);
var
  fDMGravarFinanceiro: TDMGravarFinanceiro;
begin
  fDMGravarFinanceiro := TDMGravarFinanceiro.Create(fDMGravarFinanceiro);
  try
    fDMGravarFinanceiro.vTipo_ES := 'S';
    if Tipo = 'SALDO' then
      fDMGravarFinanceiro.vHistorico_Compl := 'Pagto.Saldo de crédito ref. Doc nº '
    else
    if Tipo = 'ENT' then
      fDMGravarFinanceiro.vHistorico_Compl := 'Pagto.Entrada ref. Doc nº '
    else
    if Tipo = 'AVI' then
      fDMGravarFinanceiro.vHistorico_Compl  := 'Pagto.A Vista ref. Doc nº ';
    fDMGravarFinanceiro.vHistorico_Compl    := fDMGravarFinanceiro.vHistorico_Compl + fDMRecebeXML.cdsDuplicataNUMDUPLICATA.AsString + ' de ' +  fDMRecebeXML.cdsFornecedorNOME.AsString;
    fDMGravarFinanceiro.vID_Conta           := fDMRecebeXML.cdsDuplicataID_CONTA.AsInteger;
    fDMGravarFinanceiro.vID_ModDuplicata    := fDMRecebeXML.cdsDuplicataID.AsInteger;
    fDMGravarFinanceiro.vItem_MovDuplicata  := fDMRecebeXML.cdsDuplicata_HistITEM.AsInteger;
    fDMGravarFinanceiro.vID_Historico       := 0;
    fDMGravarFinanceiro.vID_Pessoa          := fDMRecebeXML.cdsDuplicataID_PESSOA.AsInteger;
    fDMGravarFinanceiro.vID_Forma_Pagamento := fDMRecebeXML.cdsDuplicataID_TIPOCOBRANCA.AsInteger;
    fDMGravarFinanceiro.vID_ExtComissao     := 0;
    fDMGravarFinanceiro.vDtMovimento        := fDMRecebeXML.cdsDuplicata_HistDTLANCAMENTO.AsDateTime;
    fDMGravarFinanceiro.vVlr_Movimento      := StrToFloat(FormatFloat('0.00', fDMRecebeXML.cdsDuplicata_HistVLR_PAGAMENTO.AsFloat));
    fDMGravarFinanceiro.vFilial_Fin         := fDMRecebeXML.cdsDuplicataFILIAL.AsInteger;
    if fDMRecebeXML.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger > 0 then
      fDMGravarFinanceiro.vID_Conta_Orcamento := fDMRecebeXML.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger
    else
      fDMGravarFinanceiro.vID_Conta_Orcamento := 0;
    fDMGravarFinanceiro.vFilial_Fin := fDMRecebeXML.cdsDuplicataFILIAL.AsInteger;
    fDMGravarFinanceiro.prc_Gravar;
  finally
    FreeAndNil(fDMGravarFinanceiro);
  end;
end;

procedure prc_Ajusta_CSTICMS(fDMRecebeXML: TDMRecebeXML);
begin
  fDMRecebeXML.mItensNotaID_Variacao.AsInteger := fnc_Buscar_Regra_CFOP(fDMRecebeXML,fDMRecebeXML.mItensNotaCFOPInterno.AsInteger);
  if fDMRecebeXML.mItensNotaID_Variacao.AsInteger > 0 then
  begin
    fDMRecebeXML.qCFOP_Variacao.Close;
    fDMRecebeXML.qCFOP_Variacao.ParamByName('ID').AsInteger   := fDMRecebeXML.mItensNotaCFOPInterno.AsInteger;
    fDMRecebeXML.qCFOP_Variacao.ParamByName('ITEM').AsInteger := fDMRecebeXML.mItensNotaID_Variacao.AsInteger;
    fDMRecebeXML.qCFOP_Variacao.Open;
    if fDMRecebeXML.qCFOP_VariacaoID_CSTICMS.AsInteger > 0 then
      fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger := fDMRecebeXML.qCFOP_VariacaoID_CSTICMS.AsInteger;
    if fDMRecebeXML.qCFOP_VariacaoID_CSTIPI.AsInteger > 0 then
      fDMRecebeXML.mItensNotaID_CSTIPI.AsInteger := fDMRecebeXML.qCFOP_VariacaoID_CSTIPI.AsInteger;
  end
  else
  begin
    if fDMRecebeXML.cdsCFOPID_CSTICMS.AsInteger > 0 then
      fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger := fDMRecebeXML.cdsCFOPID_CSTICMS.AsInteger;
    if fDMRecebeXML.cdsCFOPID_CSTIPI.AsInteger > 0 then
      fDMRecebeXML.mItensNotaID_CSTIPI.AsInteger := fDMRecebeXML.cdsCFOPID_CSTIPI.AsInteger;
  end;
  fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger := fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger; 
end;

function fnc_Buscar_Regra_CFOP(fDMRecebeXML: TDMRecebeXML; ID_CFOP: Integer): Integer;
var
  vTipo_Empresa: String;
  vTipo_Cliente: String;
begin
  if fDMRecebeXML.vFilial_Local <= 0 then
    exit;
  if fDMRecebeXML.vCodFornecedor_XML <= 0 then
    exit;
  if fDMRecebeXML.vFilial_Local <> fDMRecebeXML.cdsFilialID.AsInteger then
    fDMRecebeXML.cdsFilial.Locate('ID',fDMRecebeXML.vFilial_Local, ([LocaseInsensitive]));
  vTipo_Cliente := 'G';
  if fDMRecebeXML.vCodFornecedor_XML <> fDMRecebeXML.cdsFornecedorCODIGO.AsInteger then
  begin
    fDMRecebeXML.cdsFornecedor.Locate('CODIGO',fDMRecebeXML.vCodFornecedor_XML,[loCaseInsensitive]);
  end;
  if fDMRecebeXML.cdsCFOPID.AsInteger <> fDMRecebeXML.mItensNotaCFOPInterno.AsInteger then
    fDMRecebeXML.cdsCFOP.Locate('ID',fDMRecebeXML.mItensNotaCFOPInterno.AsInteger,[loCaseInsensitive]);
  if fDMRecebeXML.cdsFornecedorID_REGIME_TRIB.AsInteger > 0 then
    if SQLLocate('REGIME_TRIB','ID','CODIGO',fDMRecebeXML.cdsFornecedorID_REGIME_TRIB.AsString) <> '3' then
      vTipo_Cliente := 'S';
  vTipo_Empresa := fDMRecebeXML.cdsFilialSIMPLES.AsString;
  if fDMRecebeXML.cdsFilialSIMPLES.AsString <> 'S' then
    vTipo_Empresa := 'G';
  fDMRecebeXML.qRegra_CFOP.Close;
  fDMRecebeXML.qRegra_CFOP.ParamByName('ID').AsInteger          := ID_CFOP;
  fDMRecebeXML.qRegra_CFOP.ParamByName('TIPO_EMPRESA').AsString := vTipo_Empresa;
  fDMRecebeXML.qRegra_CFOP.ParamByName('TIPO_CLIENTE').AsString := vTipo_Cliente;
  if (fDMRecebeXML.cdsFornecedorTIPO_CONTRIBUINTE.AsString <> '1') and (fDMRecebeXML.cdsCFOPUSA_NAO_CONTR_FISICA.AsString = 'S') then
  begin
    fDMRecebeXML.qRegra_CFOP.ParamByName('PESSOA_CLIENTE').AsString   := 'F';
    fDMRecebeXML.qRegra_CFOP.ParamByName('TIPO_CONSUMIDOR').AsInteger := 1;
  end
  else
  begin
    if fDMRecebeXML.cdsFornecedorPESSOA.AsString = 'E' then
      fDMRecebeXML.qRegra_CFOP.ParamByName('PESSOA_CLIENTE').AsString := 'J'
    else
      fDMRecebeXML.qRegra_CFOP.ParamByName('PESSOA_CLIENTE').AsString := fDMRecebeXML.cdsFornecedorPESSOA.AsString;
    fDMRecebeXML.qRegra_CFOP.ParamByName('TIPO_CONSUMIDOR').AsInteger := fDMRecebeXML.cdsFornecedorTIPO_CONSUMIDOR.AsInteger;
  end;
  if fDMRecebeXML.cdsCFOPCONTROLA_FINALIDADE.AsString = 'S' then
    fDMRecebeXML.qRegra_CFOP.ParamByName('FINALIDADE').AsString := fDMRecebeXML.mItensNotaTipoVenda.AsString
  else
    fDMRecebeXML.qRegra_CFOP.ParamByName('FINALIDADE').AsString := '';
  fDMRecebeXML.qRegra_CFOP.Open;
  if not fDMRecebeXML.qRegra_CFOP.IsEmpty then
    Result := fDMRecebeXML.qRegra_CFOPITEM.AsInteger
  else
    Result := 0;
end;

function fnc_CFOP_Atualiza_PrecoVenda(ID_CFOP: Integer): Boolean;
begin
  Result := False;
  if ID_CFOP > 0 then
    Result := (SQLLocate('TAB_CFOP','ID','ALT_VENDA',IntToStr(ID_CFOP)) = 'S');
end;

function fnc_OC_Aprovada(NumOC: String): String;
var
  sds: TSQLDataSet;
  vAux: String;
begin
  Result := '';
  vAux := Monta_Numero(NumOC,0);
  if Length(trim(vAux)) <> Length(trim(NumOC)) then
    exit;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'select P.APROVADO_PED, P.CANCELADO '
                       + 'from PEDIDO P '
                       + 'where P.NUM_PEDIDO = :NUM_PEDIDO ';
    sds.ParamByName('NUM_PEDIDO').AsString := NumOC;
    sds.Open;
    if (sds.FieldByName('APROVADO_PED').AsString = 'N') or (sds.FieldByName('APROVADO_PED').AsString = 'P') then
      Result := '*** OC ' + NumOC + ', não aprovada!'
    else
    if (sds.FieldByName('CANCELADO').AsString = 'S') then
      Result := '*** OC ' + NumOC + ', esta cancelada!';
  finally
    FreeAndNil(sds);
  end;
end;

end.
