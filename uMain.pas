unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, interfaces;

type
  TFrmMain = class(TForm)
    btnCadastrar: TButton;
    mmDados: TMemo;
    btnAtualizar: TButton;
    Button3: TButton;
    edtHandleEmpresa: TEdit;
    Label1: TLabel;
    edtGrupo: TEdit;
    Label2: TLabel;
    EdtInscricaoEstadual: TEdit;
    Label3: TLabel;
    edtCidade: TEdit;
    Label12: TLabel;
    EdtInscricaoMunicipal: TEdit;
    Label5: TLabel;
    edtCnpj: TEdit;
    Label6: TLabel;
    EdtEndereco: TEdit;
    Label7: TLabel;
    EdtRazaoSocial: TEdit;
    Label8: TLabel;
    EdtTelefone: TEdit;
    Label9: TLabel;
    EdtDescricao: TEdit;
    Label10: TLabel;
    EdtEmail: TEdit;
    Label11: TLabel;
    cbSituacao: TComboBox;
    Label4: TLabel;
    Label13: TLabel;
    EdtIdentificacao: TEdit;
    Label14: TLabel;
    cbUsingCertificadoMatriz: TComboBox;
    Label15: TLabel;
    EdtSenhacertificado: TEdit;
    Label16: TLabel;
    cbSelecionaA3Saas: TComboBox;
    Label17: TLabel;
    cbSelecionaCertiSAT: TComboBox;
    grbDocumentos: TGroupBox;
    cbNFe: TCheckBox;
    cbNFCe: TCheckBox;
    cbNFSe: TCheckBox;
    cbCTe: TCheckBox;
    cbCTeOs: TCheckBox;
    cbMDFe: TCheckBox;
    cbGNRe: TCheckBox;
    cbSat: TCheckBox;
    grbNFe: TGroupBox;
    Label18: TLabel;
    cbSituacaoNFe: TComboBox;
    Label19: TLabel;
    cbContratoNFe: TComboBox;
    edtMotivoNFe: TEdit;
    Label20: TLabel;
    grbNFCe: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cbSituacaoNFCe: TComboBox;
    cbContratoNFCe: TComboBox;
    edtMotivoNFCe: TEdit;
    grbNFse: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    cbSituacaoNFSe: TComboBox;
    cbContratoNFSe: TComboBox;
    edtMotivoNFSe: TEdit;
    grbCTe: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    cbSituacaoCTe: TComboBox;
    cbContratoCTe: TComboBox;
    edtMotivoCTe: TEdit;
    grbMDFe: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    cbSituacaoMDFe: TComboBox;
    cbContratoMDFe: TComboBox;
    edtMotivoMDFe: TEdit;
    grbCTeOs: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    cbSituacaoCTeOs: TComboBox;
    cbContratoCTeOs: TComboBox;
    edtMotivoCTeOs: TEdit;
    grbGNRe: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    cbSituacaoGNRe: TComboBox;
    cbContratoGNRe: TComboBox;
    edtMotivoGNRe: TEdit;
    grbSat: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    cbSituacaoSat: TComboBox;
    cbContratoSat: TComboBox;
    edtMotivoSat: TEdit;
    GroupBox1: TGroupBox;
    edtLogin: TEdit;
    edtSenhaLogin: TEdit;
    Label43: TLabel;
    Label44: TLabel;
    btnToken: TButton;
    Label42: TLabel;
    edtToken: TEdit;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnTokenClick(Sender: TObject);
    procedure cbSituacaoNFeChange(Sender: TObject);
    procedure cbSituacaoNFCeChange(Sender: TObject);
    procedure cbSituacaoNFSeChange(Sender: TObject);
    procedure cbSituacaoCTeChange(Sender: TObject);
    procedure cbSituacaoCTeOsChange(Sender: TObject);
    procedure cbSituacaoMDFeChange(Sender: TObject);
    procedure cbSituacaoGNReChange(Sender: TObject);
    procedure cbSituacaoSatChange(Sender: TObject);
  private
    { Private declarations }
    FConfiguracao: IConfiguracao;
    procedure cbClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses
  CadastroEmpresaImpl;

