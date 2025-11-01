unit uUtilProduto;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, Messages, Controls, Graphics, UDMCadProduto, Variants, DB, StrUtils,
  frxExportMail, frxClass, frxExportPDF, RLFilters, RLPDFFilter, dbXPress, uDmConsProduto, Classe.Parametros;

  procedure prc_Alterar_Consumo_Perc(fDMCadProduto: TDMCadProduto; ID_Prod: Integer; Percentual: Real);
  procedure prc_Alterar_Consumo_Fixo(fDMCadProduto: TDMCadProduto; ID_Prod: Integer; Qtd: Real);
  procedure prc_Ajustar_Unidade_Conv(fDMCadProduto: TDMCadProduto);
  procedure prc_Gravar_Comb_Mat_Consumo(fDMCadProduto: TDMCadProduto; ID_Cor, ID_Material: Integer; Tipo: String = 'INSERIR');
  procedure prc_Ajustar_Processo_Padrao(fDMCadProduto: TDMCadProduto);
  procedure prc_Gerar_Produto_Proc(fDMCadProduto: TDMCadProduto);
  procedure prc_Gravar_Produto_Ajuste_Consumo(ID: Integer; Perc_Ant, Perc_Novo, Qtd_Ant, Qtd: Real);
  procedure prc_Gravar_Tamanho_Form(fDMCadProduto: TDMCadProduto; CodProduto_Forn: String);
  procedure prc_Copiar_Processos(fDMCadProduto: TDMCadProduto);
  procedure prc_ConsConsumo_Prod_Unico(fDMCadProduto: TDMCadProduto);
  procedure prc_Carrega_Nome_Materiais(fDMConsProduto: TDMConsProduto);
  procedure prc_Executa_Procedure(Parametro,Nome : String; IDCampo: Integer);
  procedure prc_Controle_Ativo(fDMCadProduto: TDMCadProduto);
  procedure prc_Controle_Veiculo(fDMCadProduto: TDMCadProduto);
  procedure prc_Abrir_Ativo(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Veiculo(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Balanca(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Controle_Ficha_Textil(fDMCadProduto: TDMCadProduto);
  procedure prc_Controle_Ficha_Tranc(fDMCadProduto: TDMCadProduto);
  procedure prc_Abrir_Ficha_Textil(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Ficha_Tranc(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Ficha_Textil_DP(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Serie(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Matriz(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Produto_Cor(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_ProdFoto(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Produto_Emb(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Produto_Atelier(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Produto_MatTam(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Produto_Maq(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Comissao(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Comissao_Vend(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Produto_Lote(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Produto_CA(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Produto_Carimbo(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_CBarra(fDMCadProduto: TDMCadProduto; ID: Integer);

  procedure prc_Controle_Serie(fDMCadProduto: TDMCadProduto);
  procedure prc_Controle_Balanca(fDMCadProduto: TDMCadProduto);
  procedure prc_Gerar_Ref_Estruturada(fDMCadProduto: TDMCadProduto);
  procedure prc_Verificar_Cor_Comb(ID: Integer);
  procedure prc_Referencia_Linha(fDMCadProduto: TDMCadProduto);
  procedure prc_Abrir_Produto_Comb(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Produto_Processo(fDMCadProduto: TDMCadProduto; ID: Integer);
  procedure prc_Abrir_Produto_GradeNum(fDMCadProduto: TDMCadProduto; ID: Integer);

  function fnc_Combinacao_Cor(fDMCadProduto: TDMCadProduto): String;
  function fnc_Material_Com_Cor(ID: Integer): Boolean;
  function fnc_Filial_STRet: Integer;
  function fnc_Existe_Mov(ID_Produto, ID_MovEstoque: Integer): Boolean;
  function fnc_Verificar_Tipo(fDMCadProduto: TDMCadProduto): Boolean;
  function fnc_Duplicidade_Mat(ID_Prod: Integer): String;
  function fnc_Verifica_Lote(ID: Integer; Num_Lote: String): Boolean;
  function fnc_Busca_Semi(fDMCadProduto: TDMCadProduto ): Integer;
  function fnc_Script(AString: String): Boolean;
  function fnc_Referencia_Proxima_Seq(Tipo: String): Integer;
  function fnc_Verifica_Corrugado(ID: Integer): String;
  function fnc_Monta_Nome_Estrutura(ID: Integer): String;
  function fnc_busca_Estoque_Lote(ID_Produto: Integer; Num_Lote: String): Real;

var
  vContador_Alt_Produto: Integer;  

implementation

uses uUtilPadrao, DateUtils, SysConst;

procedure prc_Alterar_Consumo_Perc(fDMCadProduto: TDMCadProduto; ID_Prod: Integer; Percentual: Real);
var
  vAux: Real;
  vGravar: Boolean;
  vGravar_Comb: Boolean;
  ID: TTransactionDesc;
  vIDProdAux: Integer;
  vPerc_Ant: Real;
begin
  vGravar := False;
  vGravar_Comb := False;
  fDMCadProduto.prc_Localizar(ID_Prod);

  ID.TransactionID  := 111;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try

    fDMCadProduto.cdsProduto_Consumo.First;
    while not fDMCadProduto.cdsProduto_Consumo.Eof do
    begin
      if StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat)) > 0 then
      begin
        vAux := StrToFloat(FormatFloat('0.00000',(fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat * Percentual) / 100));
        fDMCadProduto.cdsProduto_Consumo.Edit;
        fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat + vAux));
        vAux := StrToFloat(FormatFloat('0.00000',1 / fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat));
        fDMCadProduto.cdsProduto_ConsumoQTD_UNIDADE.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_ConsumoQTD_UNIDADE.AsFloat + vAux));
        fDMCadProduto.cdsProduto_Consumo.Post;
        vGravar := True;
      end;
      fDMCadProduto.cdsProduto_Consumo_Tam.First;
      while not fDMCadProduto.cdsProduto_Consumo_Tam.Eof  do
      begin
        if StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_Consumo_TamQTD_CONSUMO.AsFloat)) > 0 then
        begin
          vAux := StrToFloat(FormatFloat('0.00000',(fDMCadProduto.cdsProduto_Consumo_TamQTD_CONSUMO.AsFloat * Percentual) / 100));
          fDMCadProduto.cdsProduto_Consumo_Tam.Edit;
          fDMCadProduto.cdsProduto_Consumo_TamQTD_CONSUMO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_Consumo_TamQTD_CONSUMO.AsFloat + vAux));
          fDMCadProduto.cdsProduto_Consumo_Tam.Post;
          vGravar := True;
        end;
        fDMCadProduto.cdsProduto_Consumo_Tam.Next;
      end;
      fDMCadProduto.cdsProduto_Consumo.Next;
    end;
    if vGravar then
      fDMCadProduto.cdsProduto_Consumo.ApplyUpdates(0);

    prc_Abrir_Produto_Comb(fDMCadProduto,ID_Prod);

    fDMCadProduto.cdsProduto_Comb.First;
    while not fDMCadProduto.cdsProduto_Comb.Eof do
    begin
      fDMCadProduto.cdsProduto_Comb_Mat.First;
      while not fDMCadProduto.cdsProduto_Comb_Mat.Eof do
      begin
        if StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat)) > 0 then
        begin
          vAux := StrToFloat(FormatFloat('0.00000',(fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat * Percentual) / 100));
          fDMCadProduto.cdsProduto_Comb_Mat.Edit;
          fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat + vAux));
          vAux := StrToFloat(FormatFloat('0.00000',1 / fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat));
          fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat + vAux));
          fDMCadProduto.cdsProduto_Comb_Mat.Post;
          vGravar_Comb := True;
        end;
        fDMCadProduto.cdsProduto_Comb_Tam.First;
        while not fDMCadProduto.cdsProduto_Comb_Tam.Eof do
        begin
          if StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_Comb_TamQTD_CONSUMO.AsFloat)) > 0 then
          begin
            vAux := StrToFloat(FormatFloat('0.00000',(fDMCadProduto.cdsProduto_Comb_TamQTD_CONSUMO.AsFloat * Percentual) / 100));
            fDMCadProduto.cdsProduto_Comb_Tam.Edit;
            fDMCadProduto.cdsProduto_Comb_TamQTD_CONSUMO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_Comb_TamQTD_CONSUMO.AsFloat + vAux));
            fDMCadProduto.cdsProduto_Comb_Tam.Post;
            vGravar_Comb := True;
          end;
          fDMCadProduto.cdsProduto_Comb_Tam.Next;
        end;
        fDMCadProduto.cdsProduto_Comb_Mat.Next;
      end;
      fDMCadProduto.cdsProduto_Comb.Next;
    end;

    if vGravar_Comb then
      fDMCadProduto.cdsProduto_Comb.ApplyUpdates(0);

    if vGravar then
    begin
      vIDProdAux := fDMCadProduto.cdsProdutoID.AsInteger;
      vPerc_Ant  := StrToFloat(FormatFloat('0.00',fDMCadProduto.cdsProdutoPERC_CONSUMO_ALT.AsFloat));
      fDMCadProduto.cdsProduto.Edit;
      fDMCadProduto.cdsProdutoDTCONSUMO_ALT.AsDateTime := Date;
      fDMCadProduto.cdsProdutoHRCONSUMO_ALT.AsDateTime := Now;
      fDMCadProduto.cdsProdutoUSUARIO_CONSUMO_ALT.AsString := vUsuario;
      fDMCadProduto.cdsProdutoPERC_CONSUMO_ALT.AsFloat := Percentual;
      fDMCadProduto.cdsProduto.Post;
      fDMCadProduto.cdsProduto.ApplyUpdates(0);
      vContador_Alt_Produto := vContador_Alt_Produto + 1;

      prc_Gravar_Produto_Ajuste_Consumo(vIdProdAux,vPerc_Ant,Percentual,0,0);
    end;

    if (vGravar) or (vGravar_Comb) then
      dmDatabase.scoDados.Commit(ID)
    else
      dmDatabase.scoDados.Rollback(ID);

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end
  end;

