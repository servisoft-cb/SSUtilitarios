unit uUtilPadrao;

interface

uses
  Classes, SysUtils, Dialogs, Variants, Forms, ShellApi, Windows, StrUtils, SqlExpr, DmdDatabase, DBClient, Controls, SMDBGrid,
  DB, Printers, Messages, StdCtrls, ExtCtrls, MaskUtils, Graphics, acbrutil;

type
  TRetFncTotal = record   //usado para recebimento de carn� no SSCupomFiscal
  vlrTotal: Currency;
  vJurosDesc: Boolean;
end;
  type
    TRetorno_NLote = Record
      Num_Lote: Integer;
      Num_Ordem: Integer;
    end;

  function Monta_Numero(Campo: String; Tamanho: Integer): String;
  function TirarAcento(texto: string): string;
  function TirarAcento_Arq(texto: string): string;
  function Monta_Texto(Campo: String; Tamanho: Integer): String;
  procedure AbreArquivo(arquivo: string);
  function ValidaCNPJ(numCNPJ: string): Boolean;
  function ValidaCPF(numCPF: string): Boolean;
  function VerificaDuplicidade(vCnpj, vTipo: String; ID: Integer; ID_Filial: Integer = 0): String;
  function fnc_Encerrar_Tela(Tabela: TClientDataSet): Boolean;
  function Formatar_Campo(Campo: String; Tamanho: Integer): String;
  function fnc_Calcular_Hora(Hora_Ini, Hora_Fin: TDateTime): Real;
  function fnc_Calcular_Hora2(Hora_Ini, Hora_Fin, DataIni, DataFin: TDateTime): Real;

  function fnc_Data_Vencimento(Data: TDateTime): TDateTime;
  function fnc_Montar_Campo(Separador: String = ';'; vReg: String = ''): String;
  function fnc_Montar_Valor(Campo: String): String;
  function fnc_Retornar_Semana_Mes(Data: TDateTime): Integer;
  function Replace(Str, Ant, Novo: string): string;
  function Replace2(Str, Ant, Novo: string): string;
  function PegaTimeZone: string;
  function fnc_verifica_Arquivo(NomeArquivo, Le_Grava: String): String;
  function fnc_Calcula_DigitoEAN13(Seq_Maxima, Sequencia: Integer; Cod_Principal: String): Integer;
  function fnc_Busca_Estoque2(Filial, ID_PRODUTO, ID_Cor: Integer; Tamanho: String; ID_Local: Integer; ID_Estoque: Integer = 0; Num_Lote_Controle: String = ''): Real;
  function fnc_Busca_Estoque_Localizacao(Filial, ID_PRODUTO, ID_Cor: Integer; Localizacao: String; ID_Estoque: Integer): Real;
  function fnc_Verificar_Local(Usa_Local_Estoque: String): Integer;
  function fnc_Verificar_Local_Ped(Usa_Local_Estoque: String): Integer;
  function fnc_Buscar_Estoque(CodProduto, ID_Local_Estoque, ID_Cor, Filial: Integer; Usa_Reserva: String = 'N'): Real;
  //function fnc_Buscar_Pedido_Res(CodProduto, ID_Cor, Filial: Integer): Real; //Fepam vai usar
  function fnc_Buscar_Estoque_Res(CodProduto, ID_Cor, Filial: Integer): Real; //Fepam vai usar

  function fnc_HorarioVerao: Boolean;
  
  function fnc_Buscar_Comissao_Prod(ID_Produto, ID_Cliente, ID_Vendedor: Integer): Real;
  procedure prc_le_Grid(Grid: TSMDBGrid; Form, Caminho: string);
  procedure prc_Grava_Grid(Grid: TSMDBGrid; Form, Caminho: string);
  function fnc_Busca_Metas(Ano, Mes, ID_Vendedor: Integer): Real;
  function fnc_Busca_Vendas(Ano, Mes, ID_Vendedor: Integer): Real;
  function fnc_Verifica_Usa_NFeConfig: Boolean;
  function fnc_Verifica_Numero(Campo: String): Boolean;
  function fnc_Verifica_Data(Campo: String): Boolean;
  function fnc_Retorna_Qtd_UConv(ID_Produto: Integer; Unidade_Conv: String): Real;

  function fnc_Regra_Empresa_CFOP(Pessoa_Cliente, Zona_Franca, Subst_Tributaria, Tipo_Produto, Tipo_Empresa, Tipo_Cliente, UF_Cliente: String;
                                  ID_Operacao: Integer; Finalidade: String; Cabecalho: Boolean = False): Integer;
  function fnc_Regra_Empresa_Triangular(Pessoa_Cliente, Tipo_Empresa, Tipo_Cliente, UF_Cliente: String; ID_Operacao: Integer): Integer;

  function fnc_Existe_Prod_Lote(ID: Integer): Boolean;

  procedure prc_ShellExecute(MSG: String);

  procedure prc_Escolhe_Filial;
  //procedure prc_AbreGaveta(vModelo: Word);
  procedure prc_AbreGaveta();
  procedure SetDefaultPrinter(PrinterName: String);
  function DefaultPrinter: String;
  function fnc_Busca_Nome_Filial: String;
  procedure prc_Preencher_Excel(planilha: Variant; vDados: TDataSource);
  procedure prc_Preencher_Excel2(planilha: Variant;  vDados: TDataSource; Grid :TSMDBGrid);
  procedure prc_Preencher_CSV(vDados: TDataSource; Grid :TSMDBGrid; vNomeArq: String);

  function fnc_Max_Codigo(Tabela,Campo: String):Integer;

  function fnc_Ajusta_DtVencimento(Dia_Vecto,Dia1,Dia2,QDias_MPag: Integer; DtVecto: TDateTime): TDateTime;

  function fnc_Busca_CodProduto_Cliente(ID_Produto, ID_Fornecedor, ID_Cor: Integer; Tamanho, Tamanho_Cli: String): String;
  function fnc_Busca_Tam_Material(ID_Produto: Integer; Tamanho: String): String; 
  function fnc_Busca_Tam_Material2(ID_Produto, ID_GRADE_PROD: Integer; Tamanho: String): String; // pesquisa pelo produto_mattam

  function fnc_Verifica_Tipo_Lote: String;

  Function fnc_Gravar_CProd_ANP(Codigo, Descricao: String): Integer;

  function fnc_Converte_Horas(Hora: Real): Real;
  function fnc_Converte_Min_Dec(Hora: Real): Real;
  //function fnc_Soma_Data_Hora(Data: TDateTime; Hora1: TTime; Hora2, Total_HoraDia: Real): String;
  function fnc_Diferenca_Horas2(Inicio, Fim: TTime): Real;
  function fnc_Calcula_Intervalo(HrInicial,HrFinal: TTime): Real;

  function fnc_UF_Possui_ST(ID_NCM: Integer; UF: String): String;  

  procedure prc_Soma_Data_Hora_Res(Data: TDateTime; Hora1: TTime; Hora2, Total_HoraDia: Real);

  function CharEspeciais(Texto:String):String;
  function  SQLLocate(Tabela, CampoProcura, CampoRetorno, ValorFind: string): string; overload;
  function  SQLLocate(Tabela, CampoProcura, CampoProcura2, CampoRetorno, ValorFind, ValorFind2: string): string; overload;

  function fnc_Estoque_Tipo_Mat(ID_Produto: Integer; Tipo_ES: string): string;  //E= Entrada  S= Saida

  function fnc_Cliente_Fil_Fat(ID_Cliente , ID_Filial: Integer): Boolean;

  function fnc_CNPJCFP_FilialNFeConfig: String;

  function fnc_Vendedor_Desc_Com(ID: Integer): Boolean;
  function fnc_Somar_Edit(Valores: string): Double;
  function fnc_Verificar_CFOP_Config(ID_CFOP, ID_CSTICMS: Integer): Boolean;

  function fnc_existe_Drawback(ID_Cliente, ID_Produto: Integer): String;

  //procedure prc_Enviar_Email_Proc(MSG: String);

  function Criptografar(ABase: integer; AChave, AValue: string): string;
  { Criptografa o valor informado
    - Par�metros -
    ABase  -> N�mero da base utilizada para gerar o serial
    AChave -> Chave utilizada para gerar o serial
    AValue -> Valor que ser criptografado
  }

  function Descriptografar(ABase: integer; AChave, AValue: string): string;
  { Descriptografa o valor informado
    - Par�metros -
    ABase  -> N�mero da base utilizada para gerar o serial
    AChave -> Chave utilizada para gerar o serial
    AValue -> Valor que ser descriptografado
  }
  function GerarSerial(ABase: Integer; AChave: string): string;
  { Gera serial
    - Par�metros -
    ABase  -> N�mero da base utilizada para gerar o serial
    AChave -> Chave utilizada para gerar o serial
  }
  procedure addLog(Erro: string; Arquivo: string = '');
  procedure prc_Form_Aguarde(Form: TForm); overload;
  procedure prc_Form_Aguarde(Form: TForm; Mensagem: String); overload;

  function fnc_Selecionar_Filial(ID_Filial: Integer = 0): Integer;

  function fnc_Existe_CBenef(Codigo: String): Boolean;
  function WinExecAndWait32(FileName: string; Visibility: Integer; Parametro: String): Longword;

  function fnc_Busca_Estoque_Data(Filial, ID_Local, ID_Produto, ID_Cor: Integer; Tamanho: String; Data: TDateTime): Real;
  procedure Informa(Texto:string) ;

  function fnc_Cliente_Estoque(ID_Pedido: Integer): String;

  function FormatarTelefone(Telefone: String):String;
  function Preenche(STRI, FloodStr:String; TAM:Integer; JUST: Integer):String ;
  function FormaCNPJ(aValue: String): String;
  function DeletaString(aValue, Caracter: String): String;
  function fnc_Qtd_Nota_Dif_OS(NumNota, Serie, ID_Cliente: Integer): Boolean;
  function fnc_Montar_CNPJ(CNPJ: String): String;
  function fnc_Montar_CPF(CPF: String): String;
  procedure prc_Atualiza_Sequencial(Tabela, Campo_ID: String; NumRegistro: Integer );
  procedure prc_Controla_Gravacao(Tabela: String);
  function fnc_Verifica_Inf_Finalidade_OK(Finalidade: String; Tipo_Consumidor: Integer): Boolean;
  function fnc_Qtd_Reserva_Pedido(ID_Pedido, Item_Pedido: Integer): Real;
  function fnc_Buscar_Filial: Integer;
  function fnc_utiliza_App: Boolean;
  function fnc_Cor_Habilita(Habilitado: Boolean): TColor;
  procedure prc_Abrir_NFe_Site(Chave: String);
  function fnc_Controle_Data(Campo: String; iFilial: Integer) : TDate;
  function fnc_Proxima_Seq_Duplicata : Integer;
  function fnc_Proxima_Seq_Pedido : Integer;
  function fnc_Proxima_NLote : TRetorno_NLote;
  function fnc_Sql_Balanco_Est(Selecionados, Campo: String) : String;
  function decimais_prvenda : String;

  function fnc_pedido_item_faturado(ID, Item: Integer) : Boolean;
  function Formatar_NumeroNFse(aValue: String; aInt : Integer): String; overload;
  function Formatar_NumeroNFse(aValue: String; aFormat: String): String; overload;
  function ChaveAcessoNFSe(AUF: Integer; const ACNPJ: String; ASerie: String; ANumero, ACodigo: Integer;
                        AModelo: Integer=56): String;
  function VerificaErroNFSe(AValue : String; FCodigo : Integer) : Boolean;


var
  Enter,Esc,F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,Q: Word;
  vCodProduto_Pos: Integer;
  vCodPessoa_Pos: Integer;
  vCodProcesso_Pos: Integer;
  vNum_Pedido_Pos: Integer;
  vReferencia_Pos: String;
  vID_ContaOrcamento_Pos: Integer;
  vID_ContaOrcamento_Sup_Pos: Integer;
  vTipo_RD_Pos: String; //Receita ou Despesa das contas de or�amento
  vID_Plano_Contas_Pos: Integer;
  vFilial, vFilial_Destino: Integer;
  vFilial_Nome: String;
  vEmail_Fortes, vEmail_Assunto_Fortes: String;
  vEmail_Fortes_Corpo: String;
  vTipo_Config_Email: Integer;
  vID_Nota: Integer; //Esse campo serve para marcar o ID da nota fiscal, esta sendo usado na importa��o do XML.
  vImportar_NotaSaida: Boolean = False;
  vTipo_Baixa_Ped: String; //FAT=Faturar  COM=Compras  PRO=Produ��o
  vTipo_Pedido: String; //P= Pedido  C= Compras
  vPreco_Pos: Real;
  vNum_Lote_Pos: String;
  vRegistro_CSV: String;
  vRegistro_CSV2: String;
  vRotulo: Boolean;
  vSenha: String;
  vID_Cidade_Pos: Integer;
  vID_Pais_Pos: Integer;
  vUsuario: String;
  vTerminal: Integer; //terminal PDV Cupom
  vPorta: String;
  vModeloImpressora: string;
  vLocalEstoque: Integer; //para Cupom fiscal
  vBalanca: String;
  vPortaBalanca: String;
  vVelocidade: String;
  vUnidade_Pos: String;
  vQtd_Pacote_Pos: Real;
  vMSgNotificacao: String;
  vHrEmissaoNFe: TDateTime;
  vUsa_Cor_Pos, vUsa_Preco_Cor_Pos: String;
  vExcluir_Cupom: Boolean = False;
  vCodCombinacao_Pos: Integer;
  vNumOrd_Pos: Integer;
  vNumRemessa_Pos: String;
  vImpCliente_RF: String; //R= Imprime Raz�o Social   F= Imprime Fantasia
  vImpPreco_Etiqueta: Boolean;
  viD_EnqIPI_Pos: Integer;
  vID_Ponto_Pos: Integer;
  vCodCest_Pos: String;
  vRefazer_Cons: Boolean;
  vTipo_Imp_Rotulo: String;//T=Por Tamanho
  vNum_OS_Pos: Integer;
  vID_Fechamento_Pos: Integer;
  vNome_Pos: String;
  vVlr_Pos: Real;
  vID_Atividade_Pos: Integer;
  vId_Vendedor: Integer;
  vImpressora_Padrao: String;
  vUsaGaveta: Boolean;
  vPreco_Venda_Rec_XML_Pos: Real;
  vPreco_Custo_Rec_XML_Pos: Real;
  vID_Centro_Custo: Integer;
  vNUM_Ordem_Sel: String;
  vID_Cor_Pos: Integer;
  vNum_Pedido_Vend: Integer;
  vNum_Orc_Sel: Integer;
  vProcesso_Parcial: String; //E=Encerrar    G=Gerar Novo registro no Baixa_Processo     C=Cancelar e retornar
  vItem_Ped_Pos: Integer;
  vCodBarra_Pos: String;
  vTipo_Etiqueta: String; //ROT=Rotulo
  vTamanho_Pos: String;
  vSelPesquisa: String;
  vSelCentroCusto: String;
  vDiaAdicional: Integer;
  vDtHora_Res: String;
  vPrimeira_Hora: TTime;
  vPrimeira_Data: TDate;
  vDocumentoClienteVenda: String; //Cupom - SSNFCe
  vCpfOK: Boolean; //Cupom - SSNFCe
  vCod_CBenef: String;
  vConfirma_Fechamento: Boolean;
  vMargemSuperior: Double;
  vMargemInferior: Double;
  vMargemEsquerda: Double;
  vMargemDireita: Double;
  vLarguraBobina: Integer;
  vID_Cupom_Pos: Integer;
  vSerie_Sel: String;
  vTipo_Dig_Cupom: String;
  vID_ANP_Pos: Integer;
  vEndereco_Arq: String;
  vQtd_Nota_OS: Real;
  vNotaGerada_XML: Boolean;
  vEtiqueta_Mat_Est_Pos: Integer;
  vDtValidade: String; //data at� quando o sistema est� liberado

implementation

uses DateUtils, JvSerialMaker, JvXorCipher, JvComponent, JvVigenereCipher, IdCoder, IdCoder3to4, IdCoderMIME, IdBaseComponent,
  Math, DBGrids, DmdDatabase_NFeBD, UEscolhe_Filial, UInformeEndereco;

