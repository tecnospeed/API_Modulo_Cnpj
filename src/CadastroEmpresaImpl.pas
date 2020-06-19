unit CadastroEmpresaImpl;

interface

uses
  interfaces, IdHTTP, IdMultipartFormData, Classes, IdSSLOpenSSL;

type

  TConfiguracao = class(TInterfacedObject, IConfiguracao)
  private
    FBaseUrl: string;
    FEmail: string;
    FSenha: string;
    FGerar: Boolean;
  public
    function BaseUrl(const AValue: String): IConfiguracao;
    function Email(const AValue: String): IConfiguracao;
    function Senha(const AValue: String): IConfiguracao;
    function Gerar(const AValue: Boolean): IConfiguracao;

    function AsBaseUrl: String;
    function AsEmail: String;
    function AsGerar: string;
    function AsSenha: String;

    class function New: IConfiguracao;

    constructor Create;
    destructor Destroy; override;
  end;

  TContrato = class(TInterfacedObject, IContrato)
  private
    FSituacao: TTipoSituacao;
    FTipoContrato: TTipoContrato;
    FMotivo: string;
  public
    function Situacao(const AValue: TTipoSituacao): IContrato;
    function TipoContrato(const AValue: TTipoContrato): IContrato;
    function Motivo(const AValue: string): IContrato;

    function AsSituacao: String;
    function AsTipoContrato: String;
    function AsMotivo: String;

    class function New: IContrato;

    constructor Create;
    destructor Destroy; override;
  end;

  TDadosEmpresa = class(TInterfacedObject, IDadosEmpresa)
  private
    FHandle: string;
    FCidade: string;
    FCNPJ: string;
    FDescricao: string;
    FEndereco: string;
    FGrupo: string;
    FInscricaoEstadual: string;
    FInscricaoMunicipal: string;
    FRazaoSocial: string;
    FSituacao: TTipoSituacao;
    FTelefone: string;
    FEmail: string;
    FIdentificacao: string;
    FUsingCertificadoMatriz: TTrueOrFalse;
    FSelecionaA3Saas: TTrueOrFalse;
    FSelecionaCertiSAT: TTrueOrFalse;
    FSenhacertificado: string;
    FTipoCertificado: TTipoCertificado;
    FCertificado: string ;
    FMotivo: string;
    FPinCode: string;
    FNFSe: IContrato;
    FNFCe: IContrato;
    FNFe: IContrato;
    FMDFe: IContrato;
    FCTe: IContrato;
    FCFeSat: IContrato;
    FGNRe: IContrato;
    FCTeOs: IContrato;
  public
    function Handle(const AValue: String): IDadosEmpresa;
    function Cidade(const AValue: String): IDadosEmpresa;
    function CNPJ(const AValue: String): IDadosEmpresa;
    function Descricao(const AValue: String): IDadosEmpresa;
    function Endereco(const AValue: String): IDadosEmpresa;
    function Grupo(const AValue: String): IDadosEmpresa;
    function InscricaoEstadual(const AValue: String): IDadosEmpresa;
    function InscricaoMunicipal(const AValue: String): IDadosEmpresa;
    function RazaoSocial(const AValue: String): IDadosEmpresa;
    function Situacao(const AValue: TTipoSituacao): IDadosEmpresa;
    function Telefone(const AValue: String): IDadosEmpresa;
    function Email(const AValue: String): IDadosEmpresa;
    function Identificacao(const AValue: String): IDadosEmpresa;
    function UsingCertificadoMatriz(const AValue: TTrueOrFalse): IDadosEmpresa;
    function SelecionaA3Saas(const AValue: TTrueOrFalse): IDadosEmpresa;
    function SelecionaCertiSAT(const AValue: TTrueOrFalse): IDadosEmpresa;
    function Senhacertificado(const AValue: String): IDadosEmpresa;
    function TipoCertificado(const AValue: TTipoCertificado): IDadosEmpresa;
    function Certificado(const AValue: String): IDadosEmpresa;
    function Motivo(const AValue: String): IDadosEmpresa;
    function Pincode(const AValue: String): IDadosEmpresa;

    function NFSe(const AValue: IContrato): IDadosEmpresa;
    function CFeSat(const AValue: IContrato): IDadosEmpresa;
    function CTe(const AValue: IContrato): IDadosEmpresa;
    function CTeOs(const AValue: IContrato): IDadosEmpresa;
    function GNRe(const AValue: IContrato): IDadosEmpresa;
    function MDFe(const AValue: IContrato): IDadosEmpresa;
    function NFCe(const AValue: IContrato): IDadosEmpresa;
    function NFe(const AValue: IContrato): IDadosEmpresa;

    function AsHandle: String;
    function AsCidade: String;
    function AsCNPJ: String;
    function AsDescricao: String;
    function AsEndereco: String;
    function AsGrupo: String;
    function AsInscricaoEstadual: String;
    function AsInscricaoMunicipal: String;
    function AsRazaoSocial: String;
    function AsSituacao: string;
    function AsTelefone: String;
    function AsEmail: String;
    function AsIdentificacao: String;
    function AsUsingCertificadoMatriz: String;
    function AsSelecionaA3Saas: String;
    function AsSelecionaCertiSAT: String;
    function AsSenhacertificado: String;
    function AsTipoCertificado: String;
    function AsCertificado: String;
    function AsMotivo: String;
    function AsPincode: String;

    function AsNFSe: IContrato;
    function AsCFeSat: IContrato;
    function AsCTe: IContrato;
    function AsCTeOs: IContrato;
    function AsGNRe: IContrato;
    function AsMDFe: IContrato;
    function AsNFCe: IContrato;
    function AsNFe: IContrato;

    class function New: IDadosEmpresa;
    constructor Create;
    destructor Destroy; override;
  end;

  TCadastroEmpresa = class(TInterfacedObject, ICadastroEmpresa)
  private
    FToken: string;
    FReturn: string;
    FDadosEmpresa: IDadosEmpresa;
    FConfiguracao: IConfiguracao;
    FUrl: string;
    FIdHTTP: TIdHTTP;
    FHandler: TIdSSLIOHandlerSocketOpenSSL;
    //FParams: TIdMultiPartFormDataStream;

    procedure doGenerateToken;
    procedure doPreencheParametros(const AParams : TIdMultiPartFormDataStream);
    procedure doConfiguraUrlCadastro;
    procedure doConfiguraUrlAtualizacao;

    function doPost(const AParams : TIdMultiPartFormDataStream): string;
    function doPut(const AParams : TIdMultiPartFormDataStream): string;
    function doDelete: string;

    procedure doConfiguraComponente(const AParams : TIdMultiPartFormDataStream);
    procedure doConfiguraUrlDelecao(const AHandleEmpresa: string);

    function TrataUrl(const AUrl, ARecurso: string): string;
    function TrataExcception(const AValue: string): string;

  public
    function AsReturn: String;
    function AsToken: String;
    function GetToken: ICadastroEmpresa;
    function SetToken(const AValue: string): ICadastroEmpresa;

    function Cadastrar: ICadastroEmpresa;
    function Atualizar: ICadastroEmpresa;
    function Deletar(const AHandleEmpresa: string): ICadastroEmpresa;

    class function New(const AConfiguracao: IConfiguracao): ICadastroEmpresa; overload;
    class function New(const ADadosEmpresa: IDadosEmpresa; const AConfiguracao: IConfiguracao): ICadastroEmpresa; overload;

    constructor Create(const AConfiguracao: IConfiguracao); overload;
    constructor Create(const ADadosEmpresa: IDadosEmpresa; const AConfiguracao: IConfiguracao); overload;
    destructor Destroy; override;

  end;