end;

procedure prc_Alterar_Consumo_Fixo(fDMCadProduto: TDMCadProduto; ID_Prod: Integer; Qtd: Real);
var
  vAux: Real;
  vGravar: Boolean;
  vGravar_Comb: Boolean;
  ID: TTransactionDesc;
  vIDProdAux: Integer;
  vQtd_Ant: Real;
begin
  vGravar := False;
  vGravar_Comb := False;
  fDMCadProduto.prc_Localizar(ID_Prod);
  vQtd_Ant := 0;
  ID.TransactionID  := 111;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    fDMCadProduto.cdsProduto_Consumo.First;
    while not fDMCadProduto.cdsProduto_Consumo.Eof do
    begin
      if fDMCadProduto.cdsProduto_ConsumoclTIPO_REG.AsString = 'S' then
      begin
        vQtd_Ant := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat));
        fDMCadProduto.cdsProduto_Consumo.Edit;
        fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat := StrToFloat(FormatFloat('0.00000',Qtd));
        vAux := StrToFloat(FormatFloat('0.00000',1 / fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat));
        fDMCadProduto.cdsProduto_ConsumoQTD_UNIDADE.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_ConsumoQTD_UNIDADE.AsFloat + vAux));
        fDMCadProduto.cdsProduto_Consumo.Post;
        vGravar := True;
      end;
      fDMCadProduto.cdsProduto_Consumo.Next;
    end;
    if vGravar then
      fDMCadProduto.cdsProduto_Consumo.ApplyUpdates(0);
    prc_Abrir_Produto_Comb(fDMCadProduto,ID_Prod);
    fDMCadProduto.cdsProduto_Comb.First;
    while not fDMCadProduto.cdsProduto_Comb.Eof do
    begin
      fDMCadProduto.cdsProduto_Comb_Mat.First;
      while not fDMCadProduto.cdsProduto_Comb_Mat.Eof do
      begin
        if SQLLocate('PRODUTO','ID','TIPO_REG',fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsString) = 'S' then
        begin
          fDMCadProduto.cdsProduto_Comb_Mat.Edit;
          fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat := StrToFloat(FormatFloat('0.00000',Qtd));
          vAux := StrToFloat(FormatFloat('0.00000',1 / fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat));
          fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat + vAux));
          fDMCadProduto.cdsProduto_Comb_Mat.Post;
          vGravar_Comb := True;
        end;
        fDMCadProduto.cdsProduto_Comb_Mat.Next;
      end;
      fDMCadProduto.cdsProduto_Comb.Next;
    end;
    if vGravar_Comb then
      fDMCadProduto.cdsProduto_Comb.ApplyUpdates(0);
    if vGravar then
    begin
      vIDProdAux := fDMCadProduto.cdsProdutoID.AsInteger;
      vContador_Alt_Produto := vContador_Alt_Produto + 1;
      prc_Gravar_Produto_Ajuste_Consumo(vIdProdAux,0,0,vQtd_Ant,Qtd);
    end;
    if (vGravar) or (vGravar_Comb) then
      dmDatabase.scoDados.Commit(ID)
    else
      dmDatabase.scoDados.Rollback(ID);
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end
  end;

end;

procedure prc_Ajustar_Unidade_Conv(fDMCadProduto: TDMCadProduto);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    fDMCadProduto.cdsConsulta.First;
    while not fDMCadProduto.cdsConsulta.Eof do
    begin
      fDMCadProduto.prc_Localizar(fDMCadProduto.cdsConsultaID.AsInteger);
      fDMCadProduto.cdsProduto_Uni.First;
      while not fDMCadProduto.cdsProduto_Uni.Eof do
      begin
        sds.Close;
        sds.CommandText := 'select U.UNIDADE_CONV from UNIDADE_CONV U '
                         + 'where U.UNIDADE = :UNIDADE and U.ITEM = :ITEM ';
        sds.ParamByName('UNIDADE').AsString := fDMCadProduto.cdsProdutoUNIDADE.AsString;
        sds.ParamByName('ITEM').AsInteger   := fDMCadProduto.cdsProduto_UniITEM_UNIDADE.AsInteger;
        sds.Open;
        if sds.FieldByName('UNIDADE_CONV').AsString <> '' then
        begin
          fDMCadProduto.cdsProduto_Uni.Edit;
          fDMCadProduto.cdsProduto_UniUNIDADE_CONV.AsString := sds.FieldByName('UNIDADE_CONV').AsString;
          fDMCadProduto.cdsProduto_Uni.Post;
          fDMCadProduto.cdsProduto_Uni.ApplyUpdates(0);
        end;
        fDMCadProduto.cdsProduto_Uni.Next;
      end;
      fDMCadProduto.cdsConsulta.Next;
    end;
  finally
    FreeAndNil(sds);
  end;
  ShowMessage('Processo Concluído!');
end;