{$R *.dfm}

procedure TFrmMain.btnCadastrarClick(Sender: TObject);
var
  LDadosEmpresa: IDadosEmpresa;
  LContratoNFe, LContratoNFCe, LContratoNFSe, LContratoCTeOs,
  LContratoCTe, LContratoGNRe, LContratoCFeSat, LContratoMDFe: IContrato;

  LCadastroEmpresa: ICadastroEmpresa;
  LCertificadoFile: TOpenDialog;
begin
  LCertificadoFile := TOpenDialog.Create(Self);
  LCertificadoFile.Filter := 'pfx|*.pfx|P7|*.P7|p12|*.P12';
  try
    // Dados de cadastro dos documentos
    LDadosEmpresa := TDadosEmpresa.New;

    LDadosEmpresa.Grupo(edtGrupo.Text);

    LDadosEmpresa.Cidade(edtCidade.Text);
    LDadosEmpresa.CNPJ(edtCnpj.Text);
    LDadosEmpresa.RazaoSocial(EdtRazaoSocial.Text);
    LDadosEmpresa.Descricao(EdtDescricao.Text);
    LDadosEmpresa.InscricaoEstadual(EdtInscricaoEstadual.Text);
    LDadosEmpresa.InscricaoMunicipal(EdtInscricaoMunicipal.Text);
    LDadosEmpresa.Endereco(EdtEndereco.Text);
    LDadosEmpresa.Telefone(EdtTelefone.Text);
    LDadosEmpresa.Email(EdtEmail.Text);
    LDadosEmpresa.Situacao(TTipoSituacao(cbSituacao.ItemIndex));
    LDadosEmpresa.Identificacao(EdtIdentificacao.Text);
    LDadosEmpresa.UsingCertificadoMatriz(TTrueOrFalse(cbUsingCertificadoMatriz.ItemIndex));
    LDadosEmpresa.Senhacertificado(EdtSenhacertificado.Text);

    LDadosEmpresa.SelecionaA3Saas(TTrueOrFalse(cbSelecionaA3Saas.ItemIndex));

    LDadosEmpresa.TipoCertificado(tcCurrentUser);

    LDadosEmpresa.SelecionaCertiSAT(TTrueOrFalse(cbSelecionaCertiSAT.ItemIndex));

    if LCertificadoFile.Execute then
      LDadosEmpresa.Certificado(LCertificadoFile.FileName);

    (*
      Informe somente os contratos que deseje ativar
      caso não utilize um documento o mesmo
      não precisa ser informado
    *)
    if cbNFe.Checked then
    begin
      // NFE
      LContratoNFe := TContrato.New;
      LContratoNFe.Situacao(TTipoSituacao(cbSituacaoNFe.ItemIndex));
      LContratoNFe.Tipocontrato(TTipoContrato(cbContratoNFe.ItemIndex));
      LContratoNFe.Motivo(edtMotivoNFe.Text);
      LDadosEmpresa.NFe(LContratoNFe);
    end;

    if cbNFCe.Checked then
    begin
      // NFCE
      LContratoNFCe := TContrato.New;
      LContratoNFCe.Situacao(TTipoSituacao(cbSituacaoNFCe.ItemIndex));
      LContratoNFCe.Tipocontrato(TTipoContrato(cbContratoNFCe.ItemIndex));
      LContratoNFe.Motivo(edtMotivoNFCe.Text);
      LDadosEmpresa.NFCe(LContratoNFCe);
    end;

    if cbNFSe.Checked then
    begin
      //NFSE
      LContratoNFSe := TContrato.New;
      LContratoNFSe.Situacao(TTipoSituacao(cbSituacaoNFSe.ItemIndex));
      LContratoNFSe.Tipocontrato(TTipoContrato(cbContratoNFSe.ItemIndex));
      LContratoNFe.Motivo(edtMotivoNFSe.Text);
      LDadosEmpresa.NFSe(LContratoNFSe);
    end;

    if cbCTeOs.Checked then
    begin
      // CTEOS
      LContratoCTeOs :=  TContrato.New;
      LContratoCTeOs.Situacao(TTipoSituacao(cbSituacaoCTeOs.ItemIndex));
      LContratoCTeOs.Tipocontrato(TTipoContrato(cbContratoCTeOs.ItemIndex));
      LContratoNFe.Motivo(edtMotivoCTeOs.Text);
      LDadosEmpresa.CTeOs(LContratoCTeOs);
    end;

    if cbCTe.Checked then
    begin
    // CTE
      LContratoCTe :=  TContrato.New;
      LContratoCTe.Situacao(TTipoSituacao(cbSituacaoCTe.ItemIndex));
      LContratoCTe.Tipocontrato(TTipoContrato(cbContratoCTe.ItemIndex));
      LContratoNFe.Motivo(edtMotivoCTe.Text);
      LDadosEmpresa.CTe(LContratoCTe);
    end;

    if cbGNRe.Checked then
    begin
      //GNRE
      LContratoGNRe :=  TContrato.New;
      LContratoGNRe.Situacao(TTipoSituacao(cbSituacaoGNRe.ItemIndex));
      LContratoGNRe.Tipocontrato(TTipoContrato(cbContratoGNRe.ItemIndex));
      LContratoNFe.Motivo(edtMotivoGNRe.Text);
      LDadosEmpresa.GNRe(LContratoGNRe);
    end;

    if cbSat.Checked then
    begin
      // CFESat
      LContratoCFeSat :=  TContrato.New;
      LContratoCFeSat.Situacao(TTipoSituacao(cbSituacaoSat.ItemIndex));
      LContratoCFeSat.Tipocontrato(TTipoContrato(cbContratoSat.ItemIndex));
      LContratoNFe.Motivo(edtMotivoSat.Text);
      LDadosEmpresa.CFeSat(LContratoCFeSat);
    end;

    if cbMDFe.Checked then
    begin
    // MDFE
      LContratoMDFe :=  TContrato.New;
      LContratoMDFe.Situacao(TTipoSituacao(cbSituacaoMDFe.ItemIndex));
      LContratoMDFe.Tipocontrato(TTipoContrato(cbContratoMDFe.ItemIndex));
      LContratoNFe.Motivo(edtMotivoMDFe.Text);
      LDadosEmpresa.MDFe(LContratoMDFe);
    end;

    // Classe que encapsula as configurações da API
    LCadastroEmpresa :=  TCadastroEmpresa.New(LDadosEmpresa, FConfiguracao);
    // informe o token gerado, se ficar em branco o sistema irá gerar um novo token
    LCadastroEmpresa.SetToken(edtToken.Text);

    mmDados.Lines.Add(LCadastroEmpresa.Cadastrar.AsReturn);
  finally
    LCertificadoFile.Free;
  end;
