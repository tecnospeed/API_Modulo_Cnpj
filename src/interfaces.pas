unit interfaces;

interface

type


  TTipoContrato = ( tcNone,tcBilhetagem,tcIlimitado);
  TTipoSituacao = (tsAtivo, tsInativo);
  TTrueOrFalse = (tfTrue, tfFalse);
  TTipoCertificado = (tcCurrentUser);

  IConfiguracao = interface
  ['{541F6E84-951C-484A-AC42-8448E7EEFF56}']
    function BaseUrl(const AValue: string): IConfiguracao;
    function Email(const AValue: string): IConfiguracao;
    function Senha(const AValue: string): IConfiguracao;
    function Gerar(const AValue: Boolean): IConfiguracao;

    function AsBaseUrl: string;
    function AsEmail: string;
    function AsSenha: string;
    function AsGerar: string;

  end;

  IContrato = interface
  ['{1E7E353E-C1B9-4380-8A79-FA877981D4EA}']
    function Situacao(const AValue: TTipoSituacao): IContrato;
    function Tipocontrato(const AValue: TTipoContrato): IContrato;
    function Motivo(const AValue: string): IContrato;

    function AsSituacao: string;
    function AsTipoContrato: string;
    function AsMotivo: string;
  end;

  IDadosEmpresa = interface
    ['{BC2B1A9F-89E6-4A0A-80B2-ABC363457918}']
    function Handle(const AValue: string): IDadosEmpresa;
    function Grupo(const AValue: string): IDadosEmpresa;
    function Cidade(const AValue: string): IDadosEmpresa;
    function CNPJ(const AValue: string): IDadosEmpresa;
    function RazaoSocial(const AValue: string): IDadosEmpresa;
    function Descricao(const AValue: string): IDadosEmpresa;
    function InscricaoEstadual(const AValue: string): IDadosEmpresa;
    function InscricaoMunicipal(const AValue: string): IDadosEmpresa;
    function Endereco(const AValue: string): IDadosEmpresa;
    function Telefone(const AValue: string): IDadosEmpresa;
    function Email(const AValue: string): IDadosEmpresa;
    function Situacao(const AValue: TTipoSituacao): IDadosEmpresa;
    function Identificacao(const AValue: string): IDadosEmpresa;
    function UsingCertificadoMatriz(const AValue: TTrueOrFalse): IDadosEmpresa;
    function Senhacertificado(const AValue: string): IDadosEmpresa;
    function SelecionaA3Saas(const AValue: TTrueOrFalse): IDadosEmpresa;
    function SelecionaCertiSAT(const AValue: TTrueOrFalse): IDadosEmpresa;
    function TipoCertificado(const AValue: TTipoCertificado): IDadosEmpresa;
    function Certificado(const AValue: string) : IDadosEmpresa;
    function Motivo(const AValue: string) : IDadosEmpresa;
    function Pincode(const AValue: string) : IDadosEmpresa;

    // documentos
    function NFSe(const AValue: IContrato): IDadosEmpresa;
    function NFCe(const AValue: IContrato): IDadosEmpresa;
    function NFe(const AValue: IContrato): IDadosEmpresa;
    function MDFe(const AValue: IContrato): IDadosEmpresa;
    function CTe(const AValue: IContrato): IDadosEmpresa;
    function CFeSat(const AValue: IContrato): IDadosEmpresa;
    function GNRe(const AValue: IContrato): IDadosEmpresa;
    function CTeOs(const AValue: IContrato): IDadosEmpresa;

    function AsHandle: string;
    function AsGrupo: string;
    function AsCidade: string;
    function AsCNPJ: string;
    function AsRazaoSocial: string;
    function AsDescricao: string;
    function AsInscricaoEstadual: string;
    function AsInscricaoMunicipal: string;
    function AsEndereco: string;
    function AsTelefone: string;
    function AsEmail: string;
    function AsSituacao: string;
    function AsIdentificacao: string;
    function AsUsingCertificadoMatriz: string;
    function AsSenhacertificado: string;
    function AsSelecionaA3Saas: string;
    function AsSelecionaCertiSAT: string;
    function AsTipoCertificado: string;
    function AsCertificado: string;
    function AsMotivo: string;
    function AsPincode: string;

    // documentos
    function AsNFSe: IContrato;
    function AsNFCe: IContrato;
    function AsNFe: IContrato;
    function AsMDFe: IContrato;
    function AsCTe: IContrato;
    function AsCFeSat: IContrato;
    function AsGNRe: IContrato;
    function AsCTeOs: IContrato;

  end;

  ICadastroEmpresa = interface
    ['{2C395E93-4958-4677-83A2-94EA8DE2CB99}']
    function GetToken: ICadastroEmpresa;
    function SetToken(const AValue: string): ICadastroEmpresa;

    function AsToken: string;

    function Cadastrar: ICadastroEmpresa;
    function AsReturn: string;

    function Atualizar: ICadastroEmpresa;

    function Deletar(const AHandleEmpresa: string): ICadastroEmpresa;


  end;

implementation

end.