procedure prc_Gravar_Comb_Mat_Consumo(fDMCadProduto: TDMCadProduto; ID_Cor, ID_Material: Integer; Tipo: String = 'INSERIR');
begin
  if Tipo <> 'INSERIR' then
  begin
    if fDMCadProduto.cdsProduto_Comb_Mat.Locate('ID_MATERIAL',fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger,([Locaseinsensitive])) then
      fDMCadProduto.cdsProduto_Comb_Mat.Edit;
  end;
  if (Tipo = 'INSERIR') or (not(fDMCadProduto.cdsProduto_Comb_Mat.State in [dsEdit]) and (TIPO = 'M'))  then
    fDMCadProduto.prc_Inserir_ProdCombMat(fDMCadProduto.cdsProduto_ConsumoITEM.AsInteger);
  if not(fDMCadProduto.cdsProduto_Comb_Mat.State in [dsEdit,dsInsert]) then
    exit;
  if fDMCadProduto.cdsProduto_Comb_Mat.State in [dsInsert] then
    //fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger := fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger;
    fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger := ID_Material;
  if (fDMCadProduto.cdsProduto_Comb_Mat.State in [dsInsert]) or (Tipo = 'M') then
  begin
    fDMCadProduto.cdsProduto_Comb_MatID_COR.Clear;
    if ID_Cor > 0 then
      fDMCadProduto.cdsProduto_Comb_MatID_COR.AsInteger := ID_Cor;
    if fDMCadProduto.cdsProduto_ConsumoID_POSICAO.AsInteger > 0 then
    begin
      fDMCadProduto.cdsProduto_Comb_MatID_POSICAO.AsInteger  := fDMCadProduto.cdsProduto_ConsumoID_POSICAO.AsInteger;
      fDMCadProduto.cdsProduto_Comb_MatNOME_POSICAO.AsString := fDMCadProduto.cdsProduto_ConsumoNOME_POSICAO.AsString;
    end;
    if fDMCadProduto.cdsProduto_ConsumoID_SETOR.AsInteger > 0 then
      fDMCadProduto.cdsProduto_Comb_MatID_SETOR.AsInteger := fDMCadProduto.cdsProduto_ConsumoID_SETOR.AsInteger;
    if TParametros.Busca('USA_CONSUMO_COMB','PARAMETROS_PROD') = 'S' then
    begin
      fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat := fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat;
      fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat := fDMCadProduto.cdsProduto_ConsumoQTD_UNIDADE.AsFloat;
      fDMCadProduto.cdsProduto_Comb_MatUNIDADE.AsString    := fDMCadProduto.cdsProduto_ConsumoUNIDADE.AsString;
      fDMCadProduto.cdsProduto_Comb_MatIMP_TALAO.AsString  := fDMCadProduto.cdsProduto_ConsumoIMP_TALAO.AsString;
      fDMCadProduto.cdsProduto_Comb_MatTINGIMENTO.AsString := fDMCadProduto.cdsProduto_ConsumoTINGIMENTO.AsString;
      fDMCadProduto.cdsProduto_Comb_MatFUSO.AsFloat        := fDMCadProduto.cdsProduto_ConsumoFUSO.AsFloat;
      fDMCadProduto.cdsProduto_Comb_MatTIPO_CONSUMO.AsString := fDMCadProduto.cdsProduto_ConsumoTIPO_CONSUMO.AsString;
    end;
  end;
  if trim(fDMCadProduto.cdsProduto_Comb_MatTIPO_CONSUMO.AsString) = '' then
    fDMCadProduto.cdsProduto_Comb_MatTIPO_CONSUMO.AsString := fDMCadProduto.cdsProduto_ConsumoTIPO_CONSUMO.AsString;
  fDMCadProduto.cdsProduto_Comb_Mat.Post;
  if fDMCadProduto.cdsProduto_Comb_MatTIPO_CONSUMO.AsString = 'G' then
  begin
    fDMCadProduto.cdsProduto_Comb_Tam.First;
    while not fDMCadProduto.cdsProduto_Comb_Tam.Eof do
      fDMCadProduto.cdsProduto_Comb_Tam.Delete;
  end
  else
  if fDMCadProduto.cdsProduto_Comb_MatTIPO_CONSUMO.AsString = 'T' then
  begin
    fDMCadProduto.cdsProduto_Consumo_Tam.First;
    while not fDMCadProduto.cdsProduto_Consumo_Tam.Eof do
    begin
      if fDMCadProduto.cdsProduto_Comb_Tam.Locate('TAMANHO',fDMCadProduto.cdsProduto_Consumo_TamTAMANHO.AsString,([Locaseinsensitive])) then
        fDMCadProduto.cdsProduto_Comb_Tam.Edit
      else
      begin
        fDMCadProduto.prc_Inserir_ProdCombTam;
        fDMCadProduto.cdsProduto_Comb_TamTAMANHO.AsString    := fDMCadProduto.cdsProduto_Consumo_TamTAMANHO.AsString;
      end;
      fDMCadProduto.cdsProduto_Comb_TamQTD_CONSUMO.AsFloat := fDMCadProduto.cdsProduto_Consumo_TamQTD_CONSUMO.AsFloat;
      fDMCadProduto.cdsProduto_Comb_Tam.Post;
      fDMCadProduto.cdsProduto_Consumo_Tam.Next;
    end;
  end;
end;

procedure prc_Ajustar_Processo_Padrao(fDMCadProduto: TDMCadProduto);
begin
  fDMCadProduto.cdsConsulta.First;
  while not fDMCadProduto.cdsConsulta.Eof do
  begin
    if (fDMCadProduto.cdsConsultaTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsConsultaTIPO_REG.AsString = 'S') then
    begin
      fDMCadProduto.prc_Localizar(fDMCadProduto.cdsConsultaID.AsInteger);
      if not fDMCadProduto.cdsProduto.IsEmpty then
      begin
        prc_Abrir_Produto_Processo(fDMCadProduto,fDMCadProduto.cdsProdutoID.AsInteger);
        if fDMCadProduto.cdsProdutoProcesso.IsEmpty then
          prc_Gerar_Produto_Proc(fDMCadProduto);
      end;
    end;
    fDMCadProduto.cdsConsulta.Next;
  end;
end;

procedure prc_Gerar_Produto_Proc(fDMCadProduto: TDMCadProduto);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'select P.ID, P.NOME, P.ORDEM_MAPA, P.ID_SETOR from PROCESSO P '
                       + 'where P.PROCESSO_PADRAO = ''S'''
                       + 'order by P.ORDEM_MAPA ';
    sds.Open;
    while not sds.Eof do
    begin
      fDMCadProduto.prc_Inserir_ProdProcesso;
      fDMCadProduto.cdsProdutoProcessoID_PROCESSO.AsInteger := sds.FieldByName('ID').AsInteger;
      fDMCadProduto.cdsProdutoProcessoID_SETOR.AsInteger    := sds.FieldByName('ID_SETOR').AsInteger;
      fDMCadProduto.cdsProdutoProcesso.Post;
      fDMCadProduto.cdsProdutoProcesso.ApplyUpdates(0);
      sds.Next;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