implementation

uses
  SysUtils, StrUtils, uLkJSON;

{ TContrato }

function TContrato.AsMotivo: String;
begin
  Result := FMotivo;
end;

function TContrato.AsSituacao: String;
begin
  Result := IfThen(FSituacao = tsAtivo, '0', '1');
end;

function TContrato.AsTipoContrato: String;
begin
  case FTipoContrato of
    tcNone:  Result:= '-1';
    tcBilhetagem: Result := '0';
    tcIlimitado: Result :=  '1';
  end;
end;

constructor TContrato.Create;
begin

end;

destructor TContrato.Destroy;
begin

  inherited;
end;

function TContrato.Motivo(const AValue: String): IContrato;
begin
  Result := Self;
  FMotivo := AValue;
end;

class function TContrato.New: IContrato;
begin
  Result := Self.Create; 
end;

function TContrato.Situacao(const AValue: TTipoSituacao): IContrato;
begin
  Result := Self;
  FSituacao := AValue;
end;

function TContrato.TipoContrato(const AValue: TTipoContrato): IContrato;
begin
  Result := Self;
  FTipoContrato := AValue;
end;

{ TConfiguracao }

function TConfiguracao.AsBaseUrl: String;
begin
  Result := FBaseUrl;
end;

function TConfiguracao.AsEmail: String;
begin
  Result := FEmail;