end;

procedure TFrmMain.btnAtualizarClick(Sender: TObject);
var
  LDadosEmpresa: IDadosEmpresa;
  LCadastroEmpresa: ICadastroEmpresa;
  LContratoNFe: IContrato;
begin
   // Dados de cadastro dos documentos
  LDadosEmpresa := TDadosEmpresa.New;
  LDadosEmpresa.Handle(edtHandleEmpresa.Text);

  // exemplo de atualizar a nfe
  if cbNFe.Checked then
  begin
    LContratoNFe := TContrato.New;
    LContratoNFe.Situacao(TTipoSituacao(cbSituacaoNFe.ItemIndex));
    LContratoNFe.Tipocontrato(TTipoContrato(cbContratoNFe.ItemIndex));
    LContratoNFe.Motivo(edtMotivoNFe.Text);
    LDadosEmpresa.NFe(LContratoNFe);
  end;

  // Classe que encapsula as configurações da API
  LCadastroEmpresa :=  TCadastroEmpresa.New(LDadosEmpresa, FConfiguracao);
  mmDados.Lines.Add(LCadastroEmpresa.Atualizar.AsReturn);

end;

procedure TFrmMain.FormCreate(Sender: TObject);
const
  cBaseUrl = 'https://managersaas.tecnospeed.com.br:1337';