function fnc_verifica_Arquivo(NomeArquivo, Le_Grava: String): String;
begin
  if copy(NomeArquivo,1,1) = '"' then
    delete(NomeArquivo,1,1);
  if copy(NomeArquivo,Length(NomeArquivo),1) = '"' then
    delete(NomeArquivo,Length(NomeArquivo),1);
  if (Le_Grava = 'G') and (copy(NomeArquivo,Length(NomeArquivo),1) = '\') then
    delete(NomeArquivo,Length(NomeArquivo),1);
  Result := NomeArquivo;
end;

function Replace(Str, Ant, Novo: string): string;
var
  iPos: Integer;
begin
  while Pos(Ant, Str) > 0 do
  begin
    iPos := Pos(Ant, Str);
    Str  := copy(Str, 1, iPos - 1) + Novo + copy(Str, iPos + 1, Length(Str) - iPos);
  end;
  Result := Str;
end;

function Replace2(Str, Ant, Novo: string): string;
var
  iPos: Integer;
begin
  while Posex(Ant, Str) > 0 do
  begin
    iPos := Posex(Ant, Str);
    delete(str,ipos,Length(ant));
    Str  := copy(Str, 1, iPos - 1) + Novo + copy(Str, iPos + 1, Length(Str) - iPos);
  end;
  Result := Str;
end;

function Monta_Numero(Campo: String; Tamanho: Integer): String;
var
  texto2: String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

function TirarAcento(Texto: string): string;
var
  i: Integer;
begin
  //Texto := Trim(AnsiUpperCase(Texto));
  for i := 1 to Length(texto) do
  begin
    if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>��') = 0 then
    begin
      case Texto[i] of
        '�', '�', '�', '�', '�': Texto[i] := 'A';
        '�', '�', '�', '�', '�': Texto[i] := 'a';
        '�', '�', '�', '�': Texto[i] := 'E';
        '�', '�', '�', '�': Texto[i] := 'e';
        '�', '�', '�', '�': Texto[i] := 'I';
        '�', '�', '�', '�': Texto[i] := 'i';
        '�', '�', '�', '�', '�': Texto[i] := 'O';
        '�', '�', '�', '�', '�': Texto[i] := 'o';
        '�', '�', '�', '�': Texto[i] := 'U';
        '�', '�', '�', '�': Texto[i] := 'u';
        '�': Texto[i] := 'C';
        '�': Texto[i] := 'c';
        '�': Texto[i] := 'N';
        '�': Texto[i] := 'n';
        '�': Texto[i] := '�';
        '�': Texto[i] := '�';
      else
        Texto[i] := ' ';
      end;
    end;
  end;
  Texto := StringReplace(Texto, '&', 'e',[rfReplaceAll, rfIgnoreCase]);
  //Result := AnsiUpperCase(Texto);
  Result := Texto;
end;

function TirarAcento_arq(Texto: string): string;
var
  i: Integer;
begin
  Texto := Trim(AnsiUpperCase(Texto));
  for i := 1 to Length(texto) do
  begin
    if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''!@#$%^&()_-+={}[];,.') = 0 then
    begin
      case Texto[i] of
        '�', '�', '�', '�', '�': Texto[i] := 'A';
        '�', '�', '�', '�': Texto[i] := 'E';
        '�', '�', '�', '�': Texto[i] := 'I';
        '�', '�', '�', '�', '�': Texto[i] := 'O';
        '�', '�', '�', '�': Texto[i] := 'U';
        '�': Texto[i] := 'C';
        '�': Texto[i] := 'N';
      else
        Texto[i] := ' ';
      end;
    end;
  end;
  Texto := StringReplace(Texto, '&', 'e',[rfReplaceAll, rfIgnoreCase]);
  Result := AnsiUpperCase(Texto);
end;

procedure AbreArquivo(arquivo: string);
begin
  if FileExists(arquivo) then
  begin
    arquivo := '"' + arquivo + '"';
      //fonte: http://www.mail-archive.com/delphi-br@yahoogrupos.com.br/msg58385.html
      //declar no uses ShellApi
    ShellExecute(Application.Handle, 'open', PChar(arquivo), nil, nil, SW_SHOWMAXIMIZED);
  end
  else
    ShowMessage('Arquivo n�o encontrado!');
end;

function Monta_Texto(Campo: String; Tamanho: Integer): String;
var
  texto2: String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

function ValidaCNPJ(numCNPJ: string): Boolean;
var
  cnpj: string;
  dg1, dg2: integer;
  x, total: integer;
  ret: boolean;
begin
  ret  := False;
  cnpj := '0';
//Analisa os formatos
  if trim(copy(numCNPJ,1,2)) = '' then
    exit;
  if Length(numCNPJ) = 18 then
  begin
    if (Copy(numCNPJ,3,1) + Copy(numCNPJ,7,1) + Copy(numCNPJ,11,1) + Copy(numCNPJ,16,1) = '../-') then
    begin
      cnpj := Copy(numCNPJ,1,2) + Copy(numCNPJ,4,3) + Copy(numCNPJ,8,3) + Copy(numCNPJ,12,4) + Copy(numCNPJ,17,2);
      ret  := True;
    end;
    if (copy(cnpj,1,6) = '000000') or (trim(copy(cnpj,1,6)) = '') then
    begin
      Result := True;
      exit;
    end;
  end;

  cnpj := Monta_Numero(numCNPJ,0);

  if Length(cnpj) = 14 then
    ret  := True;

  //Verifica
  if ret then
  begin
    try
      //1� digito
      total := 0;
      for x := 1 to 12 do
      begin
        if x < 5 then
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (6 - x))
        else
           Inc(total, StrToInt(Copy(cnpj, x, 1)) * (14 - x));
      end;
      dg1 := 11 - (total mod 11);
      if dg1 > 9 then
        dg1 := 0;

      //2� digito
      total := 0;
      for x := 1 to 13 do
      begin
        if x < 6 then
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (7 - x))
        else
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (15 - x));
      end;

      dg2 := 11 - (total mod 11);
      if dg2 > 9 then
        dg2 := 0;
      //Valida��o final
      if (dg1 = StrToInt(Copy(cnpj, 13, 1))) and (dg2 = StrToInt(Copy(cnpj, 14, 1))) then
        ret := True
      else
        ret := False;
    except
      ret := False;
    end;
      //Inv�lidos
    case AnsiIndexStr(cnpj,['11111111111111','22222222222222','33333333333333','44444444444444',
                            '55555555555555','66666666666666','77777777777777','88888888888888','99999999999999']) of
      0..9: ret := False;
    end;
  end;
  ValidaCNPJ := ret;
end;

function ValidaCPF(numCPF: string): Boolean;
var
  cpf: string;
  x, total, dg1, dg2: Integer;
  ret: boolean;
begin
  ret := True;
  for x := 1 to Length(numCPF) do
    if not (numCPF[x] in ['0'..'9', '-', '.', ' ']) then
      ret := False;

  if ret then
  begin
    ret := True;
    cpf := '';
    for x:=1 to Length(numCPF) do
      if numCPF[x] in ['0'..'9'] then
        cpf := cpf + numCPF[x];
    if Length(cpf) <> 11 then
      ret := False;

    if ret then
    begin
      //1� d�gito
      total := 0;
      for x := 1 to 9 do
        total := total + (StrToInt(cpf[x]) * x);
      dg1 := total mod 11;
      if dg1 = 10 then
        dg1 := 0;

      //2� d�gito
      total := 0;
      for x := 1 to 8 do
        total := total + (StrToInt(cpf[x + 1]) * (x));
      total := total + (dg1 * 9);
      dg2 := total mod 11;
      if dg2 = 10 then
        dg2 := 0;

      //Valida��o final
      ret := False;
      if dg1 = StrToInt(cpf[10]) then
        if dg2 = StrToInt(cpf[11]) then
          ret := True;
      //Inv�lidos
      case AnsiIndexStr(cpf,['11111111111','22222222222','33333333333','44444444444',
                             '55555555555','66666666666','77777777777','88888888888','99999999999']) of
        0..9: ret := False;
      end;
    end
    else
    begin
    //Se n�o informado deixa passar
      if cpf = '' then
        ret := True;
    end;
  end;
  ValidaCPF := ret;
end;

function VerificaDuplicidade(vCnpj, vTipo: String; ID: Integer; ID_Filial: Integer = 0): String;
var
  sds: TSQLDataSet;
begin
  Result := '';
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  if vTipo = 'P' then
  begin
    sds.CommandText := 'SELECT CODIGO, NOME FROM PESSOA WHERE coalesce(ORGAO_PUBLICO,'+QuotedStr('')+') <> ' + QuotedStr('S') +
                       ' AND CNPJ_CPF = ' + QuotedStr(vCNPJ);
    if ID_Filial > 0 then
      sds.CommandText := sds.CommandText + ' AND FILIAL = ' + IntToStr(ID_Filial);
    sds.Open;
    if sds.FieldByName('CODIGO').AsInteger <> ID then
      if not sds.FieldByName('NOME').IsNull then
        Result := sds.FieldByName('NOME').AsString;
  end
  else
  if vTipo = 'F' then
  begin
    sds.CommandText := 'SELECT ID, NOME FROM FILIAL WHERE CNPJ_CPF = ' + QuotedStr(vCNPJ);
    sds.Open;
    if sds.FieldByName('ID').AsInteger <> ID then
      if not sds.FieldByName('NOME').IsNull then
        Result := sds.FieldByName('NOME').AsString;
  end;
  if vTipo = 'T' then
  begin
    sds.CommandText := 'SELECT CODIGO, NOME FROM PESSOA WHERE TP_TRANSPORTADORA <> ' + QuotedStr('S') + 'AND CNPJ_CPF = ' + QuotedStr(vCNPJ);
    sds.Open;
    if sds.FieldByName('CODIGO').AsInteger <> ID then
      if not sds.FieldByName('NOME').IsNull then
        Result := sds.FieldByName('NOME').AsString;
  end;
  FreeAndNil(sds);
end;

function fnc_Encerrar_Tela(Tabela: TClientDataSet): Boolean;
begin
  Result := True;
  if Tabela.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
      Result := False
    else
      Result := True;
  end;
end;

function Formatar_Campo(Campo: String; Tamanho: Integer): String;
var
  i: Integer;
  texto2: String;
  vAux: Integer;
begin
  Campo := Trim(Copy(Campo,1,Tamanho));
  if Tamanho <= 0 then
    vAux := Length(Campo)
  else
    vAux := Tamanho;
  Result := '';
  texto2 := Campo;
  for i := 1 to vAux - Length(texto2) do
    texto2 := texto2 + ' ';
  Result := Texto2;
end;

function fnc_Calcular_Hora(Hora_Ini, Hora_Fin: TDateTime): Real;
var
  vQtdHoras: Currency;
  vAux: Currency;
begin
  vQtdHoras := 0;
  if (Hora_Ini > 0) and (Hora_Fin > 0) then
  begin
    vQtdHoras := (Hora_Fin - Hora_Ini) * 24;
    vAux := vQtdHoras - Int(vQtdHoras);
    vAux := (vAux * 60) / 100;
    vQtdHoras := Int(vQtdHoras) + vAux;
  end;
  //Result := StrToFloat(FormatFloat('0.00', vQtdHoras));

  Result := (Hora_Fin - Hora_Ini) * 24;
end;

function fnc_Data_Vencimento(Data: TDateTime): TDateTime;
var
  vDataAux: TDate;
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    vDataAux := 0;
    while vDataAux <> Data do
    begin
      vDataAux := Data;
      if (DayOfWeek(Data) = 1) then //Domingo
        Data := Data + 1
      else
        if (DayOfWeek(Data) = 7) then //Sabado
          Data := Data + 2;

      sds.SQLConnection := dmDatabase.scoDados; //--
      sds.Close;
      sds.CommandText := 'SELECT DATA ' +
                         'FROM FERIADO  ' +
                         'WHERE DATA = ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Data));
      sds.Open;
      if not sds.IsEmpty then
        Data := Data + 1;
      sds.Close;
    end;
  finally
    begin
      Result := Data;
      FreeAndNil(sds);
    end;
  end;
end;

function fnc_Montar_Campo(Separador: String = ';'; vReg: String = ''): String;
var
  i, X: Integer;
  vTexto: String;
  vRegAux: String;