end;

function TConfiguracao.AsGerar: String;
begin
  Result := IfThen(FGerar, '0', '1');
end;

function TConfiguracao.AsSenha: String;
begin
  Result := FSenha;
end;

function TConfiguracao.BaseUrl(const AValue: String): IConfiguracao;
begin
  Result := Self;
  FBaseUrl := AValue;
end;


function TConfiguracao.Email(const AValue: String): IConfiguracao;
begin
  Result := Self;
  FEmail := AValue;
end;

function TConfiguracao.Gerar(const AValue: Boolean): IConfiguracao;
begin
  Result := Self;
  FGerar := AValue;
end;

function TConfiguracao.Senha(const AValue: String): IConfiguracao;
begin
  Result := Self;
  FSenha := AValue;
end;

constructor TConfiguracao.Create;
begin

end;

destructor TConfiguracao.Destroy;
begin

  inherited;
end;

class function TConfiguracao.New: IConfiguracao;
begin
  Result := Self.Create;
end;

{ TDadosEmpresa }

function TDadosEmpresa.AsCidade: String;
begin
  Result := FCidade;
end;

function TDadosEmpresa.AsCNPJ: String;
begin
  Result := FCNPJ;
end;

function TDadosEmpresa.AsDescricao: String;
begin
  Result := FDescricao;
end;

function TDadosEmpresa.AsEndereco: String;
begin
  Result := FEndereco;
end;

function TDadosEmpresa.AsGrupo: String;
begin
  Result := FGrupo;
end;

function TDadosEmpresa.AsIdentificacao: String;
begin
  Result := FIdentificacao;
end;

function TDadosEmpresa.AsInscricaoEstadual: String;
begin
  Result := FInscricaoEstadual;
end;

function TDadosEmpresa.AsInscricaoMunicipal: String;
begin
  Result := FInscricaoMunicipal;
end;

function TDadosEmpresa.AsNFSe: IContrato;
begin
  Result := FNFSe;
end;

function TDadosEmpresa.AsRazaoSocial: String;
begin
  Result := FRazaoSocial;
end;

function TDadosEmpresa.AsSituacao: string;
begin
  Result := IfThen(FSituacao = tsAtivo, '0', '1');
end;

function TDadosEmpresa.AsTelefone: String;
begin
  Result := FTelefone;
end;