procedure prc_Gravar_Produto_Ajuste_Consumo(ID: Integer; Perc_Ant, Perc_Novo, Qtd_Ant, Qtd: Real);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.Close;
    sds.CommandText := ' insert into AJUSTE_CONSUMO (id, ID_PRODUTO, DTAJUSTE, HRAJUSTE, USUARIO, PERC_AJUSTE_ANT, PERC_AJUSTE_NOVO, QTD_ANT, QTD_FIXA ) '
                     + '  values (0, ' + QuotedStr(IntToStr(ID)) + ',' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date))
                     + ',' + QuotedStr(FormatDateTime('HH:MM',Now))
                     + ',' + QuotedStr(vUsuario)
                     + ',' + QuotedStr(Replace(FormatFloat('0.00',Perc_Ant),',','.'))
                     + ',' + QuotedStr(Replace(FormatFloat('0.00',Perc_Novo),',','.'))
                     + ',' + QuotedStr(Replace(FormatFloat('0.00',Qtd_Ant),',','.'))
                     + ',' + QuotedStr(Replace(FormatFloat('0.00',Qtd),',','.'))
                     + ')';
    sds.ExecSQL();

  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Material_Com_Cor(ID: Integer): Boolean;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.Close;
    sds.CommandText := 'select count(1) CONTADOR from PRODUTO_COMB where ID = :ID ';
    sds.ParamByName('ID').AsInteger := ID;
    sds.Open;
    Result := (sds.FieldByName('CONTADOR').AsInteger > 0);
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Combinacao_Cor(fDMCadProduto: TDMCadProduto): String;
var
  vMSGAux: String;
begin
  vMSGAux := '';
  try
    fDMCadProduto.cdsProduto_Comb.First;
    while not fDMCadProduto.cdsProduto_Comb.Eof do
    begin
      fDMCadProduto.cdsProduto_Comb_Mat.First;
      while not fDMCadProduto.cdsProduto_Comb_Mat.Eof do
      begin
        if fDMCadProduto.cdsProduto_Comb_MatID_COR.AsInteger <= 0 then
        begin
          if fnc_Material_Com_Cor(fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger) then
            vMSGAux := vMSGAux + #13 + '*** Item Combinação ' + fDMCadProduto.cdsProduto_CombITEM.AsString + ',  ' + fDMCadProduto.cdsProduto_CombNOME.AsString;
        end;
        fDMCadProduto.cdsProduto_Comb_Mat.Next;
      end;
      fDMCadProduto.cdsProduto_Comb.Next;
    end;
  finally
    Result := vMSGAux;
  end;
end;

procedure prc_Gravar_Tamanho_Form(fDMCadProduto: TDMCadProduto; CodProduto_Forn: String);
var
  vItem: Integer;
  vID_Fornecedor: Integer;
  vNome_Material: String;
  vCod_Material: String;
  vNome_Fornecedor: String;
  vPreco_Custo: Real;
  vID_Cor: Integer;
begin
  vID_Fornecedor   := fDMCadProduto.cdsProduto_FornID_FORNECEDOR.AsInteger;
  vNome_Material   := fDMCadProduto.cdsProduto_FornNOME_MATERIAL_FORN.AsString;
  vCod_Material    := CodProduto_Forn;
  vID_Cor          := fDMCadProduto.cdsProduto_FornID_COR.AsInteger;
  vNome_Fornecedor := fDMCadProduto.cdsProduto_FornNOMEFORNECEDOR.AsString;
  vPreco_Custo     := StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProduto_FornPRECO_CUSTO.AsFloat));
  fDMCadProduto.cdsProduto_Forn.Last;
  vItem := fDMCadProduto.cdsProduto_FornITEM.AsInteger;
  fDMCadProduto.cdsProduto_Tam.First;
  while not fDMCadProduto.cdsProduto_Tam.Eof do
  begin
    if not fDMCadProduto.cdsProduto_Forn.Locate('ID_FORNECEDOR;TAMANHO;ID_COR',VarArrayOf([vID_Fornecedor,fDMCadProduto.cdsProduto_TamTAMANHO.AsString,vID_Cor]),[locaseinsensitive]) then
    begin
      vItem := vItem  + 1;
      fDMCadProduto.cdsProduto_Forn.Insert;
      fDMCadProduto.cdsProduto_FornID.AsInteger   := fDMCadProduto.cdsProdutoID.AsInteger;
      fDMCadProduto.cdsProduto_FornITEM.AsInteger := vItem;
      fDMCadProduto.cdsProduto_FornID_FORNECEDOR.AsInteger := vID_Fornecedor;
      fDMCadProduto.cdsProduto_FornNOME_MATERIAL_FORN.AsString := vNome_Material;
      fDMCadProduto.cdsProduto_FornCOD_MATERIAL_FORN.AsString  := vCod_Material + fDMCadProduto.cdsProduto_TamTAMANHO.AsString;
      fDMCadProduto.cdsProduto_FornID_COR.AsInteger            := vID_Cor;
      fDMCadProduto.cdsProduto_FornTAMANHO.AsString            := fDMCadProduto.cdsProduto_TamTAMANHO.AsString;
      fDMCadProduto.cdsProduto_FornTAMANHO_CLIENTE.AsString    := fDMCadProduto.cdsProduto_FornTAMANHO.AsString;
      fDMCadProduto.cdsProduto_FornNOMEFORNECEDOR.AsString     := vNome_Fornecedor;
      fDMCadProduto.cdsProduto_FornPRECO_CUSTO.AsFloat         := StrToFloat(FormatFloat('0.0000',vPreco_Custo));
      fDMCadProduto.cdsProduto_Forn.Post;
    end;
    fDMCadProduto.cdsProduto_Tam.Next;
  end;
end;


procedure prc_Copiar_Processos(fDMCadProduto: TDMCadProduto);
var
  sds: TSQLDataSet;
  Flag: Boolean;