begin
  FConfiguracao := TConfiguracao.New;
  FConfiguracao.BaseUrl(cBaseUrl);

  cbNFe.OnClick := cbClick;
  cbNFCe.OnClick := cbClick;
  cbNFSe.OnClick := cbClick;
  cbCTe.OnClick := cbClick;
  cbCTeOs.OnClick := cbClick;
  cbMDFe.OnClick := cbClick;
  cbGNRe.OnClick := cbClick;
  cbSat.OnClick := cbClick;
end;

procedure TFrmMain.Button3Click(Sender: TObject);
var
  LCadastroEmpresa: ICadastroEmpresa;
begin
  // Classe que encapsula as configurações da API
  LCadastroEmpresa :=  TCadastroEmpresa.New(FConfiguracao);

  // Token
  edtToken.Text := LCadastroEmpresa.GetToken.AsToken;

  try
    mmDados.Lines.Add(LCadastroEmpresa.Deletar(edtHandleEmpresa.Text).AsReturn);
    mmDados.Lines.Add('-----------------');
    mmDados.Lines.Add('Empresa deletada com sucesso');
  except
    on E: Exception do
      ShowMessage(e.Message);
  end
end;

procedure TFrmMain.cbClick(Sender: TObject);
var
  LTemp: string;
  LEnable: Boolean;
begin
  LTemp   := TCheckBox(Sender).Caption;
  LEnable := TCheckBox(Sender).Checked;

  if SameText(LTemp, 'NFE') then
    grbNFe.Enabled := LEnable
  else if SameText(LTemp, 'NFCE') then
    grbNFCe.Enabled := LEnable
  else if SameText(LTemp, 'NFSE') then
    grbNFse.Enabled := LEnable
  else if SameText(LTemp, 'CTE') then
    grbCTe.Enabled := LEnable
  else if SameText(LTemp, 'CTEOS') then
    grbCTeOs.Enabled := LEnable
  else if SameText(LTemp, 'MDFE') then
    grbMDFe.Enabled := LEnable
  else if SameText(LTemp, 'GNRE') then
    grbGNRe.Enabled := LEnable
  else if SameText(LTemp, 'SAT') then
    grbSat.Enabled := LEnable;
end;

procedure TFrmMain.cbSituacaoCTeChange(Sender: TObject);
begin
  edtMotivoCTe.Enabled := cbSituacaoCTe.ItemIndex = 1
end;

procedure TFrmMain.cbSituacaoCTeOsChange(Sender: TObject);
begin
  edtMotivoCTeOs.Enabled := cbSituacaoCTeOs.ItemIndex = 1
end;

procedure TFrmMain.cbSituacaoGNReChange(Sender: TObject);
begin
  edtMotivoGNRe.Enabled := cbSituacaoGNRe.ItemIndex = 1
end;

procedure TFrmMain.cbSituacaoMDFeChange(Sender: TObject);
begin
  edtMotivoMDFe.Enabled := cbSituacaoMDFe.ItemIndex = 1
end;

procedure TFrmMain.cbSituacaoNFCeChange(Sender: TObject);
begin
  edtMotivoNFCe.Enabled := cbSituacaoNFCe.ItemIndex = 1
end;

procedure TFrmMain.cbSituacaoNFeChange(Sender: TObject);
begin
  edtMotivoNFe.Enabled := cbSituacaoNFe.ItemIndex = 1
end;

procedure TFrmMain.cbSituacaoNFSeChange(Sender: TObject);
begin
  edtMotivoNFSe.Enabled := cbSituacaoNFSe.ItemIndex = 1
end;

procedure TFrmMain.cbSituacaoSatChange(Sender: TObject);
begin
  edtMotivoSat.Enabled := cbSituacaoSat.ItemIndex = 1
end;

procedure TFrmMain.btnTokenClick(Sender: TObject);
var
  LCadastroEmpresa: ICadastroEmpresa;
begin
  FConfiguracao.Email(edtLogin.Text);
  FConfiguracao.Senha(edtSenhaLogin.Text);
  FConfiguracao.Gerar(True);

  // Classe que encapsula as configurações da API
  LCadastroEmpresa :=  TCadastroEmpresa.New(FConfiguracao);
  // Token
  edtToken.Text := LCadastroEmpresa.GetToken.AsToken;

end;

end.