function TDadosEmpresa.Cidade(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FCidade := AValue;
end;

function TDadosEmpresa.CNPJ(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FCNPJ := AValue;
end;

function TDadosEmpresa.Descricao(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FDescricao := AValue;
end;


function TDadosEmpresa.Endereco(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FEndereco := AValue;
end;

function TDadosEmpresa.Grupo(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FGrupo := AValue;
end;

function TDadosEmpresa.Identificacao(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FIdentificacao := AValue;
end;

function TDadosEmpresa.InscricaoEstadual(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FInscricaoEstadual := AValue;
end;

function TDadosEmpresa.InscricaoMunicipal(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FInscricaoMunicipal := AValue;
end;


function TDadosEmpresa.NFSe(const AValue: IContrato): IDadosEmpresa;
begin
  Result := Self;
  FNFSe := AValue;
end;

function TDadosEmpresa.RazaoSocial(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FRazaoSocial := AValue;
end;

function TDadosEmpresa.Situacao(const AValue: TTipoSituacao): IDadosEmpresa;
begin
  Result := Self;
  FSituacao := AValue;
end;

function TDadosEmpresa.Telefone(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FTelefone := AValue;
end;

constructor TDadosEmpresa.Create;
begin

end;

destructor TDadosEmpresa.Destroy;
begin

  inherited;
end;

class function TDadosEmpresa.New: IDadosEmpresa;
begin
  Result := Self.Create;
end;

function TDadosEmpresa.AsUsingCertificadoMatriz: String;
begin
  Result := IfThen(FUsingCertificadoMatriz = tfTrue, '0','1');
end;

function TDadosEmpresa.UsingCertificadoMatriz(const AValue: TTrueOrFalse): IDadosEmpresa;
begin
  Result := Self;
  FUsingCertificadoMatriz := AValue;
end;

function TDadosEmpresa.AsSelecionaA3Saas: String;
begin
  Result := IfThen(FSelecionaA3Saas = tfTrue, '0','1');
end;

function TDadosEmpresa.AsSelecionaCertiSAT: String;
begin
  Result := IfThen(FSelecionaCertiSAT = tfTrue, '0','1');
end;

function TDadosEmpresa.AsSenhacertificado: String;
begin
  Result := FSenhacertificado;
end;

function TDadosEmpresa.AsTipoCertificado: String;
begin
  Result := 'CURRENT_USER_STORE';
end;

function TDadosEmpresa.SelecionaA3Saas(const AValue: TTrueOrFalse): IDadosEmpresa;
begin
  Result := Self;
  FSelecionaA3Saas := AValue;
end;

function TDadosEmpresa.SelecionaCertiSAT(const AValue: TTrueOrFalse): IDadosEmpresa;
begin
  Result := Self;
  FSelecionaCertiSAT := AValue;
end;

function TDadosEmpresa.Senhacertificado(
  const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FSenhacertificado := AValue;
end;

function TDadosEmpresa.TipoCertificado(const AValue: TTipoCertificado): IDadosEmpresa;
begin
  Result := Self;
  FTipoCertificado := AValue;
end;

function TDadosEmpresa.AsCertificado: String;
begin
  Result := FCertificado;
end;

function TDadosEmpresa.Certificado(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FCertificado := AValue;
end;

function TDadosEmpresa.AsCFeSat: IContrato;
begin
  Result := FCFeSat;
end;

function TDadosEmpresa.AsCTe: IContrato;
begin
  Result := FCTe;
end;

function TDadosEmpresa.AsCTeOs: IContrato;
begin
  Result := FCTeOs;
end;

function TDadosEmpresa.AsGNRe: IContrato;
begin
  Result := FGNRe;
end;

function TDadosEmpresa.AsMDFe: IContrato;
begin
  Result := FMDFe;
end;

function TDadosEmpresa.AsNFCe: IContrato;
begin
  Result := FNFCe;
end;

function TDadosEmpresa.AsNFe: IContrato;
begin
  Result := FNFe;
end;

function TDadosEmpresa.CFeSat(const AValue: IContrato): IDadosEmpresa;
begin
  Result := Self;
  FCFeSat := AValue;
end;

function TDadosEmpresa.CTe(const AValue: IContrato): IDadosEmpresa;
begin
  Result := Self;
  FCTe := AValue;
end;

function TDadosEmpresa.CTeOs(const AValue: IContrato): IDadosEmpresa;
begin
  Result := Self;
  FCTeOs := AValue;
end;

function TDadosEmpresa.GNRe(const AValue: IContrato): IDadosEmpresa;
begin
  Result := Self;
  FGNRe := AValue;
end;

function TDadosEmpresa.MDFe(const AValue: IContrato): IDadosEmpresa;
begin
  Result := Self;
  FMDFe := AValue;
end;

function TDadosEmpresa.NFCe(const AValue: IContrato): IDadosEmpresa;
begin
  Result := Self;
  FNFCe := AValue;
end;

function TDadosEmpresa.NFe(const AValue: IContrato): IDadosEmpresa;
begin
  Result := Self;
  FNFe := AValue;
end;

function TDadosEmpresa.AsEmail: String;
begin
  Result := FEmail;
end;

function TDadosEmpresa.Email(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FEmail := AValue;
end;

function TDadosEmpresa.AsMotivo: String;
begin
  Result := FMotivo;
end;

function TDadosEmpresa.AsPincode: String;
begin
  Result := FPinCode;
end;

function TDadosEmpresa.Motivo(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FMotivo := AValue;
end;

function TDadosEmpresa.Pincode(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FPinCode := AValue;
end;

function TDadosEmpresa.AsHandle: String;
begin
  Result := FHandle;
end;

function TDadosEmpresa.Handle(const AValue: String): IDadosEmpresa;
begin
  Result := Self;
  FHandle := AValue;
end;

{ TCadastroEmpresa }

function TCadastroEmpresa.AsReturn: String;
begin
  Result := FReturn;
end;

function TCadastroEmpresa.AsToken: String;
begin
  Result := FToken;
end;

constructor TCadastroEmpresa.Create(const ADadosEmpresa: IDadosEmpresa;
  const AConfiguracao: IConfiguracao);
begin
  FDadosEmpresa := ADadosEmpresa;
  Self.Create(AConfiguracao);
end;

constructor TCadastroEmpresa.Create(const AConfiguracao: IConfiguracao);
begin
  FConfiguracao := AConfiguracao;
  FIdHTTP := TIdHTTP.Create(nil);
  FHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  FIdHTTP.IOHandler := FHandler;
end;

class function TCadastroEmpresa.New(const AConfiguracao: IConfiguracao): ICadastroEmpresa;
begin
  Result := Self.Create(AConfiguracao);
end;

destructor TCadastroEmpresa.Destroy;
begin
  FIdHTTP.Free;
  FHandler.Free;
  inherited;
end;

procedure TCadastroEmpresa.doGenerateToken;
const
  cUriToken = 'api/v1/software-house/token';
var
  LResult, LUrl: string;
  LParams : TIdMultiPartFormDataStream;
  Json: TlkJSONobject;
begin
  Assert(Trim(FConfiguracao.AsEmail) <> '','Login não informado para gerar o Token..');
  Assert(Trim(FConfiguracao.AsSenha) <> '','Senha não informada para gerar o Token.');
  try
    LParams := TIdMultiPartFormDataStream.Create;
    Json := nil;
    try
      LParams.AddFormField('email', FConfiguracao.AsEmail);
      LParams.AddFormField('senha', FConfiguracao.AsSenha);
      LParams.AddFormField('gerar', FConfiguracao.AsGerar);

      LUrl := TrataUrl(FConfiguracao.AsBaseUrl, cUriToken);

      LResult := FIdHTTP.Post(LUrl, LParams);
      Json := TlkJSON.ParseText(LResult) as TlkJSONobject;
      FToken := Json['dados'].Field['token'].Value;
    finally
      LParams.Free;
      Json.Free;
    end;
  except
    on E: Exception do
      raise Exception.Create(E.Message);
  end;
end;

function TCadastroEmpresa.GetToken: ICadastroEmpresa;
begin
  Result := Self;
  doGenerateToken;
end;

class function TCadastroEmpresa.New(const ADadosEmpresa: IDadosEmpresa;
  const AConfiguracao: IConfiguracao): ICadastroEmpresa;
begin
  Result := Self.Create(ADadosEmpresa, AConfiguracao);
end;

function TCadastroEmpresa.SetToken(const AValue: string): ICadastroEmpresa;
begin
  if (FToken = EmptyStr) and not(SameText(FToken, AValue)) then
    FToken := AValue;
end;

function TCadastroEmpresa.TrataExcception(const AValue: string): string;
var
  LReturn: TStringList;
begin
  LReturn := TStringList.Create;;
  try
    LReturn.Delimiter := ':';
    LReturn.DelimitedText := AValue;
    Result := LReturn[1];
  finally
    LReturn.Free
  end;
end;

function TCadastroEmpresa.Cadastrar: ICadastroEmpresa;
var
  LParams : TIdMultiPartFormDataStream;
begin
  Result := Self;
  LParams := TIdMultiPartFormDataStream.Create;
  try
    try
      doPreencheParametros(LParams);
      doConfiguraUrlCadastro;
      FReturn := doPost(LParams);
    except
      on E: EIdHTTPProtocolException do
        raise Exception.Create(TrataExcception(e.ErrorMessage));
    end;
  finally
    LParams.Free;
  end;
end;

function TCadastroEmpresa.TrataUrl(const AUrl, ARecurso: string): string;
var
  LPos: Integer;
begin
  LPos := pos('/', Copy(AUrl, length(AUrl) -1, 1));
  if LPos = 0 then
    Result := AUrl + '/' + ARecurso
  else
    Result := ARecurso + ARecurso;
end;

procedure TCadastroEmpresa.doPreencheParametros(const AParams : TIdMultiPartFormDataStream);
const
  cContentType = 'application/octet-stream';
begin
  if FDadosEmpresa.AsGrupo <> EmptyStr then
    AParams.AddFormField('idgrupo', FDadosEmpresa.AsGrupo );
  if FDadosEmpresa.AsCidade <> EmptyStr then
    AParams.AddFormField('idcidade', FDadosEmpresa.AsCidade);
  if FDadosEmpresa.AsCNPJ <> EmptyStr then
    AParams.AddFormField('cnpj', FDadosEmpresa.AsCNPJ);
  if FDadosEmpresa.AsRazaoSocial <> EmptyStr then
    AParams.AddFormField('razaosocial', FDadosEmpresa.AsRazaoSocial);
  if FDadosEmpresa.AsInscricaoMunicipal <> EmptyStr then
    AParams.AddFormField('inscricaomunicipal', FDadosEmpresa.AsInscricaoMunicipal);
  if FDadosEmpresa.AsInscricaoEstadual <> EmptyStr then
    AParams.AddFormField('inscricaoestadual', FDadosEmpresa.AsInscricaoEstadual);
  if FDadosEmpresa.AsEmail <> EmptyStr then
    AParams.AddFormField('email', FDadosEmpresa.AsEmail);
  if FDadosEmpresa.AsIdentificacao <> EmptyStr then
    AParams.AddFormField('identificacao', FDadosEmpresa.AsIdentificacao);
  if FDadosEmpresa.AsSituacao <> EmptyStr then
    AParams.AddFormField('situacao', FDadosEmpresa.AsSituacao);
  if FDadosEmpresa.AsUsingCertificadoMatriz <> EmptyStr then
    AParams.AddFormField('usingCertificadoMatriz', FDadosEmpresa.AsUsingCertificadoMatriz);
  if FDadosEmpresa.AsDescricao <> EmptyStr then
    AParams.AddFormField('descricao', FDadosEmpresa.AsDescricao);
  if FDadosEmpresa.AsEndereco <> EmptyStr then
    AParams.AddFormField('endereco', FDadosEmpresa.AsEndereco);
  if FDadosEmpresa.AsTelefone <> EmptyStr then
    AParams.AddFormField('telefone', FDadosEmpresa.AsTelefone);
  if FDadosEmpresa.AsMotivo <> EmptyStr then
    AParams.AddFormField('motivo', FDadosEmpresa.AsMotivo);

  if Assigned(FDadosEmpresa.AsCTe) then
  begin
    AParams.AddFormField('cte[situacao]', FDadosEmpresa.AsCTe.AsSituacao);
    AParams.AddFormField('cte[tipocontrato]', FDadosEmpresa.AsCTe.AsTipoContrato);
    if FDadosEmpresa.AsCTe.AsMotivo <> EmptyStr then
      AParams.AddFormField('cte[motivo]', FDadosEmpresa.AsCTe.AsMotivo);
  end;

  if Assigned(FDadosEmpresa.AsMDFe) then
  begin
    AParams.AddFormField('mdfe[situacao]', FDadosEmpresa.AsMDFe.AsSituacao);
    AParams.AddFormField('mdfe[tipocontrato]', FDadosEmpresa.AsMDFe.AsTipoContrato);
    if FDadosEmpresa.AsMDFe.AsMotivo <> EmptyStr then
      AParams.AddFormField('mdfe[motivo]', FDadosEmpresa.AsMDFe.AsMotivo);
  end;

  if Assigned(FDadosEmpresa.AsNFCe) then
  begin
    AParams.AddFormField('nfce[situacao]', FDadosEmpresa.AsNFCe.AsSituacao);
    AParams.AddFormField('nfce[tipocontrato]', FDadosEmpresa.AsNFCe.AsTipoContrato);
    if FDadosEmpresa.AsNFCe.AsMotivo <> EmptyStr then
      AParams.AddFormField('nfce[motivo]', FDadosEmpresa.AsNFCe.AsMotivo);
  end;

  if Assigned(FDadosEmpresa.AsNFe) then
  begin
    AParams.AddFormField('nfe[situacao]', FDadosEmpresa.AsNFe.AsSituacao);
    AParams.AddFormField('nfe[tipocontrato]', FDadosEmpresa.AsNFe.AsTipoContrato);
    if FDadosEmpresa.AsNFe.AsMotivo <> EmptyStr then
      AParams.AddFormField('nfe[motivo]', FDadosEmpresa.AsNFe.AsMotivo);
  end;

  if Assigned(FDadosEmpresa.AsNFSe) then
  begin
    AParams.AddFormField('nfse[situacao]', FDadosEmpresa.AsNFSe.AsSituacao);
    AParams.AddFormField('nfse[tipocontrato]', FDadosEmpresa.AsNFSe.AsTipoContrato);
    if FDadosEmpresa.AsNFSe.AsMotivo <> EmptyStr then
      AParams.AddFormField('nfse[motivo]', FDadosEmpresa.AsNFSe.AsMotivo);
  end;

  if Assigned(FDadosEmpresa.AsCTeOs) then
  begin
    AParams.AddFormField('cteos[situacao]', FDadosEmpresa.AsCTeOs.AsSituacao);
    AParams.AddFormField('cteos[tipocontrato]', FDadosEmpresa.AsCTeOs.AsTipoContrato);
    if FDadosEmpresa.AsCTeOs.AsMotivo <> EmptyStr then
      AParams.AddFormField('cteos[motivo]', FDadosEmpresa.AsCTeOs.AsMotivo);
  end;

  if Assigned(FDadosEmpresa.AsGNRe) then
  begin
    AParams.AddFormField('gnre[situacao]', FDadosEmpresa.AsGNRe.AsSituacao);
    AParams.AddFormField('gnre[tipocontrato]', FDadosEmpresa.AsGNRe.AsTipoContrato);
    if FDadosEmpresa.AsGNRe.AsMotivo <> EmptyStr then
      AParams.AddFormField('gnre[motivo]', FDadosEmpresa.AsGNRe.AsMotivo);
  end;

  if Assigned(FDadosEmpresa.AsCFeSat) then
  begin
    AParams.AddFormField('cfesat[situacao]', FDadosEmpresa.AsCFeSat.AsSituacao);
    AParams.AddFormField('cfesat[tipocontrato]', FDadosEmpresa.AsCFeSat.AsTipoContrato);
    if FDadosEmpresa.AsCFeSat.AsMotivo <> EmptyStr then
      AParams.AddFormField('cfesat[motivo]', FDadosEmpresa.AsCFeSat.AsMotivo);
  end;

  if FDadosEmpresa.AsTipoCertificado <> EmptyStr then
    AParams.AddFormField('tipocertificado', FDadosEmpresa.AsTipoCertificado);
  if FDadosEmpresa.AsSenhacertificado <> EmptyStr then
    AParams.AddFormField('senhacertificado', FDadosEmpresa.AsSenhacertificado);
  if FDadosEmpresa.AsSelecionaA3Saas <> EmptyStr then
    AParams.AddFormField('selecionaA3Saas', FDadosEmpresa.AsSelecionaA3Saas);
  if FDadosEmpresa.AsSelecionaCertiSAT <> EmptyStr then
    AParams.AddFormField('selecionaCertiSAT', FDadosEmpresa.AsSelecionaCertiSAT);
  if FDadosEmpresa.AsPincode <> EmptyStr then
    AParams.AddFormField('pincode', FDadosEmpresa.AsPincode);

  if FDadosEmpresa.AsCertificado <> EmptyStr then
    AParams.AddFile('certificadobinario', FDadosEmpresa.AsCertificado, cContentType);
end;

function TCadastroEmpresa.doPost(const AParams : TIdMultiPartFormDataStream): string;
begin
  FIdHTTP.Request.ContentType := EmptyStr;
  Result := FIdHTTP.Post(FUrl, AParams);
end;

function TCadastroEmpresa.doPut(const AParams : TIdMultiPartFormDataStream): string;
begin
  Result := FIdHTTP.Put(FUrl, AParams);
end;

function TCadastroEmpresa.doDelete: string;
begin
   // Delphi 2010 para baixo
  {$IF CompilerVersion < 21}
    raise Exception.Create('Atualize o Indy para a versão 10 e remova essa restrição');
  {$ELSE}
    FIdHTTP.Request.ContentType := 'application/json; charset=utf-8';
    FIdHTTP.Delete(FUrl);
  {$IFEND}
end;

function TCadastroEmpresa.Atualizar: ICadastroEmpresa;
var
  LParams : TIdMultiPartFormDataStream;
begin
  Result := Self;
  LParams := TIdMultiPartFormDataStream.Create;
  try
    doPreencheParametros(LParams);
    doConfiguraUrlAtualizacao;
    doConfiguraComponente(LParams);
    FReturn := doPut(LParams);
  finally
    LParams.Free;
  end;
end;

procedure TCadastroEmpresa.doConfiguraComponente(const AParams : TIdMultiPartFormDataStream);
begin
  FIdHTTP.Request.ContentType := 'multipart/form-data; boundary=' + AParams.Boundary;
end;

procedure TCadastroEmpresa.doConfiguraUrlCadastro;
const
  cUri = 'api/v1/empresa?token=%s';
var
  LUrl: string;
begin
  LUrl := TrataUrl(FConfiguracao.AsBaseUrl, cUri);
  if FToken = EmptyStr then doGenerateToken;
  LUrl := Format(LUrl, [FToken]);
  FUrl := LUrl;
end;

procedure TCadastroEmpresa.doConfiguraUrlAtualizacao;
const
  cUri = 'api/v1/empresa/%s?token=%s';
var
  LUrl: string;
begin
  Assert(Trim(FDadosEmpresa.AsHandle) <> '','Informe o código da empresa para atualizar.');
  LUrl := TrataUrl(FConfiguracao.AsBaseUrl, cUri);
  if FToken = EmptyStr then doGenerateToken;
  LUrl := Format(LUrl, [FDadosEmpresa.AsHandle, FToken]);
  FUrl := LUrl;
end;

function TCadastroEmpresa.Deletar(const AHandleEmpresa: string): ICadastroEmpresa;
var
  LParams : TIdMultiPartFormDataStream;
begin
  Result := Self;
  LParams := TIdMultiPartFormDataStream.Create;
  try
    try
      doConfiguraUrlDelecao(AHandleEmpresa);
      FReturn := doDelete;
    except
      on E: EIdHTTPProtocolException do
        raise Exception.Create(TrataExcception(e.ErrorMessage));
     end;
  finally
    LParams.Free;
  end;
end;

procedure TCadastroEmpresa.doConfiguraUrlDelecao(const AHandleEmpresa: string);
const
  cUri = 'api/v1/empresa/%s?token=%s';
var
  LUrl: string;
begin
  Assert(Trim(AHandleEmpresa) <> '','Informe o código da empresa para atualizar.');
  LUrl := TrataUrl(FConfiguracao.AsBaseUrl, cUri);
  if FToken = EmptyStr then doGenerateToken;
  LUrl := Format(LUrl, [AHandleEmpresa, FToken]);
  FUrl := LUrl;
end;


end.