begin
  if trim(SQLLocate('PARAMETROS_PROD','ID','COPIAR_PROCESSO_GRU','1')) <> 'S' then
    exit;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'select G.ID, G.ITEM, G.ID_PROCESSO, G.ID_SETOR '
                       + 'from GRUPO_PROCESSO G '
                       + 'WHERE G.ID = :ID ';
    sds.ParamByName('ID').AsInteger := fDMCadProduto.cdsProdutoID_GRUPO.AsInteger;
    sds.Open;
    Flag := True;
    if (sds.FieldByName('ID_PROCESSO').AsInteger > 0) and (fDMCadProduto.cdsProdutoProcesso.RecordCount > 0) then
    begin
      if MessageDlg('Já existe processos neste produto, deseja substituir pelos do grupo novo?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
        Flag := False;
    end;
    if Flag then
    begin
      fDMCadProduto.cdsProdutoProcesso.First;
      while not fDMCadProduto.cdsProdutoProcesso.Eof do
        fDMCadProduto.cdsProdutoProcesso.Delete;
      while not sds.Eof do
      begin
        fDMCadProduto.prc_Inserir_ProdProcesso;
        fDMCadProduto.cdsProdutoProcessoID_PROCESSO.AsInteger := sds.FieldByName('ID_PROCESSO').AsInteger;
        if sds.FieldByName('ID_SETOR').AsInteger > 0 then
          fDMCadProduto.cdsProdutoProcessoID_SETOR.AsInteger    := sds.FieldByName('ID_SETOR').AsInteger;
        fDMCadProduto.cdsProdutoProcessoTEMPO_MINUTO.AsFloat  := 0;
        fDMCadProduto.cdsProdutoProcesso.Post;
        sds.Next;
      end;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

procedure prc_ConsConsumo_Prod_Unico(fDMCadProduto: TDMCadProduto);

  procedure prc_Gravar_mAuxCons(ID: Integer; Cru: Boolean);
  begin
    fDMCadProduto.mAuxCons.Insert;
    fDMCadProduto.mAuxConsID.AsInteger := ID;
    fDMCadProduto.mAuxConsID_Material.AsInteger := 0;
    fDMCadProduto.mAuxCons.Post;
  end;

  procedure prc_Grava_mConsumo(iD_Produto, ID_Material, ID_Material_Cru: Integer; Unidade, Tingimento, Tipo_Reg: String; Qtd_Consumo: Real);
  var
    vFlag: Boolean;
  begin
    vFlag := True;
    while vFlag do
    begin
      fDMCadProduto.mConsumo.insert;
      fDMCadProduto.mConsumoID_Produto.AsInteger   := ID_Produto;
      fDMCadProduto.mConsumoNome_Produto.AsString  := SQLLocate('PRODUTO','ID','NOME',IntToStr(iD_Produto));
      fDMCadProduto.mConsumoTipo_Reg_Prod.AsString := SQLLocate('PRODUTO','ID','TIPO_REG',IntToStr(iD_Produto));
      fDMCadProduto.mConsumoOrdem.AsString         := fDMCadProduto.mConsumoTipo_Reg_Prod.AsString;
      if fDMCadProduto.mConsumoOrdem.AsString = 'M' then
        fDMCadProduto.mConsumoOrdem.AsString := 'Z';
      fDMCadProduto.mConsumoFlag.AsInteger         := 1;
      fDMCadProduto.mConsumoID_Material.AsInteger  := ID_Material;
      fDMCadProduto.mConsumoNome_Material.AsString := SQLLocate('PRODUTO','ID','NOME',IntToStr(ID_Material));
      fDMCadProduto.mConsumoQtd_Consumo.AsFloat    := 0;
      fDMCadProduto.mConsumoUnidade.AsString       := Unidade;
      fDMCadProduto.mConsumoTingimento.AsString    := Tingimento;
      fDMCadProduto.mConsumoQtd_Consumo.AsFloat    := Qtd_Consumo;
      vFlag := False;
      if (Tipo_Reg = 'S') then
        fDMCadProduto.mConsumoID_Produto2.AsInteger := StrToIntDef(SQLLocate('PRODUTO_SEMI','ID','ID_MATERIAL1',IntToStr(iD_Produto)),0);
      fDMCadProduto.mConsumo.Post;
      if not vFlag then
      begin
        if not fDMCadProduto.mConsumo.Locate('ID_Produto;Flag',VarArrayOf([ID_Produto,0]),[locaseinsensitive]) then
        begin
          fDMCadProduto.mConsumo.Insert;
          fDMCadProduto.mConsumoID_Produto.AsInteger   := ID_Produto;
          fDMCadProduto.mConsumoNome_Produto.AsString  := SQLLocate('PRODUTO','ID','NOME',IntToStr(iD_Produto));
          fDMCadProduto.mConsumoTipo_Reg_Prod.AsString := SQLLocate('PRODUTO','ID','TIPO_REG',IntToStr(iD_Produto));
          fDMCadProduto.mConsumoFlag.AsInteger         := 0;
          fDMCadProduto.mConsumoOrdem.AsString         := fDMCadProduto.mConsumoTipo_Reg_Prod.AsString;
          if fDMCadProduto.mConsumoOrdem.AsString = 'M' then
            fDMCadProduto.mConsumoOrdem.AsString := 'Z';
          fDMCadProduto.mConsumo.Post;
        end;
      end;
      if (Tipo_Reg = 'M') and (ID_Material_Cru > 0) then
      begin
        ID_Produto  := ID_Material;
        ID_Material := ID_Material_Cru;
        ID_Material_Cru := 0;
        vFlag := True;
      end;
    end;
  end;

  procedure prc_SqlConsumo(ID_Produto: Integer);
  var
    sds: TSQLDataSet;
  begin
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'select C.ID, C.ID_MATERIAL, C.QTD_CONSUMO, C.UNIDADE, P.NOME NOME_PRODUTO, MAT.NOME NOME_MATERIAL, MAT.ID_MATERIAL_CRU, '
                         + 'C.TINGIMENTO, MAT.TIPO_REG '
                         + 'from PRODUTO_CONSUMO C '
                         + 'inner join PRODUTO P on C.ID = P.ID '
                         + 'inner join PRODUTO MAT on C.ID_MATERIAL = MAT.ID '
                         + 'where C.ID = :ID ';
      sds.ParamByName('ID').AsInteger := id_produto;
      sds.open;
      while not sds.Eof do
      begin
        prc_Grava_mConsumo(sds.FieldByName('ID').AsInteger,sds.FieldByName('ID_MATERIAL').AsInteger,
                           sds.FieldByName('ID_MATERIAL_CRU').AsInteger,sds.FieldByName('UNIDADE').AsString,
                           sds.FieldByName('TINGIMENTO').AsString,sds.FieldByName('TIPO_REG').AsString,
                           sds.FieldByName('QTD_CONSUMO').AsFloat);
        sds.Next;
      end;
    finally
      FreeAndNil(sds);
    end;
  end;

begin
  fDMCadProduto.mConsumo.EmptyDataSet;
  fDMCadProduto.mAuxCons.EmptyDataSet;
  fDMCadProduto.cdsProduto_Consumo.First;
  while not fDMCadProduto.cdsProduto_Consumo.Eof do
  begin
    prc_Grava_mConsumo(fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger,
                       fDMCadProduto.cdsProduto_ConsumoclIDMaterial_Cru.AsInteger,fDMCadProduto.cdsProduto_ConsumoUNIDADE.AsString,
                       fDMCadProduto.cdsProduto_ConsumoTINGIMENTO.AsString,fDMCadProduto.cdsProduto_ConsumoclTIPO_REG.AsString,
                       fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat);
    fDMCadProduto.cdsProduto_Consumo.Next;
  end;

  fDMCadProduto.mConsumo.First;
  while not fDMCadProduto.mConsumo.Eof do
  begin
    if fDMCadProduto.mConsumoID_Produto2.AsInteger > 0 then
      prc_Gravar_mAuxCons(fDMCadProduto.mConsumoID_Produto2.AsInteger,False);
    fDMCadProduto.mConsumo.Next;
  end;

  fDMCadProduto.mAuxCons.First;
  while not fDMCadProduto.mAuxCons.Eof do
  begin
    prc_SqlConsumo(fDMCadProduto.mAuxConsID.AsInteger);
    fDMCadProduto.mAuxCons.Next;
  end;
  fDMCadProduto.mConsumo.IndexFieldNames := 'ORDEM;FLAG;TIPO_REG_PROD;ID_PRODUTO';
end;

function fnc_Filial_STRet: Integer; 
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'select count(1) CONTADOR from FILIAL F where F.USA_ENVIO_ST_RET = ' + QuotedStr('S');
    sds.Open;
    Result := sds.FieldByName('CONTADOR').AsInteger;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Existe_Mov(ID_Produto, ID_MovEstoque: Integer): Boolean;
var
  sds: TSQLDataSet;
begin
  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR FROM estoque_mov E WHERE E.ID_PRODUTO = :ID_PRODUTO ';
    if ID_MovEstoque > 0 then
    begin
      sds.CommandText := sds.CommandText + ' AND E.ID <> :ID ';
      sds.ParamByName('ID').AsInteger := ID_MovEstoque;
    end;
    sds.ParamByName('ID_PRODUTO').AsInteger := ID_Produto;
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
      Result := True;
  finally
    FreeAndNil(sds);
  end;
end;

procedure prc_Carrega_Nome_Materiais(fDMConsProduto: TDMConsProduto);
begin  //preenche as variaveis do relatorio
  fDmConsProduto.frxReport1.Variables.Variables['Planta1'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_PLANTA1.AsString));
  fDmConsProduto.frxReport1.Variables.Variables['Planta2'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_PLANTA2.AsString));
  fDmConsProduto.frxReport1.Variables.Variables['PlEsqu'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_PLANTA_ESQUELETO.AsString));
  fDmConsProduto.frxReport1.Variables.Variables['RefCima'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_REFORCO_CIMA.AsString));
  fDmConsProduto.frxReport1.Variables.Variables['RefBaixo'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_REFORCO_BAIXO.AsString));
  fDmConsProduto.frxReport1.Variables.Variables['RefEsq'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_REF_ESQUELETO.AsString));
  fDmConsProduto.frxReport1.Variables.Variables['ChRefCima'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_CHANFRO_REF_CIMA.AsString));
  fDmConsProduto.frxReport1.Variables.Variables['ChRefBaixo'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_CHANFRO_REF_BAIXO.AsString));
  fDmConsProduto.frxReport1.Variables.Variables['RefInt1'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_REF_INTERM1.AsString));
  fDmConsProduto.frxReport1.Variables.Variables['RefInt2'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_REF_INTERM2.AsString));
  fDmConsProduto.frxReport1.Variables.Variables['Biqueira'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_BIQUEIRA.AsString));
  fDmConsProduto.frxReport1.Variables.Variables['MeiaPlanta'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_MEIA_PLANTA.AsString));
  fDmConsProduto.frxReport1.Variables.Variables['Esqueleto'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_ESQUELETO.AsString));
  fDmConsProduto.frxReport1.Variables.Variables['Alma'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_ALMA.AsString));
  fDmConsProduto.frxReport1.Variables.Variables['NavPlanta'] := QuotedStr(SQLLocate('PRODUTO','ID','NOME',fDmConsProduto.cdsProdutoPalmilhaID_NAVALHA_ENCAIXE.AsString));