begin
  Result := '';
  if trim(vReg) = '' then
    vRegAux := vRegistro_CSV
  else
    vRegAux := vRegistro_CSV2;
  i := pos(Separador,vRegAux);
  if i = 0 then
    i := Length(vRegAux) + 1;
  Result := Copy(vRegAux,1,i-1);
  vTexto := Result;
  Delete(vRegAux,1,i);
  for x := 1 to Length(vTexto) do
  begin
    if Pos(vTexto[x],'''"') > 0 then
    begin
      vTexto[x] := ' ';
    end;
  end;
  if trim(copy(vTexto,1,1)) = '' then
    Delete(vTexto,1,1);
  if trim(copy(vTexto,Length(vTexto),1)) = '' then
    Delete(vTexto,Length(vTexto),1);
  Result := vTexto;
  if trim(vReg) = '' then
    vRegistro_CSV := vRegAux
  else
    vRegistro_CSV2 := vRegAux;
end;

function fnc_Montar_Valor(Campo: String): String;
var
  vTexto: String;
  i: Integer;
begin
  Result := '';
  vTexto := '';
  for i := 1 to Length(Campo) do
  begin
    if (copy(Campo,i,1) = '0')
      or (copy(Campo,i,1) = '1')
      or (copy(Campo,i,1) = '2')
      or (copy(Campo,i,1) = '3')
      or (copy(Campo,i,1) = '4')
      or (copy(Campo,i,1) = '5')
      or (copy(Campo,i,1) = '6')
      or (copy(Campo,i,1) = '7')
      or (copy(Campo,i,1) = '8')
      or (copy(Campo,i,1) = '9')
      or (copy(Campo,i,1) = ',')
      or (copy(Campo,i,1) = '.') then
    begin
      if (copy(Campo,i,1) = '.') then
        vTexto := vTexto + ','
      else
        vTexto := vTexto + copy(Campo,i,1);
    end;
  end;
  Result := vTexto;
end;

function fnc_Retornar_Semana_Mes(Data: TDateTime): Integer;
var
  vDia: Integer;
begin
  vDia := DayOf(Data);
  if (vDia >= 1) and (vDia <= 7) then
    Result := 1
  else
  if (vDia >= 8) and (vDia <= 14) then
    Result := 2
  else
  if (vDia >= 15) and (vDia <= 21) then
    Result := 3
  else
  if (vDia >= 22) and (vDia <= 28) then
    Result := 4
  else
  if (vDia >= 29) and (vDia <= 31) then
    Result := 5;
end;

function Criptografar(ABase: integer; AChave, AValue: string): string;
var
  Cipher: TJvVigenereCipher;
  Encoder: TIdEncoderMIME;
begin
  Cipher  := TJvVigenereCipher.Create(nil);
  Encoder := TIdEncoderMIME.Create(nil);
  try
    Cipher.Key := GerarSerial(ABase, AChave);
    Cipher.Decoded := AValue;
    Result := Encoder.Encode( Cipher.Encoded );
  finally
    FreeAndNil(Cipher);
    FreeAndNil(Encoder);
  end;
end;

function Descriptografar(ABase: integer; AChave, AValue: string): string;
var
  Cipher: TJvVigenereCipher;
  Decoder: TIdDecoderMIME;
begin
  Cipher  := TJvVigenereCipher.Create(nil);
  Decoder := TIdDecoderMIME.Create(nil);
  try
    Cipher.Key := GerarSerial(ABase, AChave);
    Cipher.Encoded := Decoder.DecodeToString( AValue );
    Result := Cipher.Decoded;
  finally
    FreeAndNil(Cipher);
    FreeAndNil(Decoder);
  end;
end;

function GerarSerial(ABase: Integer; AChave: string): string;
var
  SerialMaker: TJvSerialMaker;
begin
  SerialMaker := TJvSerialMaker.Create(nil);
  try
    Result := SerialMaker.GiveSerial(ABase, AChave);
  finally
    FreeAndNil(SerialMaker);
  end;
end;

function PegaTimeZone: string;
var
  TimeZone: TTimeZoneInformation;
begin
  GetTimeZoneInformation(TimeZone);
  Result := FormatFloat('00', TimeZone.Bias div -60) + ':00';
end;

function fnc_Calcula_DigitoEAN13(Seq_Maxima, Sequencia: Integer; Cod_Principal: String): Integer;
var
  vCodAux: String;
  i: Integer;
  vSoma: Integer;
  vSoma2: Integer;
  i2: Integer;
begin
  vSoma   := 0;
  vCodAux := IntToStr(Sequencia);
  i2      := Length(IntToStr(Seq_Maxima)) -  Length(vCodAux);
  for i := 1 to i2 do
    vCodAux := '0' + vCodAux;
  vCodAux := Cod_Principal + vCodAux;
  for i := 1 to 12 do
    begin
      if i mod 2 > 0 then  //Quando for impar multiplica por 1 se for par multiplica por 3
        vSoma := vSoma + (StrToInt(Copy(vCodAux,i,1)) * 1)
      else
        vSoma := vSoma + (StrToInt(Copy(vCodAux,i,1)) * 3);
    end;
  vSoma2 := vSoma div 10;
  vSoma2 := (vSoma2 + 1) * 10;
  vSoma  := vSoma2 - vSoma;
  if vSoma = 10 then
    Result := 0
  else
    Result := vSoma;
end;

function fnc_Busca_Estoque2(Filial, ID_PRODUTO, ID_Cor: Integer; Tamanho: String; ID_Local: Integer; ID_Estoque: Integer = 0; Num_Lote_Controle: String = ''): Real;
var
  sds: TSQLDataSet;
begin
  if ID_Cor <= 0 then
    ID_Cor := 0;
  if trim(Tamanho) = EmptyStr then
    Tamanho := '';
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  try
    //Ver aqui estoque Cleomar
    sds.CommandText := 'SELECT QTD FROM ESTOQUE_ATUAL ' +
                       'WHERE FILIAL = ' + IntToStr(Filial) +
                       ' AND ID_PRODUTO = ' + IntToStr(ID_PRODUTO) +
                       ' AND ID_COR = ' + IntToStr(ID_COR) +
                       ' AND TAMANHO = ' + QuotedStr(Tamanho);
    if ID_Local > 0 then
      sds.CommandText := sds.CommandText + ' AND ID_LOCAL_ESTOQUE = ' + IntToStr(ID_Local);
    if trim(Num_Lote_Controle) <> '' then
      sds.CommandText := sds.CommandText + ' AND NUM_LOTE_CONTROLE = ' + QuotedStr(Num_Lote_Controle);
    sds.Open;
    Result := StrToFloat(FormatFloat('0.0000',sds.FieldByName('QTD').AsFloat));
    if ID_Estoque > 0 then
    begin
      sds.Close;
      sds.CommandText := 'select e.qtd2 from estoque_mov e '
                       + ' where e.id = ' + IntToStr(ID_Estoque);
      sds.Open;
      if not sds.IsEmpty then
        Result := StrToFloat(FormatFloat('0.0000',Result - sds.FieldByName('QTD2').AsFloat));
    end;

  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Verificar_Local(Usa_Local_Estoque: String): Integer;
var
  sds: TSQLDataSet;
begin
  if Usa_Local_Estoque <> 'S' then
    Result := 1
  else
  begin
    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    try
      sds.CommandText := 'SELECT ID, COD_LOCAL, NOME, PRINCIPAL FROM LOCAL_ESTOQUE '
                       + 'WHERE PRINCIPAL = ' + QuotedStr('S')
                       + '  AND INATIVO = ' + QuotedStr('N');
      sds.Open;
      Result := sds.FieldByName('ID').AsInteger;
    finally
      FreeAndNil(sds);
    end;
  end;
  if Result <= 0 then
    MessageDlg('*** N�o existe um local do estoque marcado como principal!' , mtInformation, [mbOk], 0);
end;

function fnc_Verificar_Local_Ped(Usa_Local_Estoque: String): Integer;
var
  sds: TSQLDataSet;
begin
  if Usa_Local_Estoque <> 'S' then
    Result := 1
  else
  begin
    Result := 0;
    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    try
      sds.CommandText := 'SELECT ID, COD_LOCAL, NOME, PRINCIPAL_PEDIDO FROM LOCAL_ESTOQUE '
                       + 'WHERE PRINCIPAL_PEDIDO = ' + QuotedStr('S')
                       + '  AND INATIVO = ' + QuotedStr('N');
      sds.Open;
      Result := sds.FieldByName('ID').AsInteger;
    finally
      FreeAndNil(sds);
    end;
  end;
  if Result <= 0 then
    MessageDlg('*** N�o existe um local do estoque marcado como principal pedido!' , mtInformation, [mbOk], 0);
end;


function fnc_Buscar_Estoque(CodProduto, ID_Local_Estoque, ID_Cor, Filial: Integer; Usa_Reserva: String = 'N'): Real;
var
  sds, sds2: TSQLDataSet;
begin
  Result := StrToFloat(FormatFloat('0.0000',0));
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;

  sds2 := TSQLDataSet.Create(nil);
  sds2.SQLConnection := dmDatabase.scoDados;
  sds2.NoMetadata    := True;
  sds2.GetMetadata   := False;
  try
    sds2.Close;
    sds2.CommandText := 'select USA_ESTOQUE_GERAL_CAD from parametros_est';
    sds2.Open;
    if sds2.FieldByName('USA_ESTOQUE_GERAL_CAD').AsString = 'S' then
      Filial := 0;
    sds2.Close;
    sds2.CommandText := 'select USA_RESERVA_EST from parametros_ped';
    sds2.Open;
    if Usa_Reserva <> 'X' then
      Usa_Reserva := sds2.FieldByName('USA_RESERVA_EST').AsString;
    if (Filial = 0) then
      sds.CommandText := 'SELECT sum(QTD) QTD FROM ESTOQUE_ATUAL WHERE '
    else
    begin
      if sqlLocate('PARAMETROS','ID','USA_LOTE_CONTROLE','1') = 'S' then
        sds.CommandText := 'SELECT SUM(QTD) QTD FROM ESTOQUE_ATUAL WHERE FILIAL = :FILIAL AND '
      else
        sds.CommandText := 'SELECT QTD FROM ESTOQUE_ATUAL WHERE FILIAL = :FILIAL AND ';
    end;
    sds.CommandText := sds.CommandText  + ' ID_PRODUTO = :ID_PRODUTO ';
    if ID_Local_Estoque > 0 then
      sds.CommandText := sds.CommandText + ' AND ID_LOCAL_ESTOQUE = :ID_LOCAL_ESTOQUE ';
    if ID_Cor > 0 then
    begin
      sds.CommandText := sds.CommandText + ' AND ID_COR = :ID_COR ';
      sds.ParamByName('ID_COR').AsInteger := ID_Cor;
    end
    else
      sds.CommandText := sds.CommandText + ' AND (ID_COR = 0 or ID_COR is NULL) ';
    if Filial > 0 then
      sds.ParamByName('FILIAL').AsInteger         := Filial;
    sds.ParamByName('ID_PRODUTO').AsInteger       := CodProduto;
    if ID_Local_Estoque > 0 then
      sds.ParamByName('ID_LOCAL_ESTOQUE').AsInteger := ID_Local_Estoque;
    sds.Open;
    Result := StrToFloat(FormatFloat('0.0000',sds.FieldByName('QTD').AsFloat));

    if Usa_Reserva = 'S' then
      Result := StrToFloat(FormatFloat('0.0000',Result - fnc_Buscar_Estoque_Res(CodProduto, ID_Cor, Filial)));
      
  finally
    FreeAndNil(sds);
    FreeAndNil(sds2);
  end;
end;

function fnc_HorarioVerao: Boolean;
var
  T: TTimeZoneInformation;
begin
  Result := GetTimeZoneInformation(T) = TIME_ZONE_ID_DAYLIGHT;
end;

function fnc_Buscar_Comissao_Prod(ID_Produto, ID_Cliente, ID_Vendedor: Integer): Real;
var
  sds: TSQLDataSet;
begin

  Result := StrToFloat(FormatFloat('0.00',0));
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    if SQLLocate('PARAMETROS_COM','ID','USAR_PERC_SEMI','1') = 'S' then
    begin
      sds.CommandText := 'select SEMI.ID_MATERIAL1 from PRODUTO_SEMI SEMI where SEMI.ID = :ID ';
      sds.ParamByName('ID').AsInteger := ID_Produto;
      sds.Open;
      if sds.FieldByName('ID_MATERIAL1').AsInteger > 0 then
        ID_Produto := sds.FieldByName('ID_MATERIAL1').AsInteger;
      sds.Close;
    end;
    sds.CommandText := 'SELECT P.perc_comissao PERC_COMISSAO_PROD, '
                     + ' (SELECT PERC_COMISSAO PERC_COMISSAO_CLI FROM PRODUTO_COMISSAO '
                     + '   WHERE ID = P.ID  AND ID_CLIENTE = :ID_CLIENTE), '
                     + ' (SELECT V.PERC_COMISSAO PERC_COMISSAO_VEND FROM PRODUTO_COMISSAO_VEND V '
                     + '   where V.ID = P.ID  AND V.id_vendedor = :ID_VENDEDOR) '
                     + 'FROM PRODUTO P '
                     + 'WHERE P.ID = :ID_PRODUTO ';
    sds.ParamByName('ID_PRODUTO').AsInteger  := ID_Produto;
    sds.ParamByName('ID_CLIENTE').AsInteger  := ID_Cliente;
    sds.ParamByName('ID_VENDEDOR').AsInteger := ID_Vendedor;
    sds.Open;
    if not sds.IsEmpty then
    begin
      if StrToFloat(FormatFloat('0.00',sds.FieldByName('PERC_COMISSAO_CLI').AsFloat)) > 0 then
        Result := StrToFloat(FormatFloat('0.00',sds.FieldByName('PERC_COMISSAO_CLI').AsFloat))
      else
      if StrToFloat(FormatFloat('0.00',sds.FieldByName('PERC_COMISSAO_VEND').AsFloat)) > 0 then
        Result := StrToFloat(FormatFloat('0.00',sds.FieldByName('PERC_COMISSAO_VEND').AsFloat))
      else
      if StrToFloat(FormatFloat('0.00',sds.FieldByName('PERC_COMISSAO_PROD').AsFloat)) > 0 then
        Result := StrToFloat(FormatFloat('0.00',sds.FieldByName('PERC_COMISSAO_PROD').AsFloat))
    end;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

procedure prc_le_Grid(Grid: TSMDBGrid; Form, Caminho: string);
begin
  if trim(caminho) = '' then
    Caminho := sqlLocate('PARAMETROS_GERAL','ID','ENDGRIDS','1');
  if trim(Caminho) = '' then
    exit;
  if copy(Caminho,Length(Caminho),1) <> '\' then
    Caminho := Caminho + '\';
  try
    if fileExists(Caminho + Form + '_' + Grid.Name + '_' + vUsuario + '.txt') then
      Grid.Columns.LoadFromFile(Caminho + Form + '_' + Grid.Name + '_' + vUsuario + '.txt');
  except
  end;
end;

procedure prc_Grava_Grid(Grid: TSMDBGrid; Form, Caminho: string);
begin
  if trim(caminho) = '' then
    Caminho := sqlLocate('PARAMETROS_GERAL','ID','ENDGRIDS','1');
  if trim(Caminho) = '' then
    exit;
  try
    if not DirectoryExists(caminho) then
      CreateDirectory(PAnsiChar(caminho), nil);
    if copy(Caminho,Length(Caminho),1) <> '\' then
      Caminho := Caminho + '\';
    Grid.Columns.SaveToFile(Caminho + Form + '_' + Grid.Name + '_' + vUsuario + '.txt');
  except
    on e: Exception do
      //raise Exception.Create('Erro ao gravar o layout da Grid: ' + #13 + e.Message);
      MessageDlg('Erro ao gravar o layout da Grid: ' + #13 + e.Message, mtError, [mbOk], 0);
  end;
end;

function fnc_Busca_Metas(Ano, Mes, ID_Vendedor: Integer): Real;
var
  sds: TSQLDataSet;
  vAno_Mes: String;
begin
  vAno_Mes := IntToStr(Ano) + FormatFloat('00',Mes);
  sds      := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT MV.VLR_META FROM METAS_VENDEDOR MV '
                       + 'WHERE MV.ID_VENDEDOR = :ID_VENDEDOR '
                       + ' AND MV.ANO_MES = (SELECT MAX(MV1.ANO_MES) FROM METAS_VENDEDOR MV1 '
                       + ' WHERE MV1.ID_VENDEDOR = :ID_VENDEDOR '
                       + ' AND MV1.ANO_MES <= :ANO_MES) ';
    sds.ParamByName('ANO_MES').AsString      := vAno_Mes;
    sds.ParamByName('ID_Vendedor').AsInteger := ID_Vendedor;
    sds.Open;
    Result := StrToFloat(FormatFloat('0.00',sds.FieldByName('VLR_META').AsFloat));
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Busca_Vendas(Ano, Mes, ID_Vendedor: Integer): Real;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT VALOR ' +
                         'FROM METAS_ACUM ' +
                         'WHERE ANO = :Ano ' +
                         ' AND MES = :Mes ' +
                         ' AND ID_VENDEDOR = :ID_Vendedor';
    sds.ParamByName('Ano').AsInteger := Ano;
    sds.ParamByName('Mes').AsInteger := Mes;
    sds.ParamByName('ID_Vendedor').AsInteger := ID_Vendedor;
    sds.Open;
    Result := StrToFloat(FormatFloat('0.00',sds.FieldByName('VALOR').AsFloat));
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Verifica_Usa_NFeConfig: Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR FROM PARAMETROS P '
                        + 'WHERE (P.usa_nfce = ' + QuotedStr('S') + ') '
                        + ' or (P.usa_servico = ' + QuotedStr('S') + ') '
                        + ' or (P.nfeproducao = ' + QuotedStr('1') + ') ';
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
      Result := True;
  finally
    FreeAndNil(sds);
  end;
end;

procedure prc_ShellExecute(MSG: String);
begin
  //ShellExecute(Application.Handle, 'Close',pansichar(MSG) ,'', '',SW_HIDE);
  ShellExecute(Application.Handle, 'Open',pansichar(MSG) ,'', '',0);
end;

function fnc_Verifica_Numero(Campo: String): Boolean;
var
  Resultado: Boolean;
  I:Integer;
begin
  Resultado := true;
  For i:=1 to Length(campo) do
    begin
      {Verifica s� � uma letra}
      if campo[i] in ['0'..'9'] then
      else
        Resultado := false;
    end;
  Result := Resultado;
end;

procedure prc_Escolhe_Filial;
var
  ffrmEscolhe_Filial: TfrmEscolhe_Filial;
begin
  ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(frmEscolhe_Filial);
  try
    ffrmEscolhe_Filial.ShowModal;
  finally
    FreeAndNil(ffrmEscolhe_Filial);
  end;
  if vFilial <= 0 then
    ShowMessage('Filial n�o informada!');
end;

{procedure prc_AbreGaveta(vModelo: Word);
var
  vImpressora: TextFile;
begin
  vModelo := 1; //por hora, fixo
  AssignFile(vImpressora,vPorta);
  Rewrite(vImpressora);
  case vModelo of
    1: WriteLn(vImpressora,chr($1B)+'p'+chr($0)+chr($25)+chr($250));// ACIONA GAVETA //epson e elgin
    2: WriteLn(vImpressora,#27 + 'p'); //ACIONA GAVETA Daruma
    3: WriteLn(vImpressora,#027+'v'+#140); //ACIONA GAVETA Bematech
    4: WriteLn(vImpressora,#27 + '&' + '0' + #12 + #48); //ACIONA GAVETA //MECAF / DIEBOLD
    5: WriteLn(vImpressora,chr(27)+'&'+'0'+chr(12)+chr(48)); //Outra
  end;
//  CloseFile(vImpressora);
  System.Close(vImpressora);
end;}

procedure prc_AbreGaveta();
var
  vImpressora: TextFile;
  vCaminho: string;
begin
  vCaminho := ExtractFilePath(Application.ExeName) + 'GAVETA.EXE';
  if FileExists(vCaminho) then
     WinExec(Pchar(vCaminho),sw_Show);
end;

procedure SetDefaultPrinter(PrinterName: String);
//636 - Mudar Impressora padr�o pelo nome
//Declarar Windows e Messages
var
  I: Integer;
  Device: PChar;
  Driver: Pchar;
  Port: Pchar;
  HdeviceMode: Thandle;
  aPrinter: TPrinter;
begin
  Printer.PrinterIndex := -1;
  getmem(Device, 255);
  getmem(Driver, 255);
  getmem(Port, 255);
  aPrinter := TPrinter.create;
  for I := 0 to Printer.printers.Count-1 do
  begin
    if Printer.printers[i] = PrinterName then
    begin
      aPrinter.PrinterIndex := i;
      aPrinter.GetPrinter(Device,Driver,Port,HDeviceMode);
      StrCat(Device,',');
      StrCat(Device,Driver);
      StrCat(Device,Port);
      WriteProfileString('Windows','Device',Device);
      StrCopy(Device,'Windows');
      SendMessage(HWND_BROADCAST, WM_WININICHANGE,0, Longint(@Device));
    end;
  end;
  Freemem(Device, 255);
  Freemem(Driver, 255);
  Freemem(Port, 255);
  aPrinter.Free;
end;

function DefaultPrinter: String;
var
  aDevice: array[0..255] of char;
  aDriver: array[0..255] of char;
  aPort: array[0..255] of char;
  ahDMode: THandle;
begin
  Printer.GetPrinter(aDevice, aDriver, aPort, ahDMode);
  Result := aDevice;
end;

function fnc_Regra_Empresa_CFOP(Pessoa_Cliente, Zona_Franca, Subst_Tributaria, Tipo_Produto,
Tipo_Empresa, Tipo_Cliente, UF_Cliente: String; ID_Operacao: Integer; Finalidade: String; Cabecalho: Boolean = False): Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT R.ID_CFOP,'
                       + ' (SELECT IT.ID_CFOP ID_CFOP_ITEM FROM regra_empresa_itens IT '
                       + '  WHERE IT.ID = R.ID '
                       + '    AND IT.pessoa_cliente = :PESSOA_CLIENTE '
                       + '    AND IT.zona_franca = :ZONA_FRANCA '
                       + '    AND IT.subst_tributaria = :SUBST_TRIBUTARIA '
                       + '    AND IT.tipo_produto = :TIPO_PRODUTO) ID_CFOP_ITEM '
                       + 'FROM REGRA_EMPRESA R '
                       + 'WHERE R.ID_OPERACAO = :ID_OPERACAO '
                       + '  AND R.TIPO_EMPRESA = :TIPO_EMPRESA '
                       + '  AND R.TIPO_CLIENTE = :TIPO_CLIENTE '
                       + '  AND R.UF_CLIENTE = :UF_CLIENTE '
                       + '  AND R.FINALIDADE_COMPRADOR = :FINALIDADE_COMPRADOR';
    sds.ParamByName('PESSOA_CLIENTE').AsString := Pessoa_Cliente;
    sds.ParamByName('ZONA_FRANCA').AsString    := Zona_Franca;
    sds.ParamByName('SUBST_TRIBUTARIA').AsString := Subst_Tributaria;
    sds.ParamByName('TIPO_PRODUTO').AsString   := Tipo_Produto;
    sds.ParamByName('ID_OPERACAO').AsInteger   := ID_Operacao;
    sds.ParamByName('TIPO_EMPRESA').AsString   := Tipo_Empresa;
    sds.ParamByName('TIPO_CLIENTE').AsString   := Tipo_Cliente;
    sds.ParamByName('UF_CLIENTE').AsString     := UF_Cliente;
    sds.ParamByName('FINALIDADE_COMPRADOR').AsString := Finalidade;
    sds.Open;
    if Cabecalho then
    begin
      if sds.FieldByName('ID_CFOP').AsInteger > 0 then
        Result := sds.FieldByName('ID_CFOP').AsInteger;
    end
    else
    if sds.FieldByName('ID_CFOP_ITEM').AsInteger > 0 then
      Result := sds.FieldByName('ID_CFOP_ITEM').AsInteger
    else
    if sds.FieldByName('ID_CFOP').AsInteger > 0 then
      Result := sds.FieldByName('ID_CFOP').AsInteger;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Regra_Empresa_Triangular(Pessoa_Cliente, Tipo_Empresa, Tipo_Cliente, UF_Cliente: String; ID_Operacao: Integer): Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT R.ID_CFOP, '
                       + ' (SELECT IT.ID_CFOP ID_CFOP_ITEM FROM regra_empresa_itens IT '
                       + '   WHERE IT.ID = R.ID '
                       + '     AND IT.pessoa_cliente = :PESSOA_CLIENTE) ID_CFOP_ITEM '
                       + 'FROM REGRA_EMPRESA R '
                       + 'WHERE R.ID_OPERACAO = :ID_OPERACAO '
                       + '  AND R.TIPO_EMPRESA = :TIPO_EMPRESA '
                       + '  AND R.TIPO_CLIENTE = :TIPO_CLIENTE '
                       + '  AND R.UF_CLIENTE = :UF_CLIENTE ';
    sds.ParamByName('PESSOA_CLIENTE').AsString := Pessoa_Cliente;
    sds.ParamByName('ID_OPERACAO').AsInteger   := ID_Operacao;
    sds.ParamByName('TIPO_EMPRESA').AsString   := Tipo_Empresa;
    sds.ParamByName('TIPO_CLIENTE').AsString   := Tipo_Cliente;
    sds.ParamByName('UF_CLIENTE').AsString     := UF_Cliente;
    sds.Open;
    if sds.FieldByName('ID_CFOP_ITEM').AsInteger > 0 then
      Result := sds.FieldByName('ID_CFOP_ITEM').AsInteger
    else
    if sds.FieldByName('ID_CFOP').AsInteger > 0 then
      Result := sds.FieldByName('ID_CFOP').AsInteger;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Busca_Nome_Filial: String;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    sds.CommandText := 'SELECT NOME FROM FILIAL WHERE PRINCIPAL = ' + QuotedStr('S');
    sds.Open;
    Result := sds.FieldByName('NOME').AsString;
    vFilial_Nome := Result;
  finally
    FreeAndNil(sds);
  end;
end;

procedure prc_Preencher_Excel(planilha: Variant; vDados: TDataSource);
var
  linha, coluna: Integer;
  valorCampo: String;
  ColunaP: Integer;
  vTexto: String;
begin
  linha   := 1;
  ColunaP := 0;
  for coluna := 1 to vDados.DataSet.FieldCount do
  begin
    ColunaP := ColunaP + 1;
    valorcampo := vDados.DataSet.Fields[coluna - 1].DisplayLabel;
    planilha.cells[Linha, colunaP] := valorCampo;
    planilha.cells[Linha, colunaP].Font.bold := True; // Negrito
  end;
  vDados.DataSet.First;
  while not vDados.DataSet.Eof do
  begin
    linha := Linha + 1;
    ColunaP := 0;
    for coluna := 1 to vDados.DataSet.FieldCount do
    begin
      ColunaP := ColunaP + 1;
      vTexto := vDados.DataSet.Fields[coluna - 1].AsString;
      if trim(vTexto) <> '' then
        valorcampo := vDados.DataSet.Fields[coluna - 1].Value
      else
        valorcampo := '';
      if (FieldTypeNames[vDados.DataSet.Fields[coluna - 1].DataType] = 'Integer') then
      begin
        if trim(valorcampo) = '' then
          valorcampo := '0';
        planilha.Cells[linha, colunaP].NumberFormat := '#.##0_);(#.##0)';
        planilha.cells[linha, colunaP] := StrToFloat(valorCampo);
      end
      else
      if (FieldTypeNames[vDados.DataSet.Fields[coluna - 1].DataType] = 'Float') then
      begin
        if trim(valorcampo) = '' then
          valorcampo := '0';
        planilha.Cells[linha, colunaP].NumberFormat := '#.##0,00_);(#.##0,000##)';
        planilha.cells[linha, colunaP] := StrToFloat(valorCampo);
      end
      else
      if (FieldTypeNames[vDados.DataSet.Fields[coluna - 1].DataType] = 'Date') then
      begin
        if fnc_Verifica_Data(valorCampo) then //verfica se uma string � data
        begin
          try
            valorCampo := FormatDateTime('mm/dd/yyyy',StrToDate(valorCampo));
            planilha.Cells[linha, colunaP].NumberFormat := AnsiString('dd/mm/aaaa');
            planilha.cells[linha, colunaP] := valorCampo;
          except
//            vDados.DataSet.Next;
          end;
        end;
      end
      else
      begin
        planilha.Cells[linha, colunaP].NumberFormat := AnsiChar('@');;
        planilha.cells[linha, colunaP] := valorCampo;
      end;
    end;
    vDados.DataSet.Next;
  end;
end;

function fnc_Verifica_Data(Campo: String): Boolean; //verfica se uma string � data
begin
  campo := Monta_Numero(campo,8);
  Result := True;
  try
    Result := IsValidDate(StrToInt(Copy(Campo,7,4)),StrToInt(Copy(Campo,3,2)),StrToInt(Copy(Campo,1,2)));
  except
    Result := False;
  end;
end;

function fnc_Calcular_Hora2(Hora_Ini, Hora_Fin, DataIni, DataFin: TDateTime): Real;
var
  vTotalHoras: Currency;
  vHrFinalAux: TDateTime;
  vHrAux: TDateTime;
  vQtdDias, vAux: Currency;
begin
  if DataIni = DataFin then
    vTotalHoras := fnc_Calcular_Hora(hora_ini,hora_fin)
  else
  begin
    vQtdDias := DataFin - DataIni;
    vHrFinalAux  := StrToTime('23:59');
    vHrAux       := StrToTime('00:01');
    vTotalHoras  := fnc_Calcular_Hora(Hora_Ini,vHrFinalAux + vHrAux);
    vTotalHoras  := vTotalHoras + (Hora_Fin * 24);
    if vQtdDias > 1 then
    begin
      vAux        := 24 * (vQtdDias - 1);
      vTotalHoras := vTotalHoras + vAux;
    end;
  end;
  Result := vTotalHoras;
end;

function fnc_Busca_CodProduto_Cliente(ID_Produto, ID_Fornecedor, ID_Cor: Integer; Tamanho, Tamanho_Cli: String): String;
var
  sds: TSQLDataSet;
begin
  Result := '';
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;

  sds.CommandText := 'SELECT COD_MATERIAL_FORN FROM PRODUTO_FORN '
                   + ' WHERE ID = ' + IntToStr(ID_Produto)
                   + ' AND ID_FORNECEDOR = ' + IntToStr(ID_Fornecedor);
  if ID_Cor > 0 then
    sds.CommandText := sds.CommandText + ' AND ID_COr = ' + IntToStr(ID_COR)
  else
    sds.CommandText := sds.CommandText + ' AND ((ID_COR = 0) OR (ID_COR IS NULL)) ';
  if trim(Tamanho) <> '' then
    sds.CommandText := sds.CommandText + ' AND TAMANHO = ' + QuotedStr(Tamanho)
  else
    sds.CommandText := sds.CommandText + ' AND ((TAMANHO = ' + QuotedStr('') + ') OR (TAMANHO IS NULL)) ';
  if trim(Tamanho_Cli) <> '' then
    sds.CommandText := sds.CommandText + ' AND TAMANHO_CLIENTE = ' + QuotedStr(Tamanho_Cli)
  else
    sds.CommandText := sds.CommandText + ' AND ((TAMANHO_CLIENTE = ' + QuotedStr('') + ') OR (TAMANHO_CLIENTE IS NULL)) ';

  sds.Open;
  Result := sds.FieldByName('COD_MATERIAL_FORN').AsString;
end;

function fnc_Verifica_Tipo_Lote: String;
var
  sds: TSQLDataSet;
begin
  Result := '';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT EMPRESA_CALCADOS, (SELECT USA_REMESSA FROM PARAMETROS_LOTE) USA_REMESSA, '
                     + '(SELECT LOTE_PROCESSO FROM PARAMETROS_LOTE) LOTE_PROCESSO,'
                     + '(SELECT USA_LOTE_PEDIDO FROM PARAMETROS_LOTE) USA_LOTE_PEDIDO'
                     + ',(SELECT USA_LOTE_PED_SPROC FROM PARAMETROS_LOTE) USA_LOTE_PED_SPROC'
                     + ',(SELECT LOTE_CALCADO_NOVO FROM PARAMETROS_LOTE) LOTE_CALCADO_NOVO'
                     + ',(SELECT EMPRESA_CAMABOX FROM PARAMETROS) EMPRESA_CAMABOX'
                     + ' FROM PARAMETROS_GERAL ';
    sds.Open;
    if sds.FieldByName('USA_LOTE_PEDIDO').AsString = 'S' then
    begin
      Result := 'PED';
      if sds.FieldByName('USA_LOTE_PED_SPROC').AsString = 'S' then
        Result := 'PED2';
    end
    else
    if sds.FieldByName('LOTE_PROCESSO').AsString = 'S' then
      Result := 'P'
    else
    if sds.FieldByName('LOTE_PROCESSO').AsString = 'T' then
      Result := 'PT'
    else
    if sds.FieldByName('USA_REMESSA').AsString = 'S' then
      Result := 'R' //Bolsa
    else
    if sds.FieldByName('EMPRESA_CAMABOX').AsString = 'S' then
      Result := 'CBOX' //Cama Box
    else
    if sds.FieldByName('EMPRESA_CALCADOS').AsString = 'S' then
    begin
      if sds.FieldByName('LOTE_CALCADO_NOVO').AsString = 'S' then
        Result := 'C2'  //Lotus
      else
        Result := 'C'; //RGB
    end                                                         
    else
      Result := '';
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Retorna_Qtd_UConv(ID_Produto: Integer; Unidade_Conv: String): Real;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT UC.UNIDADE_CONV, UC.QTD  FROM PRODUTO_UNI PU '
                     + ' INNER JOIN UNIDADE_CONV UC ON PU.UNIDADE = UC.UNIDADE AND PU.ITEM_UNIDADE = UC.ITEM '
                     + ' WHERE PU.ID = :ID '
                     + ' AND UC.UNIDADE_CONV = :UNIDADE_CONV ';
    sds.ParamByName('ID').AsInteger := ID_Produto;
    sds.ParamByName('UNIDADE_CONV').AsString := Unidade_Conv;
    sds.Open;
    Result := StrToFloat(FormatFloat('0.0000',sds.FieldByName('QTD').AsFloat));
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Busca_Tam_Material(ID_Produto: Integer; Tamanho: String): String;
var
  sds: TSQLDataSet;
begin
  Result := '';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT GN.TAM_MATERIAL FROM PRODUTO_GRADENUM GN ' +
                         'WHERE GN.ID = :ID ' +
                         'AND GN.TAMANHO = :TAMANHO';
    sds.ParamByName('ID').AsInteger     := ID_Produto;
    sds.ParamByName('TAMANHO').AsString := Tamanho;
    sds.Open;
    if trim(sds.FieldByName('TAM_MATERIAL').AsString) <> '' then
      Result := sds.FieldByName('TAM_MATERIAL').AsString;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Converte_Horas(Hora: Real): Real;
var
  vAux: real;
  vAux2: real;
  vTexto: String;
  i: Integer;
begin
  vaux := Frac(Hora);
  if vAux > 0 then
  begin
    vAux   := StrToFloat(FormatFloat('0.00',(vAux / 60)*100));
    vTexto := FloatToStr(vAux);
    i := pos(',',vTexto);
    if i > 0 then
      vTexto := copy(vTexto,i+1,2)
    else
      vTexto := FloatToStr(vAux);
  end
  else
    vTexto := '00';

  vaux2 := Int(Hora);
  if vAux2 <= 0 then
    vAux2 := 0;
  vTexto := FloatToStr(vAux2) + ',' + vTexto;
  Result := StrToFloat(vTexto);
end;

procedure prc_Preencher_Excel2(planilha: Variant; vDados: TDataSource; Grid :TSMDBGrid);
var
  linha, coluna: Integer;
  valorCampo: String;
  ColunaP: Integer;
  vTexto: String;
begin
  linha   := 1;
  ColunaP := 0;
  for coluna := 0 to Grid.FieldCount - 1 do
  begin
    if Grid.Columns[coluna].Visible then
    begin
      ColunaP := ColunaP + 1;
      //valorcampo := Grid.Columns[coluna].FieldName;
      valorcampo := Grid.Columns[coluna].Title.Caption;
      planilha.cells[Linha, colunaP] := valorCampo;
      planilha.cells[Linha, colunaP].Font.bold := True; // Negrito
    end;
  end;

  vDados.DataSet.First;
  while not vDados.DataSet.Eof do
  begin
    linha := Linha + 1;
    ColunaP := 0;
    for coluna := 0 to Grid.FieldCount - 1 do
    begin
      if Grid.Columns[coluna].Visible then
      begin
        ColunaP := ColunaP + 1;
        vTexto := vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).AsString;
        if trim(vTexto) <> '' then
          valorcampo := vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).Value
        else
          valorcampo := '';
        vTexto := Grid.Columns[coluna]. FieldName;

        if FieldTypeNames[vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).DataType] = 'Integer' then
        begin
          if trim(valorcampo) = '' then
            valorcampo := '0';
          planilha.Cells[linha, colunaP].NumberFormat := '#.##0_);(#.##0)';
          planilha.cells[linha, colunaP] := StrToFloat(valorCampo);
        end
        else
        if FieldTypeNames[vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).DataType] = 'Float' then
        begin
          if trim(valorcampo) = '' then
            valorcampo := '0';
          planilha.Cells[linha, colunaP].NumberFormat := '#.##0,00_);(#.##0,000##)';
          planilha.cells[linha, colunaP] := StrToFloat(valorCampo);
        end
        else
        if FieldTypeNames[vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).DataType] = 'Date' then
        begin
          if trim(valorCampo) <> '' then
          begin
            try
              valorCampo := FormatDateTime('mm/dd/yyyy',StrToDate(valorCampo));
              planilha.Cells[linha, colunaP].NumberFormat := AnsiString('dd/mm/aaaa');
              planilha.cells[linha, colunaP] := valorCampo;
            except
              vDados.DataSet.Next;
            end;
          end;
        end
        else
        begin
          planilha.Cells[linha, colunaP].NumberFormat := AnsiChar('@');;
          planilha.cells[linha, colunaP] := valorCampo;
        end;
      end;
    end;
    vDados.DataSet.Next;
  end;
end;

function fnc_Max_Codigo(Tabela,Campo: String):Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT MAX( ' + Campo + ') MAX_NUMERO FROM ' + Tabela;
    sds.Open;
    if sds.FieldByName('MAX_NUMERO').AsInteger > 0 then
      Result := sds.FieldByName('MAX_NUMERO').asInteger;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Existe_Prod_Lote(ID: Integer): Boolean;
var
  sds: TSQLDataSet;
begin
  Result := True;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR FROM PRODUTO_LOTE PL WHERE PL.ID = ' + IntToStr(ID);
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
      Result := True
    else
      Result := False;
  finally
    FreeAndNil(sds);
  end;

end;

function fnc_Ajusta_DtVencimento(Dia_Vecto,Dia1,Dia2,QDias_MPag: Integer; DtVecto: TDateTime): TDateTime;
var
  vAux: Integer;
begin
  Result := DtVecto;
  if ((Dia_Vecto <> Dia1) and (Dia_Vecto <> Dia2)) then
  begin
    if Dia1 = Dia2 then
    begin
      if Dia_Vecto > Dia1 then
      begin
        vAux := Dia_Vecto - Dia1;
        if (QDias_MPag <= 0) or ((vAux <= QDias_MPag) and (QDias_MPag > 0)) then
        begin
          Result := DtVecto - vAux;
          if Result < Date then
            Result := Result + 7;
        end
        else
          Result := DtVecto + Dia_Vecto + 1;
      end
      else
      begin
        vAux := Dia1 - Dia_Vecto;
        Result := DtVecto + vAux;
      end;
    end
    else
    if Dia_Vecto < Dia1 then
      Result := DtVecto + (dia1 - Dia_Vecto)
    else
    if Dia_Vecto < Dia2 then
      Result := DtVecto + (dia2 - Dia_Vecto)
    else
    if (Dia_Vecto > Dia2) then
    begin
      if (Dia_Vecto = 1) then
        Result := DtVecto + (dia1 - 1)
      else
      if (Dia_Vecto = 7) then
        Result := DtVecto + (dia1)
      else
        Result := DtVecto - (Dia_Vecto - dia2)
    end;
  end;
end;

function fnc_Busca_Tam_Material2(ID_Produto, ID_GRADE_PROD: Integer; Tamanho: String): String; // aqui pesquisa pelo produto_mattam
var
  sds: TSQLDataSet;
begin
  Result := '';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'select MT.TAM_MATERIAL from produto_mattam MT where MT.ID = :ID and  MT.ID_GRADE = :ID_GRADE AND MT.TAMANHO = :TAMANHO ';
    sds.ParamByName('ID').AsInteger       := ID_Produto;
    sds.ParamByName('ID_GRADE').AsInteger := ID_GRADE_PROD;
    sds.ParamByName('TAMANHO').AsString   := Tamanho;
    sds.Open;
    if trim(sds.FieldByName('TAM_MATERIAL').AsString) <> '' then
      Result := sds.FieldByName('TAM_MATERIAL').AsString;
  finally
    FreeAndNil(sds);
  end;
end;

function CharEspeciais(Texto: String): String;
var
  i,t:integer;
begin
  Result := '';
  t:=length(texto);
  i:=1;
  While i <= t do
  begin
   if texto[i] in ['0'..'9','a'..'z','A'..'Z'] Then
     result:=result+Texto[i];
   i:=i+1;
  end;
end;

function fnc_Estoque_Tipo_Mat(ID_Produto: Integer; Tipo_ES: string): string; //E= Entrada  S= Saida
var
  sds: TSQLDataSet;
begin
  Result := 'S';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT P.TIPO_MAT, P.ESTOQUE, TM.estoque_benef_saida, TM.estoque_benef_ret FROM PRODUTO P '
                     + ' INNER JOIN PARAMETROS_TIPO_MAT TM ON P.TIPO_MAT = TM.TIPO_MAT '
                     + ' WHERE P.ID = :ID ';
    sds.ParamByName('ID').AsInteger := ID_Produto;
    sds.Open;
    if (Tipo_ES = 'E') and (sds.FieldByName('estoque_benef_ret').AsString = 'N') then
      Result := 'N';
    if (Tipo_ES = 'S') and (sds.FieldByName('estoque_benef_saida').AsString = 'N') then
      Result := 'N';
  finally
    FreeAndNil(sds);
  end;
end;

function SQLLocate(Tabela, CampoProcura, CampoRetorno, ValorFind: string): string; overload;
var
  MyQuery: TSQLQuery;
begin
  if ValorFind <> '' then
  begin
    MyQuery := TSQLQuery.Create(dmDatabase);
    MyQuery.SQLConnection :=  dmDatabase.scoDados;
    MyQuery.Close;
    MyQuery.SQL.Clear ;
    MyQuery.SQL.Add('select ' + CampoRetorno + ' from ' + Tabela) ;
    MyQuery.SQL.Add('where  ' + CampoProcura + ' = ' + QuotedStr(ValorFind));
    MyQuery.Open ;
    if not MyQuery.EOF then
      SQLLocate := MyQuery.FieldByName(CampoRetorno).AsString
    else
      SQLLocate := '' ;
    MyQuery.Destroy ;
  end
  else
    SQLLocate := '' ;
    //ValorFind := '' ;
end ;

function fnc_Converte_Min_Dec(Hora: Real): Real; //Converte de Decimal para Minutos 
var
  vAux: Real;
begin
  Result := 0;
  //vAux := Frac vTempo - Trunc(vTempo);
  vAux := Frac(Hora);
  if StrToFloat(FormatFloat('0.00',vAux)) > 0 then
  begin
    vAux := StrToFloat(FormatFloat('0.00',(vAux * 60) / 100));
    vAux := Trunc(Hora) + vAux;
    Result := vAux;
  end;

end;

{function fnc_Soma_Data_Hora(Data: TDateTime; Hora1: TTime; Hora2, Total_HoraDia: Real): String;
var
  vAux: Real;
  vTexto: String;
  vDia: Integer;
  vHora: Real;
  vAux2: Real;
  i, i2: Integer;
  vMin: Real;
  vSeg, vMil: real;
  vH, vM, vS, vMS: Word;
  vDtAux: TDateTime;
  vTempo: Real;
begin
  if StrToFloat(FormatFloat('0.000',Total_HoraDia)) <= 0 then
    Total_HoraDia := StrToFloat(FormatFloat('0.00',24));

  vAux2 := Hora2 / Total_HoraDia;
  vDia  := Trunc(vAux2);
  if vDia > 0 then
  begin
    i2     := vDia;
    vDtAux := Data;
    for i := 1 to i2 do
    begin
      vDtAux := vDtAux + 1;
      vDtAux := fnc_Data_Vencimento(vDtAux);
    end;
    Data := vDtAux;
  end;

  Result := '';
  //vTexto := TimeToStr(Hora1);
  vAux  := StrToInt(FormatFloat('00',HourOf(Hora1)));

  DecodeTime(Hora1,vH,vM,vS,vMS);

  vMin  := vM;

  //vMin  := StrToFloat(Copy(vTexto,4,2));
  //vMin  := StrToFloat(FormatFloat('0.00',(vMIn /100) * 100) / 60));
  vMin  := StrToFloat(FormatFloat('0.00',(vMIn / 60)));

  vAux2 := Frac(Hora2);
  vMin  := vMin + StrToFloat(FormatFloat('0.00',(vAux2 * 100) / 60));
  vAux  := vAux + Trunc(vMin) + Trunc(Hora2);
  vAux2 := Frac(vMin);
  vAux2 := fnc_Converte_Min_Dec(vAux2);
  vAux  := StrToFloat(FormatFloat('0.00',vAux + vAux2));

  //vTexto := IntToStr( HourOf(Hora1));
  //vTexto := vTexto + ',' + FormatFloat('00', MinuteOf(Hora1));

  //vAux := StrToFloat(vTexto)  + Hora2;

  //vAux := vAux / 24;
  //vAux := vAux / Total_HoraDia;
  //vDia  := Trunc(vAux);
  vDia := 0;
  if vAux >= 24 then
  begin
    vAux := vAux / 24;
    vDia := Trunc(vAux);
    if vDia > 0 then
    begin
      i2     := vDia;
      vDtAux := Data;
      for i := 1 to i2 do
      begin
        vDtAux := vDtAux + 1;
        vDtAux := fnc_Data_Vencimento(vDtAux);
      end;
      Data := vDtAux;
    end;
    vAux := frac(vAux);
    vAux := vAux * 24;
  end;

  vAux2 := frac(vAux);
  if vAux < 1 then
    vaux2 := fnc_Converte_Min_Dec(vAux2);
  //vaux2 := fnc_Converte_Min_Dec(vAux2);
  vAux  := Trunc(vAux) + vAux2;

  vTexto := FormatFloat('00.00',vAux);
  vTexto := Replace(vTexto,',',':');

  vTempo := 0;
  if vDia > 0 then
    vTempo := fnc_Calcula_Intervalo(StrToTime('00:01'),StrToTime(vTexto))
  else
    vTempo := fnc_Calcula_Intervalo(Hora1,StrToTime(vTexto));
  if StrToFloat(FormatFloat('0.00',vTempo)) > 0 then
  begin
    Hora1  := StrToTime(vTexto);
    vTexto := fnc_Soma_Data_Hora(Data,StrToTime(vTexto),vTempo,StrToFloat(FormatFloat('0.00',Total_HoraDia)));
  end;

  Result := DateToStr(Data) + 'H' + FormatFloat('00.00',vAux);
end;}

function fnc_Cliente_Fil_Fat(ID_Cliente , ID_Filial: Integer): Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT COUNT(1) CONTADOR FROM PESSOA_FIL P WHERE P.CODIGO = :CODIGO AND P.FILIAL = :FILIAL ';
    sds.ParamByName('CODIGO').AsInteger := ID_Cliente;
    sds.ParamByName('FILIAL').AsInteger := ID_Filial;
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
      Result := True;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Calcula_Intervalo(HrInicial,HrFinal: TTime): Real;
var
  sds: TSQLDataSet;
  vTempo: Real;
  vTexto: string;
begin
  Result := 0;
  vDiaAdicional := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' SELECT I.id, i.hrinicial, i.hrfinal FROM intervalo_tempo I '
                       + ' WHERE (I.HRINICIAL >= :HRINICIAL1 and I.HRINICIAL < :HRINICIAL2) '
                       + ' or (I.HRFINAL > :HRINICIAL1  and I.HRFINAL < :HRINICIAL2) '
                       + ' or (I.HRINICIAL < :HRINICIAL1 and I.HRFINAL > :HRINICIAL1) '
                       + ' ORDER BY I.HRINICIAL ';
    sds.ParamByName('HRINICIAL1').AsTime := HrInicial;
    sds.ParamByName('HRINICIAL2').AsTime := HrFinal;
    sds.Open;
    vTempo := 0;
    sds.First;
    while not sds.Eof do
    begin
      //if (vHrEmissaoNFe > sds.FieldByName('HRINICIAL').AsDateTime) and (vHrEmissaoNFe < sds.FieldByName('HRFINAL').AsDateTime) then
      //  vHrEmissaoNFe := sds.FieldByName('HRFINAL').AsDateTime;
      //end
      //else
        vTempo := vTempo + fnc_Diferenca_Horas2(sds.FieldByName('HRINICIAL').AsDateTime,sds.FieldByName('HRFINAL').AsDateTime);
      sds.Next;
    end;
  finally
    FreeAndNil(sds);
  end;
  Result := vTempo;
end;

function fnc_Diferenca_Horas2(Inicio, Fim: TTime): Real;
var
  FIni,FFim: TDateTime;
  vTexto: String;
begin
  Fini := Inicio;
  FFim := Fim;
  if (Inicio > Fim) then
    vTexto :=  TimeToStr((StrTotime('23:59:59')-Fini)+FFim+(StrTotime('00:00:01')))
  else
    vTexto := TimeToStr(FFim-Fini);
  vTexto := Copy(vTexto,1,5);
  vTexto := Replace(vTexto,':',',');
  //Result := fnc_Converte_Horas(StrToFloat(vTexto));
  Result := StrToFloat(vTexto);
end;

procedure prc_Soma_Data_Hora_Res(Data: TDateTime; Hora1: TTime; Hora2, Total_HoraDia: Real);
var
  vAux: Real;
  vTexto: String;
  vDia: Integer;
  vAux2: Real;
  vMin: Real;
  vH, vM, vS, vMS: Word;
  vDtAux: TDateTime;
  vTempo: Real;
  vFlag: Boolean;

  procedure calcula;
  var
    i: Integer;
    i2: Integer;
  begin
    vAux2 := Hora2 / Total_HoraDia;
    vDia  := Trunc(vAux2);
    if vDia > 0 then
    begin
      i2     := vDia;
      vDtAux := Data;
      for i := 1 to i2 do
      begin
        vDtAux := vDtAux + 1;
        vDtAux := fnc_Data_Vencimento(vDtAux);
      end;
      Data := vDtAux;
    end;

    vAux  := StrToInt(FormatFloat('00',HourOf(Hora1)));
    DecodeTime(Hora1,vH,vM,vS,vMS);
    vMin  := vM;
    vMin  := StrToFloat(FormatFloat('0.00',(vMIn / 60)));

    vAux2 := Frac(Hora2);
    vMin  := vMin + StrToFloat(FormatFloat('0.00',(vAux2 * 100) / 60));
    vAux  := vAux + Trunc(vMin) + Trunc(Hora2);
    vAux2 := Frac(vMin);
    vAux2 := fnc_Converte_Min_Dec(vAux2);
    vAux  := StrToFloat(FormatFloat('0.00',vAux + vAux2));
    vDia := 0;
    if vAux >= 24 then
    begin
      vAux := vAux / 24;
      vDia := Trunc(vAux);
      if vDia > 0 then
      begin
        i2     := vDia;
        vDtAux := Data;
        for i := 1 to i2 do
        begin
          vDtAux := vDtAux + 1;
          vDtAux := fnc_Data_Vencimento(vDtAux);
        end;
        Data := vDtAux;
      end;
      vAux := frac(vAux);
      vAux := StrToFloat(FormatFloat('0.00',vAux * 24));
      if vAux < 1 then
        vAux := StrToFloat(FormatFloat('0.00',(vAux * 100) / 60));
    end;
    vAux2 := frac(vAux);
    if vAux < 1 then
      vaux2 := fnc_Converte_Min_Dec(vAux2);
    vAux   := Trunc(vAux) + vAux2;
    vTexto := FormatFloat('00.00',vAux);
    vTexto := Replace(vTexto,',',':');
  end;     

begin
  vPrimeira_Hora := -1;
  vDtHora_Res := '';
  if StrToFloat(FormatFloat('0.000',Total_HoraDia)) <= 0 then
    Total_HoraDia := StrToFloat(FormatFloat('0.00',24));

  Calcula;

  vPrimeira_Hora := StrToTime(vTexto);
  vPrimeira_Data := Data;

  vTempo := 0;

  vFlag := False;
  while not vFlag do
  begin
    if vDia > 0 then
      vTempo := fnc_Calcula_Intervalo(StrToTime('00:01'),StrToTime(vTexto))
    else
      vTempo := fnc_Calcula_Intervalo(Hora1,StrToTime(vTexto));
    if StrToFloat(FormatFloat('0.00',vTempo)) > 0 then
    begin
      Hora1  := StrToTime(vTexto);
      Hora2  := vTempo;
      Calcula;
      Hora1  := StrToTime(vTexto);

      //vTempo := fnc_Calcula_Intervalo(Hora1,StrToTime(vTexto));


      //prc_Soma_Data_Hora_Res(Data,StrToTime(vTexto),vTempo,StrToFloat(FormatFloat('0.00',Total_HoraDia)));
    end
    else
      vFlag := True;

  end;

  vDtHora_Res := DateToStr(Data) + 'H' + FormatFloat('00.00',vAux);

end;

function fnc_CNPJCFP_FilialNFeConfig: String;
var
  sds: TSQLDataSet;
  sds2: TSQLDataSet;
  vCNPJAux: String;
begin
  dmDatabase_NFeBD := TdmDatabase_NFeBD.Create(dmDatabase_NFeBD);

  Result   := '';
  vCNPJAux := '';
  sds      := TSQLDataSet.Create(nil);
  sds2     := TSQLDataSet.Create(nil);
  try
    if SQLLocate('PARAMETROS_NFE','ID','USA_NFECONFIG_CENTRAL','1') = 'S' then
      sds.SQLConnection := dmDatabase_NFeBD.scoNFeBD_Central
    else
      sds.SQLConnection := dmDatabase_NFeBD.scoNFeBD;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds2.SQLConnection := dmDatabase.scoDados;
    sds2.NoMetadata    := True;
    sds2.GetMetadata   := False;
    sds2.Close;
    sds2.CommandText   := 'select f.cnpj_cpf, f.pessoa  from filial f '
                        + ' where coalesce(f.inativo,' + QuotedStr('N') + ') = ' + QuotedStr( 'N')
                        + '   and coalesce(f.Principal,' + QuotedStr('N') + ') = ' + QuotedStr( 'S');
    sds2.Open;
    sds2.First;
    while not sds2.Eof do
    begin
      if Trim(Result) = '' then
      begin
        sds.Close;
        sds.CommandText   := ' SELECT CC.CNPJ_TITULAR, CC.chave_acesso, CC.validade_inicio, CC.validade_fim FROM CONFIG_NFE CN '
                           + ' INNER JOIN CONFIG_CERTIFICADOS CC ON CN.ID_CERTIFICADO = CC.ID '
                           + ' WHERE CC.CNPJ_TITULAR = :CNPJ_TITULAR ';
        if sds2.FieldByName('pessoa').AsString = 'F' then
          vCNPJAux := Monta_Numero(sds2.FieldByName('cnpj_cpf').AsString,11)
        else
          vCNPJAux := Monta_Numero(sds2.FieldByName('cnpj_cpf').AsString,14);
        sds.ParamByName('CNPJ_TITULAR').AsString := vCNPJAux;
        sds.Open;
        if sds.FieldByName('validade_fim').AsDateTime >= Date then
          Result := vCNPJAux;
      end;
      sds2.Next;
    end;
  finally
    FreeAndNil(sds);
    FreeAndNil(sds2);
    FreeAndNil(dmDatabase_NFeBD);
  end;

end;

function fnc_Vendedor_Desc_Com(ID: Integer): Boolean; //08/05/2019
var
  sds: TSQLDataSet;
begin
  Result   := False;
  if ID <= 0 then
    exit;

  sds      := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.Close;
    sds.CommandText   := ' SELECT V.desc_frete, V.desc_ipi, V.desc_st, V.desc_pis, V.desc_cofins, V.desc_issqn '
                       + ' FROM VENDEDOR_CONFIG V WHERE V.CODIGO = :CODIGO ';
    sds.ParamByName('CODIGO').AsInteger := ID;
    sds.Open;
    if (sds.FieldByName('desc_frete').AsString = 'S') or (sds.FieldByName('desc_ipi').AsString = 'S') or (sds.FieldByName('desc_st').AsString = 'S')
      or (sds.FieldByName('desc_pis').AsString = 'S') or (sds.FieldByName('desc_cofins').AsString = 'S') or (sds.FieldByName('desc_issqn').AsString = 'S') then
      Result := True;
  finally
    FreeAndNil(sds);
  end;                   
end;

function fnc_Somar_Edit(Valores: string): Double;
var
  vValorCalculo: array[1..10] of real;
  i, i2: Integer;
  x: string;
  soma: real;
begin
  i := 0;
  repeat
    inc(i);
    i2 := pos('+', Valores);
    if (i2 = 0) then
    begin
      i2 := Length(Valores) + 1;
    end;
    x := Copy(Valores, 1, i2 - 1);
    Delete(Valores, 1, i2);
    vValorCalculo[i] := strtofloat(x);
  until Valores = '';
  soma := 0;
  for i := 1 to 10 do
  begin
    soma := soma + vValorCalculo[i];
  end;
  Result := soma;
end;

procedure addLog(Erro: string; Arquivo: string = '');
begin
  try
    if FileExists(ExtractFilePath(Application.ExeName) + 'log.txt') then
      with TStringList.Create do
      try

        if Arquivo = '' then
          Arquivo := ExtractFilePath(Application.ExeName)+'LogErro_' + FormatDateTime('yyyymmdd', now) + '.txt';

        //Arquivo := CaminhoPrograma + Arquivo;

        if FileExists(arquivo) then
          LoadFromFile(arquivo);

        Add(DateTimeToStr(now) + ' - ' + erro + #13);

        SaveToFile(arquivo);

      finally
        Free;
      end;
  except
  end;
end;

function fnc_Verificar_CFOP_Config(ID_CFOP, ID_CSTICMS: Integer): Boolean; //08/05/2019
var
  sds: TSQLDataSet;
begin
  Result   := False;

  sds      := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.Close;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR FROM cfop_config C WHERE C.id_cfop = :ID_CFOP AND C.id_csticms = :ID_CSTICMS ';
    sds.ParamByName('ID_CFOP').AsInteger    := ID_CFOP;
    sds.ParamByName('ID_CSTICMS').AsInteger := ID_CSTICMS;
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
      Result := True;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_UF_Possui_ST(ID_NCM: Integer; UF: String): String;
var
  sds: TSQLDataSet;
begin
  Result   := 'N';
  sds      := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.Close;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR FROM TAB_NCM_UF T WHERE T.ID = :ID AND T.UF = :UF ';
    sds.ParamByName('ID').AsInteger := ID_NCM;
    sds.ParamByName('UF').AsString  := UF;
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
      Result := 'S'
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_existe_Drawback(ID_Cliente, ID_Produto: Integer): String;
var
  sds: TSQLDataSet;
begin
  Result   := 'NN';
  sds      := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.Close;
    sds.CommandText   := 'SELECT P.DRAW_POSSUI, (SELECT I.DRAWBACK FROM pessoa_prodicms I '
                                                + ' WHERE I.CODIGO = :CODIGO AND I.ID_PRODUTO = :ID_PRODUTO AND I.DRAWBACK = ' + QuotedStr('S') +' ) ' 
                       + ' FROM PESSOA_FISCAL P  WHERE P.codigo = :CODIGO ';
    sds.ParamByName('CODIGO').AsInteger      := ID_Cliente;
    sds.ParamByName('ID_PRODUTO').AsInteger  := ID_Produto;
    sds.Open;
    if (sds.FieldByName('DRAW_POSSUI').AsString = 'S') then
      Result := 'S'
    else
      Result := 'N';
    if (sds.FieldByName('DRAWBACK').AsString = 'S') then
      Result := Result + 'S'
    else
      Result := Result +'N';
  finally
    FreeAndNil(sds);
  end;
end;

procedure prc_Form_Aguarde(Form: TForm); overload;
var
  MSG: Tlabel;
  Borda: TShape;
begin
  //Form := TForm.Create(Application);
  Form.BorderStyle := bsNone;
  Form.Position := poScreenCenter;
  Form.Width := 400;
  Form.Height := 45; // at� aqui criamos o form

  Borda := TShape.Create(Application);
  Borda.Parent := Form;
  Borda.Align := alClient; // uma borda envolta do form

  MSG := Tlabel.Create(Application);
  MSG.Parent := Form;
  MSG.Transparent := true;
  MSG.AutoSize := False;
  MSG.Font.Name := 'Verdana';
  MSG.Font.Size := 25;
  MSG.Width := 395;
  MSG.Height := 42;
  MSG.Caption := '... Aguarde ...';
  MSG.Alignment := taCenter; // label com a mensagem "Aguarde"

  Form.Show;
  Form.Update;
end;

procedure prc_Form_Aguarde(Form: TForm; Mensagem: String); overload;
var
  MSG: Tlabel;
  Borda: TShape;
begin
  //Form := TForm.Create(Application);
  Form.BorderStyle := bsNone;
  Form.Position := poScreenCenter;
  Form.Width := 400;
  Form.Height := 45;

  Borda := TShape.Create(Application);
  Borda.Parent := Form;
  Borda.Align := alClient;

  MSG := Tlabel.Create(Application);
  MSG.Parent := Form;
  MSG.Transparent := true;
  MSG.AutoSize := False;
  MSG.Font.Name := 'Verdana';
  MSG.Font.Size := 25;
  MSG.Width := 395;
  MSG.Height := 42;
  MSG.Caption := Mensagem;
  MSG.Alignment := taCenter;

  Form.Show;
  Form.Update;
end;

function fnc_Selecionar_Filial(ID_Filial: Integer = 0): Integer;
var
  sds: TSQLDataSet;
  ffrmEscolhe_Filial: TfrmEscolhe_Filial;
begin
  vFilial      := 0;
  vFilial_Nome := '';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'select ID, NOME_INTERNO,  (select count(1) from filial where inativo = ' + QuotedStr('N') + ') contador '
                     + 'from filial where inativo = ' + QuotedStr('N');

    sds.Open;
    if (sds.FieldByName('CONTADOR').AsInteger > 1) and (ID_Filial > 0) then
      sds.Locate('ID',ID_Filial,[loCaseInsensitive]);
    if (sds.FieldByName('CONTADOR').AsInteger = 1) then
    begin
      vFilial      := sds.FieldByName('ID').AsInteger;
      vFilial_Nome := sds.FieldByName('NOME_INTERNO').AsString;
    end
    else
    begin
      ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(frmEscolhe_Filial);
      if ID_Filial > 0 then
        ffrmEscolhe_Filial.vID_Filial_Padrao := ID_Filial;
      ffrmEscolhe_Filial.ShowModal;
      FreeAndNil(ffrmEscolhe_Filial);
    end;

  finally
    FreeAndNil(sds);
  end;
  Result := vFilial;

  if vFilial <= 0 then
    MessageDlg('*** Filial n�o informada!' , mtError, [mbOk], 0);

end;

function fnc_Existe_CBenef(Codigo: String): Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  if trim(Codigo) = '' then
  begin
    Result := True;
    exit;
  end;

  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR FROM CBENEF WHERE CODIGO = ' + QuotedStr(Codigo);
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
      Result := True;
  finally
    FreeAndNil(sds);
  end;
end;

function WinExecAndWait32(FileName: string;
  Visibility: Integer; Parametro: String): Longword;
var { by Pat Ritchey }
  zAppName: array[0..512] of Char;
  zCurDir: array[0..255] of Char;
  WorkDir: string;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
  if Parametro <> EmptyStr then
  Parametro := ' ' + Parametro;
  StrPCopy(zAppName, FileName + Parametro);
  GetDir(0, WorkDir);
  StrPCopy(zCurDir, WorkDir);
  FillChar(StartupInfo, SizeOf(StartupInfo), #0);
  StartupInfo.cb          := SizeOf(StartupInfo);
  StartupInfo.dwFlags     := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;
  if not CreateProcess(nil,
    zAppName, // pointer to command line string
    nil, // pointer to process security attributes
    nil, // pointer to thread security attributes
    False, // handle inheritance flag
    CREATE_NEW_CONSOLE or // creation flags
    NORMAL_PRIORITY_CLASS,
    nil, //pointer to new environment block
    nil, // pointer to current directory name
    StartupInfo, // pointer to STARTUPINFO
    ProcessInfo) // pointer to PROCESS_INF
    then Result := WAIT_FAILED
  else
  begin
    WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
    GetExitCodeProcess(ProcessInfo.hProcess, Result);
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
  end;
end;

function fnc_Busca_Estoque_Data(Filial, ID_Local, ID_Produto, ID_Cor: Integer; Tamanho: String; Data: TDateTime): Real;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  if trim(Tamanho) = '' then
    Tamanho := '';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'select sum(e.qtd2) QTD from estoque_mov e '
                       + 'WHERE E.filial = :FILIAL '
                       + '  AND E.id_local_estoque = :ID_LOCAL_ESTOQUE '
                       + '  AND E.dtmovimento <= :DATA '
                       + '  AND E.id_produto = :ID_PRODUTO '
                       + '  AND E.id_cor = :ID_COR '
                       + '  AND E.tamanho = :TAMANHO ';
    sds.ParamByName('FILIAL').AsInteger           := FILIAL;
    sds.ParamByName('ID_LOCAL_ESTOQUE').AsInteger := ID_Local;
    sds.ParamByName('DATA').AsDate                := Data;
    sds.ParamByName('ID_PRODUTO').AsInteger       := ID_Produto;
    sds.ParamByName('ID_COR').AsInteger           := ID_Cor;
    sds.ParamByName('TAMANHO').AsString           := Tamanho;
    sds.Open;
    Result := StrToFloat(FormatFloat('0.0000',sds.FieldByName('QTD').AsFloat));
  finally
    FreeAndNil(sds);
  end;

end;

function fnc_Gravar_CProd_ANP(Codigo, Descricao: String): Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'select T.ID, T.CODIGO, T.DESCRICAO from TAB_CPROD_ANP T where T.CODIGO = :CODIGO ';
    sds.ParamByName('CODIGO').AsString := Codigo;
    sds.Open;
    if sds.IsEmpty then
    begin
      sds.Close;
      sds.CommandText   := 'INSERT INTO TAB_CPROD_ANP (CODIGO, DESCRICAO) VALUES (' + QuotedStr(Codigo) + ',' + QuotedStr(Descricao) +')';
      sds.ExecSQL;

      sds.Close;
      sds.CommandText   := 'select T.ID from TAB_CPROD_ANP T where T.CODIGO = :CODIGO ';
      sds.ParamByName('CODIGO').AsString := Codigo;
      sds.Open;
    end;
    if sds.FieldByName('ID').AsInteger > 0 then
      Result := sds.FieldByName('ID').AsInteger;
  finally
    FreeAndNil(sds);
  end;
end;

procedure Informa(Texto:string) ;
begin
  Application.MessageBox(PChar(Texto), PChar(Application.Title), MB_SYSTEMMODAL + MB_Ok + MB_ICONINFORMATION + MB_SETFOREGROUND);
end ;

//Tabela Estoque_Res
function fnc_Buscar_Estoque_Res(CodProduto, ID_Cor, Filial: Integer): Real; //Fepam vai usar
var
  sds, sds2: TSQLDataSet;
begin
  Result := StrToFloat(FormatFloat('0.0000',0));
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;

  sds2 := TSQLDataSet.Create(nil);
  sds2.SQLConnection := dmDatabase.scoDados;
  sds2.NoMetadata    := True;
  sds2.GetMetadata   := False;
  try
    if Filial > 0 then
    begin
      sds2.Close;
      sds2.CommandText := 'select USA_ESTOQUE_GERAL_CAD from parametros_est ';
      sds2.Open;
      if sds2.FieldByName('USA_ESTOQUE_GERAL_CAD').AsString = 'S' then
        Filial := 0;
    end;
    if (Filial = 0) then
      sds.CommandText := 'SELECT sum(QTD) QTD FROM ESTOQUE_RES WHERE '
    else
      sds.CommandText := 'SELECT QTD FROM ESTOQUE_RES WHERE FILIAL = :FILIAL AND ';
    sds.CommandText := sds.CommandText  + ' ID_PRODUTO = :ID_PRODUTO ';
    if ID_Cor > 0 then
    begin
      sds.CommandText := sds.CommandText + ' AND ID_COR = :ID_COR ';
      sds.ParamByName('ID_COR').AsInteger := ID_Cor;
    end
    else
      sds.CommandText := sds.CommandText + ' AND (ID_COR = 0 or ID_COR is NULL) ';
    if Filial > 0 then
      sds.ParamByName('FILIAL').AsInteger   := Filial;
    sds.ParamByName('ID_PRODUTO').AsInteger := CodProduto;
    sds.Open;
    Result := StrToFloat(FormatFloat('0.0000',sds.FieldByName('QTD').AsFloat));
    if result <= StrToFloat(FormatFloat('0.0000',0)) then
      Result := StrToFloat(FormatFloat('0.0000',0));
  finally
    FreeAndNil(sds);
    FreeAndNil(sds2);
  end;
end;

{function fnc_Buscar_Pedido_Res(CodProduto, ID_Cor, Filial: Integer): Real; //Fepam vai usar
var
  sds, sds2: TSQLDataSet;
begin
  Result := StrToFloat(FormatFloat('0.0000',0));
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;

  sds2 := TSQLDataSet.Create(nil);
  sds2.SQLConnection := dmDatabase.scoDados;
  sds2.NoMetadata    := True;
  sds2.GetMetadata   := False;
  try
    if Filial > 0 then
    begin
      sds2.Close;
      sds2.CommandText := 'select USA_ESTOQUE_GERAL_CAD from parametros_est ';
      sds2.Open;
      if sds2.FieldByName('USA_ESTOQUE_GERAL_CAD').AsString = 'S' then
        Filial := 0;
    end;
    if (Filial = 0) then
      sds.CommandText := 'SELECT sum(QTD) QTD FROM VPEDIDO_RESERVA WHERE '
    else
      sds.CommandText := 'SELECT QTD FROM VPEDIDO_RESERVA WHERE FILIAL = :FILIAL AND ';
    sds.CommandText := sds.CommandText  + ' ID_PRODUTO = :ID_PRODUTO ';
    if ID_Cor > 0 then
    begin
      sds.CommandText := sds.CommandText + ' AND ID_COR = :ID_COR ';
      sds.ParamByName('ID_COR').AsInteger := ID_Cor;
    end
    else
      sds.CommandText := sds.CommandText + ' AND (ID_COR = 0 or ID_COR is NULL) ';
    if Filial > 0 then
      sds.ParamByName('FILIAL').AsInteger   := vFilial;
    sds.ParamByName('ID_PRODUTO').AsInteger := CodProduto;
    sds.Open;
    Result := StrToFloat(FormatFloat('0.0000',sds.FieldByName('QTD').AsFloat));
  finally
    FreeAndNil(sds);
    FreeAndNil(sds2);
  end;

end;}

function fnc_Cliente_Estoque(ID_Pedido: Integer): String;
var
  sds: TSQLDataSet;
begin
  Result := 'N';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'select coalesce(CLI.CLIENTE_ESTOQUE,' + QuotedStr('N') + ')  CLIENTE_ESTOQUE '
                       + 'from PEDIDO P '
                       + 'inner join PESSOA CLI on P.ID_CLIENTE = CLI.CODIGO '
                       + 'WHERE P.ID = :ID ';
    sds.ParamByName('ID').AsInteger := ID_Pedido;
    sds.Open;
    Result := sds.FieldByName('CLIENTE_ESTOQUE').AsString;
  finally
    FreeAndNil(sds);
  end;
end;


function FormatarTelefone(Telefone: String):String;
  function SomenteNumero(snum: String): String;
  VAR s1, s2: STRING;
    i: Integer;
  BEGIN
    s1 := snum;
    s2 := '';
    FOR i := 1 TO Length(s1) DO
      IF s1[i] IN ['0'..'9'] THEN
        s2 := s2 + s1[i];
    result := s2;
  End;
var sTel: String;
    bZero: Boolean;
    iDigitos: Integer;
begin
   //Obs: mascara prev� tratamento apenas para n�meros brasileiros
   //Obs2: Esta fun��o n�o leva em conta o c�digo do pa�s (Ex: 55, ou +55)
   sTel := SomenteNumero(Telefone); //Remove qualquer formata��o que o usu�rio possa ter colocado.
   if sTel='' then
    Result := ''
   else
   begin
     if sTel[1]='0' then //Verifica se foi adicionado o 0 no in�cio do n�mero
     begin
       bZero:= True;
       sTel := Trim( copy(sTel,2,Length(sTel)) ); //Remove para fazer a formata��o depois adiciona
     end
     else
       bZero := False;
     iDigitos := Length(sTel);
     //Formata de acordo com a quantidade de n�meros encontrados.
     case iDigitos of
       8: Result := FormatMaskText('9999-9999;0;_',sTel); //8 digitos SEM DDD (ex: 34552318)
       9: Result := FormatMaskText('9 9999-9999;0;_',sTel); //9 digitos SEM DDD (ex: 991916889)
      10: Result := FormatMaskText('(99) 9999-9999;0;_',sTel); //8 Digitos (convencional, ex: 7734552318)
      11: Result := FormatMaskText('(99) 9 9999-9999;0;_',sTel); //9 Digitos (novos n�meros, ex: 77991916889)
      12: Result := FormatMaskText('99(99)9999-9999;0;_',sTel); //Se foram 12 digitos poss�velmente digitou a operadora tamb�m
      13: Result := FormatMaskText('99(99)9 9999-9999;0;_',sTel); //Se foram 13 digitos poss�velmente digitou a operadora tamb�m
     else
       Result := Telefone; //Mant�m na forma que o usu�rio digitou
     end;
     if bZero then //Para ficar com a prefer�ncia do usu�rio, se ele digitou o "0" eu mantenho.
       Result := '0'+Result;
   end;
end;   

function Preenche(STRI, FloodStr:String; TAM:Integer; JUST: Integer):String ;
var
  Conta: integer ;
  TotalStr, Aux_Str: String;
begin
  Aux_Str := '' ;
  for Conta := 1 to (Tam-Length(STRI)) do
  if FloodStr = '' then
    Aux_Str := Aux_Str + ' '
  else
    Aux_Str := Aux_Str + FloodStr ;
  if JUST = 0 then //Esquerda
    AUX_STR := AUX_STR + STRI ;
  if JUST = 2 then //Direita
    AUX_STR := STRI + AUX_STR ;
  Preenche := AUX_STR ;
end;

function FormaCNPJ(aValue:String):String;
begin
  Delete(aValue,ansipos('.',aValue),1);  //Remove ponto .
  Delete(aValue,ansipos('.',aValue),1);
  Delete(aValue,ansipos('-',aValue),1); //Remove tra�o -
  Delete(aValue,ansipos('/',aValue),1); //Remove barra /
  Result:=FormatmaskText('00\.000\.000\/0000\-00;0;',aValue);
end;

function DeletaString(aValue, Caracter: String): String;
begin
  Delete(aValue,ansipos(Caracter,aValue),1);
  Result := aValue;
end;

procedure prc_Preencher_CSV(vDados: TDataSource; Grid :TSMDBGrid; vNomeArq: String);
var
  linha, coluna: Integer;
  valorCampo: String;
  vTexto: String;
  vTexto2: String;
  vArquivo: TStringList;
  vAno,vMes, vDia: Word;
  Form: TForm;
begin
  if trim(vEndereco_Arq) = '' then
  begin
    frmInformeEndereco := TfrmInformeEndereco.Create(nil);
    try
      frmInformeEndereco.ShowModal;
    finally
      FreeAndNil(frmInformeEndereco);
    end;
    if trim(vEndereco_Arq) = '' then
    begin
      MessageDlg('*** Endere�o n�o informado' , mtInformation, [mbOk], 0);
      exit;
    end;
    if copy(vEndereco_Arq,Length(vEndereco_Arq),1) <> '\' then
      vEndereco_Arq := vEndereco_Arq + '\';
  end;
  vArquivo := TStringList.Create;
  Form := TForm.Create(Application);
  Grid.DisableScroll;
  try
    uUtilPadrao.prc_Form_Aguarde(Form);
    vTexto   := '';
    linha   := 1;
    for coluna := 0 to Grid.FieldCount - 1 do
    begin
      if Grid.Columns[coluna].Visible then
      begin
        valorcampo := Grid.Columns[coluna].Title.Caption;
        if trim(vTexto) <> '' then
          vTexto := vTexto + ';' + valorcampo
        else
          vTexto := valorcampo;
      end;
    end;
    vArquivo.Add(vTexto);
    vTexto := '';
    vDados.DataSet.First;
    while not vDados.DataSet.Eof do
    begin
      for coluna := 0 to Grid.FieldCount - 1 do
      begin
        if Grid.Columns[coluna].Visible then
        begin
          vTexto2 := vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).AsString;
          if trim(vTexto2) <> '' then
            valorcampo := vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).Value
          else
            valorcampo := '';
          if FieldTypeNames[vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).DataType] = 'Integer' then
          begin
            if valorcampo = '' then
              valorCampo := '0';
          end;
          if vTexto <> '' then
            vTexto := vTexto + ';' + valorCampo
          else
            vTexto := valorCampo;
        end;
      end;
      vArquivo.Add(vTexto);
      vTexto := '';
      vDados.DataSet.Next;
    end;
    if copy(vEndereco_Arq,Length(vEndereco_Arq),1) <> '\' then
      vEndereco_Arq := vEndereco_Arq + '\';
    vArquivo.SaveToFile(vEndereco_Arq + vNomeArq);
    MessageDlg('*** Gravado o Arquivo: ' + vEndereco_Arq + vNomeArq , mtConfirmation, [mbOk], 0);
  finally
    begin
      FreeAndNil(vArquivo);
      FreeAndNil(Form);
    end;
  end;
  Grid.EnableScroll;
end;

function fnc_Qtd_Nota_Dif_OS(NumNota, Serie, ID_Cliente: Integer): Boolean;
var
  sds: TSQLDataSet;
  vQtdOS: Real;
begin
  Result   := False;
  vQtdOS   := 0;
  vQtd_Nota_OS := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    sds.Close;
    sds.CommandText := 'select sum(I.QTD_NOTA) QTD_NOTA, ' +QuotedStr('O') + ' TIPO '
                     + 'from ORDEMSERVICO O '
                     + 'inner join ORDEMSERVICO_ITENS I on O.ID = I.ID '
                     + 'where O.NUM_NOTA = :NUM_NOTA and '
                     + '      O.SERIE_NOTA = :SERIE_NOTA and '
                     + '      O.ID_CLIENTE = :ID_CLIENTE '
                     + 'union all '
                     + 'select sum(NI.QTD) QTD_NOTA , ' +QuotedStr('N') + ' TIPO '
                     + 'from NOTAFISCAL N '
                     + 'inner join NOTAFISCAL_ITENS NI on N.ID = NI.ID '
                     + 'where N.NUMNOTA = :NUM_NOTA and '
                     + '      N.SERIE = :SERIE_NOTA and '
                     + '      (N.ID_CLIENTE = :ID_CLIENTE OR N.ID_CLIENTETRIANG = :ID_CLIENTE) ';
    sds.ParamByName('NUM_NOTA').AsInteger   := NumNota;
    sds.ParamByName('SERIE_NOTA').AsInteger := Serie;
    sds.ParamByName('ID_CLIENTE').AsInteger := ID_Cliente;
    sds.Open;
    while not sds.Eof do
    begin
      if sds.FieldByName('TIPO').AsString = 'O' then
        vQtdOS := sds.FieldByName('QTD_NOTA').AsFloat
      else
        vQtd_Nota_OS := sds.FieldByName('QTD_NOTA').AsFloat;
      sds.Next;
    end;
    if StrToFloat(FormatFloat('0.0000',vQtd_Nota_OS)) = StrToFloat(FormatFloat('0.0000',vQtdOS)) then
      Result := True
    else
      MessageDlg('*** Quantidade informada na nota diferente da informada na OS!' , mtInformation, [mbOk], 0);
    sds.Close;
  finally
    FreeAndNil(sds);
  end;

end;

procedure prc_Atualiza_Sequencial(Tabela, Campo_ID: String; NumRegistro: Integer );
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    if trim(Campo_ID) <> '' then
    begin
      sds.CommandText   := 'SELECT MAX('+Campo_ID+') ID from ' + Tabela;
      if UpperCase(Tabela) = 'PESSOA' then
        sds.CommandText := sds.CommandText + ' WHERE CODIGO < 99999';
      sds.Open;
      NumRegistro := sds.FieldByName('ID').AsInteger;
    end;
    sds.Close;
    sds.CommandText   := 'update or insert into SEQUENCIAL (TABELA, FILIAL, NUMREGISTRO, SERIE) '
                       + 'values (:TABELA, 0, :NUMREGISTRO, 0)';
    sds.ParamByName('TABELA').AsString       := Tabela;
    sds.ParamByName('NUMREGISTRO').AsInteger := NumRegistro;
    sds.ExecSQL;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Montar_CNPJ(CNPJ: String): String;
begin
  CNPJ := Monta_Numero(CNPJ,0);
  Result := copy(CNPJ,1,2) + '.' + copy(CNPJ,3,3) + '.' + copy(CNPJ,6,3) + '/' + copy(CNPJ,9,4) + '-' + copy(CNPJ,13,2);
end;

function fnc_Verifica_Inf_Finalidade_OK(Finalidade: String; Tipo_Consumidor: Integer): Boolean;
begin
  Result := True;
  if (((Finalidade = 'I') or (Finalidade = 'R')) and
    (Tipo_Consumidor > 0)) then
  begin
    if SQLLocate('PARAMETROS_PED','ID','VER_INF_FINALIDADE','1') = 'S' then
    begin
      MessageDlg('*** Tipo de Finalidade n�o esta correta conforme o tipo do consumidor (Cadastro Cliente)!' , mtInformation, [mbOk], 0);
      Result := False;
    end
    else
    if (MessageDlg('Tipo de Finalidade n�o esta correta conforme o tipo do consumidor (Cadastro Cliente)! ' + #13 + #13 + '*** Continua o Pedido?' ,mtConfirmation,[mbYes,mbNo],0) <> mrYes) then
      Result := False;
  end;
end;

function fnc_Qtd_Reserva_Pedido(ID_Pedido, Item_Pedido: Integer): Real;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'select sum(P.QTD2) QTD from PEDIDO_RESERVA P '
                       + 'where P.ID_PEDIDO = :ID_PEDIDO and P.ITEM_PEDIDO = :ITEM_PEDIDO ';
    sds.ParamByName('ID_PEDIDO').AsInteger   := ID_Pedido;
    sds.ParamByName('ITEM_PEDIDO').AsInteger := Item_Pedido;
    sds.Open;
    Result := StrToFloat(FormatFloat('0.0000',sds.FieldByName('QTD').AsFloat))
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Montar_CPF(CPF: String): String;
begin
  CPF    := Monta_Numero(CPF,0);
  Result := copy(CPF,1,3) + '.' + copy(CPF,4,3) + '.' + copy(CPF,7,3) + '-' + copy(CPF,10,2);
end;

function  SQLLocate(Tabela, CampoProcura, CampoProcura2, CampoRetorno, ValorFind, ValorFind2: string): string; overload;
var
  MyQuery: TSQLQuery;
begin
  if ValorFind <> '' then
  begin
    MyQuery := TSQLQuery.Create(dmDatabase);
    MyQuery.SQLConnection :=  dmDatabase.scoDados;
    MyQuery.Close;
    MyQuery.SQL.Clear ;
    MyQuery.SQL.Add('select ' + CampoRetorno + ' from ' + Tabela) ;
    MyQuery.SQL.Add('where  ' + CampoProcura + ' = ' + QuotedStr(ValorFind));
    MyQuery.SQL.Add('  AND  ' + CampoProcura2 + ' = ' + QuotedStr(ValorFind2));
    MyQuery.Open ;
    if not MyQuery.EOF then
      SQLLocate := MyQuery.FieldByName(CampoRetorno).AsString
    else
      SQLLocate := '' ;
    MyQuery.Destroy ;
  end
  else
    ValorFind := '' ;
end;

procedure prc_Controla_Gravacao(Tabela: String);
var
  sds: TSQLDataSet;
  Flag: Boolean;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr(Tabela);
    Flag := False;
    while not Flag do
    begin
      try
        sds.Close;
        sds.ExecSQL;
        Flag := True;
      except
        on E: Exception do
        begin
          Flag := False;
        end;
      end;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Buscar_Filial: Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT  FIRST 1 F.ID FROM FILIAL F WHERE F.inativo = ' + QuotedStr('N') + ' ORDER BY ID ';
    sds.Open;
    Result := sds.FieldByName('ID').AsInteger;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_utiliza_App: Boolean;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata  := True;
    sds.GetMetadata := False;
    sds.CommandText := 'select count(1) CONTADOR from FILIAL where UTILIZA_APP = ' + QuotedStr('S');
    sds.Open;
    Result := (sds.FieldByName('CONTADOR').AsInteger > 0);
  finally
    FreeAndNil(sds);
  end;
end;

procedure prc_Abrir_NFe_Site(Chave: String);
var
  vTexto: String;
begin
  vTexto := 'http://www.nfe.fazenda.gov.br/portal/consultaRecaptcha.aspx?tipoConsulta=resumo&tipoConteudo=7PhJ+gAVw2g=&nfe='+Chave+'&AspxAutoDetectCookieSupport=1';
  ShellExecute(Application.Handle,'open', pChar(vTexto) ,nil,nil,SW_SHOW);
end;

function fnc_Cor_Habilita(Habilitado: Boolean): TColor;
begin
  if Habilitado then
    Result := clWindow
  else
    Result := $00DDDDDD;
end;

function fnc_Controle_Data(Campo: String; iFilial: Integer) : TDate;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'select C.ID, C.FILIAL, C.NOTAENTRADA, C.ESTOQUE, C.FINANCEIRO '
                       + 'from CONTROLE_CADASTROS C '
                       + 'where C.FILIAL = :FILIAL ';
    sds.ParamByName('FILIAL').AsInteger := iFilial;
    sds.Open;
    if not(sds.FieldByName(Campo).IsNull) then
      if sds.FieldByName(Campo).AsDateTime > 10 then
        Result := sds.FieldByName(Campo).AsDateTime;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Proxima_Seq_Duplicata : Integer;
begin
  if SQLLocate('PARAMETROS_FIN','ID','USA_GEN_DUP','1') = 'S' then
    Result := dmDatabase.fnc_Generator_ID('GEN_DUPLICATA')
  else
    Result := dmDatabase.ProximaSequencia('DUPLICATA',0);
end;

function fnc_Proxima_NLote : TRetorno_NLote;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT MAX(NUM_LOTE) NUM_LOTE, MAX(NUM_ORDEM) NUM_ORDEM FROM LOTE ';
    sds.Open;
    Result.Num_Lote  := sds.FieldByName('NUM_LOTE').AsInteger;
    Result.Num_Ordem := sds.FieldByName('NUM_ORDEM').AsInteger;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Sql_Balanco_Est(Selecionados, Campo: String) : String;
var
  vComando: String;
begin
  vComando := 'with e as ( '
            + 'select em.tipo_es, em.gerar_custo, EM.ID_PRODUTO, EM.TAMANHO, sum(cast(EM.QTD2 as numeric(15,5))) QTD_ESTOQUE, PRO.REFERENCIA, '
            + '       PRO.NOME NOME_PRODUTO, PRO.UNIDADE, EM.ID_COR, PRO.SPED_TIPO_ITEM, PRO.TIPO_REG, PRO.usa_preco_cor,'
            + '       case '
            + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('00') + ' then ' + QuotedStr('00- Mercadoria para Revenda')
            + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('01') + ' then ' + QuotedStr('01- Materia-Prima')
            + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('02') + ' then ' + QuotedStr('02- Embalagem')
            + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('03') + ' then ' + QuotedStr('03- Produto em Processo')
            + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('04') + ' then ' + QuotedStr('04- Produto Acabado')
            + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('05') + ' then ' + QuotedStr('05- SubProduto')
            + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('06') + ' then ' + QuotedStr('06- Produto Intermediario')
            + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('07') + ' then ' + QuotedStr('07- Material de Uso e Consumo')
            + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('08') + ' then ' + QuotedStr('08- Ativo Imobilizado')
            + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('10') + ' then ' + QuotedStr('10- Outros Insumos')
            + '         when PRO.SPED_TIPO_ITEM = ' + QuotedStr('99') + ' then ' + QuotedStr('99- Outras')
            + '         else ' + QuotedStr('')
            + '         end TIPO_SPED, '
            + '       case '
            + '           when PRO.TIPO_REG = ' + QuotedStr('C') + ' then ' + QuotedStr('C - Material Consumo ')
            + '           when PRO.TIPO_REG = ' + QuotedStr('M') + ' then ' + QuotedStr('M - Materia Prima ')
            + '           when PRO.TIPO_REG = ' + QuotedStr('P') + ' then ' + QuotedStr('P - Produto Acabado ')
            + '           when PRO.TIPO_REG = ' + QuotedStr('S') + ' then ' + QuotedStr('S - Semi Acabado ')
            + '           when PRO.TIPO_REG = ' + QuotedStr('I') + ' then ' + QuotedStr('I - Imobilizado ')
            + '       else ' + QuotedStr('')
            + '       end DESC_TIPO_REG, '
            + 'iif(Em.TIPO_ES = ' + QuotedStr('E') + ' and em.GERAR_CUSTO = ' + QuotedStr('S') + ',sum(em.QTD * em.VLR_UNITARIO),0) VLR_ENTRADA, '
            + 'iif(Em.TIPO_ES = ' + QuotedStr('E') + ' and em.GERAR_CUSTO = ' + QuotedStr('S') + ',sum(em.QTD),0) QTD_ENTRADA, PRO.PERC_IPI, pro.id_ncm, pro.PERC_ICMS PERC_ICMS_PROD '
            + 'from PRODUTO pro '
            + 'left join ESTOQUE_MOV em on EM.ID_PRODUTO = PRO.ID '
            + 'where EM.FILIAL = :FILIAL and '
            + '      EM.DTMOVIMENTO <= :DTMOVIMENTO and '  + Campo + ' IN (' + Selecionados + ') '
            + '      and PRO.INATIVO = ''N'' and '
            + '      PRO.ESTOQUE = ''S'' '
            + 'group by em.tipo_es, em.gerar_custo, EM.ID_PRODUTO, EM.TAMANHO, PRO.REFERENCIA, PRO.NOME, '
            + 'PRO.UNIDADE, EM.ID_COR, PRO.SPED_TIPO_ITEM, PRO.PERC_IPI, PRO.TIPO_REG, pro.id_ncm, pro.PERC_ICMS, PRO.usa_preco_cor, pro.id_ncm) '
            + ', '
            + 'F AS '
            + '('
            + 'select E.ID_PRODUTO, E.TAMANHO, sum(e.QTD_ESTOQUE) QTD_ESTOQUE, e.REFERENCIA, '
            + '       e.NOME_PRODUTO, e.UNIDADE, e.ID_COR, e.SPED_TIPO_ITEM, e.TIPO_REG, '
            + '       e.TIPO_SPED, e.id_ncm, '
            + '       e.DESC_TIPO_REG, '
            + '       sum(e.VLR_ENTRADA) VLR_ENTRADA , '
            + '       sum(e.QTD_ENTRADA) QTD_ENTRADA, e.PERC_IPI, COMB.NOME NOME_COMBINACAO, '
            + '       cast(e.REFERENCIA || '' '' || e.NOME_produto || '' '' || coalesce(COMB.NOME, '''') as varchar(200)) REF_NOME_COR, '
            + '       cast(e.TIPO_REG || '' '' || e.nome_produto || '' '' || '' '' || e.ID_PRODUTO || '' '' || coalesce(COMB.NOME, '''') as varchar(200)) PRODUTO_NOME_COR, '
            + '       e.PERC_ICMS_PROD, '
            + '       case '
            + '         when (e.usa_preco_cor = ' + QuotedStr('S') + ' and ((e.tipo_reg = ' + QuotedStr('M') + ' or e.tipo_reg = ' + QuotedStr('C') + ')))  then '
            + '                        (select first 1 med.preco_medio from produto_cmedio med where med.id = e.id_produto and med.id_cor = e.id_cor '
            + '                            and med.data <= :DTMOVIMENTO order by med.data desc) '
            + '         else '
            + '                        (select first 1 med.preco_medio from produto_cmedio med where med.id = e.id_produto and med.id_cor = 0 '
            + '                            and med.data <= :DTMOVIMENTO order by med.data desc) '
            + '         end PRECO_MEDIO '
            + 'from e '
            + 'left join COMBINACAO COMB on E.ID_COR = COMB.ID '
            + 'group by E.ID_PRODUTO, E.TAMANHO, e.REFERENCIA, '
            + '       e.NOME_PRODUTO, e.UNIDADE, e.ID_COR, e.SPED_TIPO_ITEM, e.TIPO_REG, '
            + '       e.TIPO_SPED, e.id_ncm, '
            + '       e.DESC_TIPO_REG, '
            + '       e.PERC_IPI, COMB.NOME, E.PERC_ICMS_PROD, e.usa_preco_cor '
            + '), '
            + 'g as '
            + '( '
            + 'select '
            + '  ROUND(case '
            + '    when F.preco_medio > 0 then F.preco_medio '
            + '    when (F.vlr_entrada > 0) and (F.qtd_entrada > 0) then round(F.vlr_entrada / F.qtd_entrada,5) '
            + '    else 0 '
            + '    end,5) PRECO_MEDIO_CALC, f.* '
            + 'from f) '
            + 'select ROUND(G.PRECO_MEDIO_CALC * G.QTD_ESTOQUE,2) VLR_TOTAL, NCM.NCM, G.*, '
            + '  CASE '
            + '    WHEN coalesce(G.PERC_ICMS_PROD,0) > 0 THEN G.PERC_ICMS_PROD '
            + '    ELSE (select first (1) ENT.PERC_ICMS '
            + '        from ESTOQUE_MOV ENT '
            + '        where ENT.TIPO_ES = ' + QuotedStr('E') + ' and '
            + '              ENT.GERAR_CUSTO = ' + QuotedStr('S') + ' and '
            + '              ENT.ID_PRODUTO = G.ID_PRODUTO and '
            + '              ENT.tamanho = G.TAMANHO AND '
            + '              ENT.FILIAL = :FILIAL and '
            + '              ENT.DTMOVIMENTO <= :DTMOVIMENTO and '
            + '              ENT.TIPO_ES = ' + QuotedStr('E') + ' and '
            + '              ENT.PERC_ICMS > 0 '
            + '        order by ENT.ID desc) '
            + '    END PERC_ICMS '
            + 'from G '
            + 'inner join TAB_NCM NCM on G.ID_NCM = NCM.ID ';
  Result := vComando;
end;

function decimais_prvenda : String;
var
  vQtdAux: Integer;
begin
  vQtdAux := StrToIntDef(SQLLocate('PARAMETROS_PROD','ID','CASAS_DECIMAIS_PRVENDA','1'),4);
  if vQtdAux <= 0 then
    vQtdAux := 4;
  Result := Monta_Numero('0',vQtdAux);
end;

function fnc_pedido_item_faturado(ID, Item: Integer) : Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'select I.QTD_RESTANTE, I.QTD_FATURADO, I.QTD_CANCELADO '
                       + 'from PEDIDO_ITEM I '
                       + 'where I.ID = :ID and '
                       + '      I.ITEM = :ITEM ';
    sds.ParamByName('ID').AsInteger   := ID;
    sds.ParamByName('ITEM').AsInteger := Item;
    sds.Open;
    Result := ((StrToFloat(FormatFloat('0.0000',sds.FieldByName('QTD_RESTANTE').AsFloat)) <= 0) and
               (StrToFloat(FormatFloat('0.0000',sds.FieldByName('QTD_FATURADO').AsFloat)) >= 0));
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Proxima_Seq_Pedido : Integer;
begin
  if SQLLocate('PARAMETROS_PED','ID','USA_GENERATOR','1') = 'S' then
    Result := dmDatabase.fnc_Generator_ID('GEN_PEDIDO')
  else
    Result := dmDatabase.ProximaSequencia('PEDIDO',0);
end;

function fnc_Busca_Estoque_Localizacao(Filial, ID_PRODUTO, ID_Cor: Integer; Localizacao: String; ID_Estoque: Integer): Real;
var
  sds: TSQLDataSet;
begin
  if trim(Localizacao) = EmptyStr then
  begin
    Result := 0;
    exit;
  end;

  if ID_Cor <= 0 then
    ID_Cor := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT QTD FROM ESTOQUE_LOCAL ' +
                       'WHERE FILIAL = ' + IntToStr(Filial) +
                       ' AND ID_PRODUTO = ' + IntToStr(ID_PRODUTO) +
                       ' AND ID_COR = ' + IntToStr(ID_COR) +
                       ' AND LOCALIZACAO = ' + QuotedStr(Localizacao);
    sds.Open;
    Result := StrToFloat(FormatFloat('0.0000',sds.FieldByName('QTD').AsFloat));
    if ID_Estoque > 0 then
    begin
      sds.Close;
      sds.CommandText := 'select e.qtd2 from estoque_mov e '
                       + ' where e.id = ' + IntToStr(ID_Estoque);
      sds.Open;
      if not sds.IsEmpty then
        Result := StrToFloat(FormatFloat('0.0000',Result - sds.FieldByName('QTD2').AsFloat));
    end;

  finally
    FreeAndNil(sds);
  end;
end;
function Formatar_NumeroNFse(aValue: String;
  aInt: Integer): String;
var
  xAno : String;
  aNumero : Integer;
begin
  if aValue = EmptyStr then
    exit;
  xAno := copy(aValue,1,4);
  aNumero := StrToInt(copy(aValue,aInt,Length(aValue)));
  Result := xAno + IntToStr(aNumero);
end;

function Formatar_NumeroNFse(aValue, aFormat: String): String;
var
  xAno, xNumero : String;
  i, tamanho : integer;
begin
  xAno := copy(aValue ,1,4);
  tamanho := Length(aValue);
  i := StrToIntDef(copy(aValue,5,tamanho),0);
  xNumero :=  FormatFloat(aFormat, i);
  Result := xAno + xNumero;
end;

function ChaveAcessoNFSe(AUF: Integer; const ACNPJ: String; ASerie : String; ANumero, ACodigo, AModelo: Integer): String;
var
  vUF, vSerie, vNumero,
  vCodigo, vModelo: String;
begin
  vUF          := Poem_Zeros(AUF, 2);
  vModelo      := Poem_Zeros(AModelo, 2);
  vSerie       := Poem_Zeros(ASerie, 3);
  vNumero      := Poem_Zeros(ANumero, 9);
  vCodigo      := Poem_Zeros(ACodigo, 9);

  Result := vUF + ACNPJ + vModelo + vSerie + vNumero + vCodigo;
end;

function VerificaErroNFSe(AValue : String; FCodigo : Integer) : Boolean;
begin
  Result := False;
  if (pos('ERRO', UpperCase(AValue)) > 0) then
  begin
    Result := True;
    Exit;
  end;
  if ((FCodigo <> 100) or (FCodigo <> 5023)) then
  begin
    Result := True;
    Exit;
  end;
end;


end.