end;

procedure prc_Executa_Procedure(Parametro,Nome : String; IDCampo: Integer);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.Close;
    sds.CommandType := ctStoredProc;
    sds.CommandText := Nome;
    if trim(Parametro) <> '' then
      sds.ParamByName(Parametro).AsInteger := IDCampo;
    sds.ExecSQL;
  finally
    FreeAndNil(sds);
  end;
end;

procedure prc_Controle_Ativo(fDMCadProduto: TDMCadProduto);
begin
  if not(fDMCadProduto.cdsProduto_Ativo.Active) or not(fDMCadProduto.cdsProduto_Ativo.State in [dsEdit, dsInsert]) then
  begin
    prc_Abrir_Ativo(fDMCadProduto,fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
    begin
      if fDMCadProduto.cdsProduto_Ativo.IsEmpty then
      begin
        fDMCadProduto.cdsProduto_Ativo.Insert;
        fDMCadProduto.cdsProduto_AtivoID.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
      end
      else
        fDMCadProduto.cdsProduto_Ativo.Edit;
    end;
  end;
end;

procedure prc_Controle_Veiculo(fDMCadProduto: TDMCadProduto);
begin
  if not(fDMCadProduto.cdsProduto_Veiculo.Active) or not(fDMCadProduto.cdsProduto_Veiculo.State in [dsEdit, dsInsert]) then
  begin
    prc_Abrir_Veiculo(fDMCadProduto,fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
    begin
      if fDMCadProduto.cdsProduto_Veiculo.IsEmpty then
      begin
        fDMCadProduto.cdsProduto_Veiculo.Insert;
        fDMCadProduto.cdsProduto_VeiculoID.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
      end
      else
        fDMCadProduto.cdsProduto_Veiculo.Edit;
    end;
  end;
end;

procedure prc_Controle_Ficha_Textil(fDMCadProduto: TDMCadProduto);
begin
  if not(fDMCadProduto.cdsProduto_Textil.Active) or not(fDMCadProduto.cdsProduto_Textil.State in [dsEdit, dsInsert])
    or (fDMCadProduto.cdsProduto_TextilID.AsInteger <> fDMCadProduto.cdsProdutoID.AsInteger) then
  begin
    prc_Abrir_Ficha_Textil(fDMCadProduto,fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
    begin
      if fDMCadProduto.cdsProduto_Textil.IsEmpty then
      begin
        fDMCadProduto.cdsProduto_Textil.Insert;
        fDMCadProduto.cdsProduto_TextilID.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
      end
      else
        fDMCadProduto.cdsProduto_Textil.Edit;
    end;
  end;
end;

procedure prc_Controle_Ficha_Tranc(fDMCadProduto: TDMCadProduto);
begin
  if not(fDMCadProduto.cdsProduto_Tranc.Active) or not(fDMCadProduto.cdsProduto_Tranc.State in [dsEdit, dsInsert])
    or (fDMCadProduto.cdsProduto_TrancID.AsInteger <> fDMCadProduto.cdsProdutoID.AsInteger) then
  begin
    prc_Abrir_Ficha_Tranc(fDMCadProduto,fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
    begin
      if fDMCadProduto.cdsProduto_Tranc.IsEmpty then
      begin
        fDMCadProduto.cdsProduto_Tranc.Insert;
        fDMCadProduto.cdsProduto_TrancID.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
      end
      else
        fDMCadProduto.cdsProduto_Tranc.Edit;
      if fDMCadProduto.cdsProdutoFUSO.AsInteger > 0 then
        fDMCadProduto.cdsProduto_TrancFUSO.AsInteger := fDMCadProduto.cdsProdutoFUSO.AsInteger;
      if fDMCadProduto.cdsProdutoQTD_CARGA.AsFloat > 0 then
        fDMCadProduto.cdsProduto_TrancMETROS_CARGA.AsFloat := fDMCadProduto.cdsProdutoQTD_CARGA.AsFloat;
    end;
  end;
end;

procedure prc_Controle_Serie(fDMCadProduto: TDMCadProduto);
begin
  if not(fDMCadProduto.cdsProduto_Serie.Active) or not(fDMCadProduto.cdsProduto_Serie.State in [dsEdit, dsInsert]) then
    prc_Abrir_Serie(fDMCadProduto,fDMCadProduto.cdsProdutoID.AsInteger);
end;

procedure prc_Controle_Balanca(fDMCadProduto: TDMCadProduto);
begin
  if not(fDMCadProduto.cdsProduto_Balanca.Active) or not(fDMCadProduto.cdsProduto_Balanca.State in [dsEdit, dsInsert]) then
  begin
    prc_Abrir_Balanca(fDMCadProduto,fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
    begin
      if fDMCadProduto.cdsProduto_Balanca.IsEmpty then
      begin
        fDMCadProduto.cdsProduto_Balanca.Insert;
        fDMCadProduto.cdsProduto_BalancaID.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
      end
      else
        fDMCadProduto.cdsProduto_Balanca.Edit;
    end;
  end;
end;

function fnc_Verificar_Tipo(fDMCadProduto: TDMCadProduto): Boolean;
begin
  Result := True;
  if TParametros.Busca('CONT_TIPO_PROD','PARAMETROS_PROD') = 'S' then
  begin
    if (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M') then
    begin
      if (fDMCadProduto.cdsProduto_Cor.Active) and not(fDMCadProduto.cdsProduto_Cor.IsEmpty) then
        Result := False;
    end
    else
    if (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S') then
    begin
      if (fDMCadProduto.cdsProduto_Comb.Active) and not(fDMCadProduto.cdsProduto_Comb.IsEmpty) then
        Result := False
      else
      if (fDMCadProduto.cdsProduto_Atelier.Active) and not(fDMCadProduto.cdsProduto_Atelier.IsEmpty) then
        Result := False
      else
      if (fDMCadProduto.cdsProduto_Consumo.Active) and not(fDMCadProduto.cdsProduto_Consumo.IsEmpty) then
        Result := False
      else
      if (fDMCadProduto.cdsProduto_Emb.Active) and not(fDMCadProduto.cdsProduto_Emb.IsEmpty) then
        Result := False
      else
      if fDMCadProduto.cdsProdutoID_LINHA.AsInteger > 0 then
        Result := False;
    end;
  end;
end;

procedure prc_Gerar_Ref_Estruturada(fDMCadProduto: TDMCadProduto);
var
  vRefAux: String;
  sds: TSQLDataSet;
  i: Integer;
begin
  if trim(TParametros.Busca('GERAR_REF_GRUPO','PARAMETROS_PROD')) <> 'S' then
    exit;
  if StrToIntDef(TParametros.Busca('QTD_DIGITOS_REF','PARAMETROS_PROD'),0) <= 0 then
  begin
    MessageDlg('*** Quantidade de dígitos da referência não informada nos Parâmetros na aba Produtos!', mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadProduto.cdsGrupoID.AsInteger <> fDMCadProduto.cdsProdutoID_GRUPO.AsInteger then
    fDMCadProduto.cdsGrupo.Locate('ID',fDMCadProduto.cdsProdutoID_GRUPO.AsInteger,([Locaseinsensitive]));
  if not(fDMCadProduto.cdsGrupoUNIDADE.IsNull) and (trim(fDMCadProduto.cdsProdutoUNIDADE.AsString) = '')  then
    fDMCadProduto.cdsProdutoUNIDADE.AsString := fDMCadProduto.cdsGrupoUNIDADE.AsString;
  if (fDMCadProduto.cdsGrupoID_NCM.AsInteger > 0) then
    fDMCadProduto.cdsProdutoID_NCM.AsInteger := fDMCadProduto.cdsGrupoID_NCM.AsInteger;
  vRefAux := fDMCadProduto.cdsGrupoCODIGO.AsString + '.';
  i := Length(fDMCadProduto.cdsGrupoCODIGO.AsString) + 2;
  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT max( SUBSTRING(REFERENCIA FROM ' + IntToStr(i) + ' FOR ' + TParametros.Busca('QTD_DIGITOS_REF','PARAMETROS_PROD') + ')) SEQ '
                       + ' FROM PRODUTO WHERE ID_GRUPO = :ID_GRUPO';
    sds.ParamByName('ID_GRUPO').AsInteger := fDMCadProduto.cdsProdutoID_GRUPO.AsInteger;
    sds.Open;
    if sds.FieldByName('SEQ').IsNull then
      i := 1
    else
    if trim(sds.FieldByName('SEQ').AsString) = '' then
      i := 1
    else
      i := sds.FieldByName('SEQ').AsInteger + 1;
    vRefAux := vRefAux + Monta_Numero(IntToStr(i),StrToIntDef(TParametros.Busca('QTD_DIGITOS_REF','PARAMETROS_PROD'),0));
  finally
    FreeAndNil(sds);
  end;
  fDMCadProduto.cdsProdutoREFERENCIA.AsString := vRefAux;
end;

function fnc_Duplicidade_Mat(ID_Prod: Integer): String;
var
  sds: TSQLDataSet;
begin
  Result := '';
  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT AUX.* '
                       + ' FROM ( SELECT COUNT(1) CONTADOR , P.id_material, P.id_posicao, MAT.NOME NOME_MATERIAL, '
                       + '        PS.NOME NOME_POSICAO '
                       + '         FROM PRODUTO_CONSUMO P '
                       + '         INNER JOIN PRODUTO MAT '
                       + '         ON P.id_material = MAT.ID '
                       + '         INNER JOIN POSICAO PS '
                       + '         ON P.id_posicao = PS.ID '
                       + '         WHERE P.ID = :ID '
                       + '         GROUP BY P.id_material, P.id_posicao, MAT.NOME, PS.NOME ) AUX '
                       + ' WHERE CONTADOR > 1 ';
    sds.ParamByName('ID').AsInteger := ID_Prod;
    sds.Open;
    if not sds.IsEmpty then
      Result := 'Material: ' + sds.FieldByName('NOME_MATERIAL').AsString + ' - Posição: ' + sds.FieldByName('NOME_POSICAO').AsString;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Verifica_Lote(ID: Integer; Num_Lote: String): Boolean;
var
  sds: TSQLDataSet;
begin
  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR FROM ESTOQUE_MOV E '
                       + 'WHERE E.ID_PRODUTO = ' + IntToStr(ID)
                       + ' AND E.NUM_LOTE_CONTROLE = ' + QuotedStr(Num_Lote);
    sds.Open;
    Result := sds.FieldByName('CONTADOR').AsInteger > 0;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Busca_Semi(fDMCadProduto: TDMCadProduto ): Integer;
begin
  Result := 0;
  fDMCadProduto.cdsProduto_Consumo.First;
  while not fDMCadProduto.cdsProduto_Consumo.Eof do
  begin
    if fDMCadProduto.cdsProduto_ConsumoclTIPO_REG.AsString = 'S' then
    begin
      Result := fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger;
      fDMCadProduto.cdsProduto_Consumo.Last;
    end;
    fDMCadProduto.cdsProduto_Consumo.Next;
  end;
end;

procedure prc_Verificar_Cor_Comb(ID: Integer);
var
  sds: TSQLDataSet;
  vOBS: String;
begin
  vOBS := '';
  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR, PC.NOME FROM PRODUTO_COMB_MAT PMAT '
                       + 'INNER JOIN PRODUTO_COMB PC ON PMAT.ID = PC.ID '
                       + 'LEFT JOIN PRODUTO M ON PMAT.ID_MATERIAL = M.ID '
                       + 'WHERE PMAT.ID = ' + IntToStr(ID)
                       + '  AND M.USA_COR = ' + QuotedStr('S')
                       + '  AND ((PMAT.ID_COR <= 0) or (PMAT.ID_COR IS NULL)) '
                       + ' GROUP BY PC.NOME ';
    sds.Open;
    while not sds.Eof do
    begin
      if sds.FieldByName('CONTADOR').AsInteger > 0 then
        vOBS := vOBS + #13 + sds.FieldByName('NOME').AsString;
      sds.Next;
    end;
  finally
    FreeAndNil(sds);
  end;
  if trim(vOBS) <> '' then
    MessageDlg('*** Combinações sem a COR no Material!' + #13 + vOBS , mtInformation, [mbOk], 0);
end;

function fnc_Script(AString: String): Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := AString;
    sds.Open;
    if sds.FieldByName('ID').AsInteger > 0 then
      MessageDlg('*** Este material está sendo usado no consumo do produto: ' + sds.FieldByName('ID').AsString, mtInformation, [mbOk], 0)
    else
      Result := True;
  finally
    FreeAndNil(sds);
  end;
end;

procedure prc_Referencia_Linha(fDMCadProduto: TDMCadProduto);
begin
  if fDMCadProduto.cdsLinhaID.AsInteger <> fDMCadProduto.cdsProdutoID_LINHA.AsInteger then
    fDMCadProduto.cdsLinha.Locate('ID',fDMCadProduto.cdsProdutoID_LINHA.AsInteger,([Locaseinsensitive]));
  if not(fDMCadProduto.cdsLinhaUNIDADE.IsNull) then
    fDMCadProduto.cdsProdutoUNIDADE.AsString := fDMCadProduto.cdsLinhaUNIDADE.AsString;
  if fDMCadProduto.cdsLinhaID_NCM.AsInteger > 0 then
    fDMCadProduto.cdsProdutoID_NCM.AsInteger := fDMCadProduto.cdsLinhaID_NCM.AsInteger;
  if TParametros.Busca('MOSTRAR_LINHA_PROD','PARAMETROS')  = 'S' then
    fDMCadProduto.cdsProdutoREFERENCIA.AsString := fDMCadProduto.cdsLinhaCODIGO.AsString + '.';
end;

function fnc_Referencia_Proxima_Seq(Tipo: String): Integer;
var
  sds: TSQLDataSet;
  vAux: Integer;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.Close;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' SELECT MAX(referencia_seq) REFERENCIA_SEQ FROM PRODUTO ' +
                         ' WHERE TIPO_REG = ' + QuotedStr(Tipo);
    sds.Open;
    vAux   := sds.FieldByName('REFERENCIA_SEQ').AsInteger;
    vAux   := vAux + 1;
    Result := vAux;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Verifica_Corrugado(ID: Integer): String;
var
  sds: TSQLDataSet;
begin
  Result := '';
  sds    := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT ID, NOME FROM PRODUTO WHERE ID = :ID ';
    sds.ParamByName('ID').AsInteger := ID;
    sds.Open;
    Result := sds.FieldByName('NOME').AsString;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Monta_Nome_Estrutura(ID: Integer): String;
var
  sds: TSQLDataSet;
begin
  Result := '';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'with recursive '
                       + ' GRUPO_REC AS ( '
                       + '  SELECT G.codigo, cast(nome as varchar(255)) nome, G.SUPERIOR, g.id, G.NOME NOME_FILHO '
                       + '    FROM GRUPO G'
                       + '  WHERE G.id = :CODIGO'
                       + '  UNION ALL'
                       + '  SELECT FILHO.CODIGO, filho.nome || ' + QuotedStr(' ** ') + ' || pai.nome, filho.superior, filho.id, FILHO.NOME NOME_FILHO'
                       + '    FROM GRUPO FILHO'
                       + '    JOIN GRUPO_REC PAI'
                       + '      ON PAI.superior = FILHO.id'
                       + '  )'
                       + ' SELECT FIRST 1 GG.* FROM GRUPO_REC GG'
                       + ' ORDER BY 1';
    sds.ParamByName('CODIGO').AsInteger := ID;
    sds.Open;
    Result := sds.FieldByName('nome').AsString;
  finally
    FreeAndNil(sds);
  end;
end;

procedure prc_Abrir_Produto_Comb(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Comb.Close;
  fDMCadProduto.sdsProduto_Comb.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Comb.Open;
  fDMCadProduto.cdsProduto_Comb_Mat.Close;
  fDMCadProduto.cdsProduto_Comb_Mat.Open;
end;

procedure prc_Abrir_Produto_Processo(fDMCadProduto: TDMCadProduto; ID: Integer);
                                                                                begin
  fDMCadProduto.cdsProdutoProcesso.Close;
  fDMCadProduto.sdsProdutoProcesso.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProdutoProcesso.Open;
end;

procedure prc_Abrir_Produto_GradeNum(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_GradeNum.Close;
  fDMCadProduto.sdsProduto_GradeNum.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_GradeNum.Open;
end;

procedure prc_Abrir_Ativo(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Ativo.Close;
  fDMCadProduto.sdsProduto_Ativo.CommandText := fDMCadProduto.ctAtivo;
  fDMCadProduto.sdsProduto_Ativo.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Ativo.Open;
end;

procedure prc_Abrir_Veiculo(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Veiculo.Close;
  fDMCadProduto.sdsProduto_Veiculo.CommandText := fDMCadProduto.ctVeiculo;
  fDMCadProduto.sdsProduto_Veiculo.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Veiculo.Open;
end;

procedure prc_Abrir_Balanca(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Balanca.Close;
  fDMCadProduto.sdsProduto_Balanca.CommandText := fDMCadProduto.ctBalanca;
  fDMCadProduto.sdsProduto_Balanca.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Balanca.Open;
end;

procedure prc_Abrir_Ficha_Textil(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Textil.Close;
  fDMCadProduto.sdsProduto_Textil.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Textil.Open;
end;

procedure prc_Abrir_Ficha_Tranc(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Tranc.Close;
  fDMCadProduto.sdsProduto_Tranc.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Tranc.Open;
end;

procedure prc_Abrir_Ficha_Textil_DP(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Textil_DP.Close;
  fDMCadProduto.sdsProduto_Textil_DP.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Textil_DP.Open;
end;

procedure prc_Abrir_Serie(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Serie.Close;
  fDMCadProduto.sdsProduto_Serie.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Serie.Open;
end;

procedure prc_Abrir_Matriz(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Matriz.Close;
  fDMCadProduto.sdsProduto_Matriz.CommandText := fDMCadProduto.ctMatriz;
  fDMCadProduto.sdsProduto_Matriz.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Matriz.Open;
end;

procedure prc_Abrir_Produto_Cor(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Cor.Close;
  fDMCadProduto.sdsProduto_Cor.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Cor.Open;
end;

procedure prc_Abrir_ProdFoto(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Foto.Close;
  fDMCadProduto.sdsProduto_Foto.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Foto.Open;
end;

procedure prc_Abrir_Produto_Emb(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Emb.Close;
  fDMCadProduto.sdsProduto_Emb.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Emb.Open;
end;

procedure prc_Abrir_Produto_Atelier(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Atelier.Close;
  fDMCadProduto.sdsProduto_Atelier.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Atelier.Open;
end;

procedure prc_Abrir_Produto_MatTam(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_MatTam.Close;
  fDMCadProduto.sdsProduto_MatTam.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_MatTam.Open;
end;

procedure prc_Abrir_Produto_Maq(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Maq.Close;
  fDMCadProduto.sdsProduto_Maq.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Maq.Open;
end;

procedure prc_Abrir_Comissao(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Comissao.Close;
  fDMCadProduto.sdsProduto_Comissao.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Comissao.Open;
end;

procedure prc_Abrir_Comissao_Vend(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Comissao_Vend.Close;
  fDMCadProduto.sdsProduto_Comissao_Vend.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Comissao_Vend.Open;
end;

procedure prc_Abrir_Produto_Lote(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Lote.Close;
  fDMCadProduto.sdsProduto_Lote.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Lote.Open;
end;

procedure prc_Abrir_Produto_CA(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_CA.Close;
  fDMCadProduto.sdsProduto_CA.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_CA.Open;
end;

procedure prc_Abrir_Produto_Carimbo(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsProduto_Carimbo.Close;
  fDMCadProduto.sdsProduto_Carimbo.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.cdsProduto_Carimbo.Open;
end;

procedure prc_Abrir_CBarra(fDMCadProduto: TDMCadProduto; ID: Integer);
begin
  fDMCadProduto.cdsCBarra2.Close;
  fDMCadProduto.sdsCBarra2.ParamByName('ID_PRODUTO').AsInteger := ID;
  fDMCadProduto.cdsCBarra2.Open;
end;

function fnc_busca_Estoque_Lote(ID_Produto: Integer; Num_Lote: String): Real;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'select cast(sum(QTD) as double precision)  QTD '
                       + 'from ESTOQUE_LOTE '
                       + 'where ID_PRODUTO = :ID_PRODUTO and '
                       + '      NUM_LOTE_CONTROLE = :NUM_LOTE_CONTROLE ';
    sds.ParamByName('ID_PRODUTO').AsInteger := ID_Produto;
    sds.ParamByName('NUM_LOTE_CONTROLE').AsString := Num_Lote;
    sds.Open;
    Result := StrToFloatDef(FormatFloat('0.0000',sds.FieldByName('QTD').AsFloat),0);
  finally
    FreeAndNil(sds);
  end;
end;

end.
