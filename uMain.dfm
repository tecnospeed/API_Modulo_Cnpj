object FrmMain: TFrmMain
  Left = 193
  Top = 127
  Caption = 'Api'
  ClientHeight = 676
  ClientWidth = 1151
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 38
    Top = 526
    Width = 78
    Height = 13
    Caption = 'Handle Empresa'
  end
  object Label2: TLabel
    Left = 34
    Top = 85
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object Label3: TLabel
    Left = 34
    Top = 142
    Width = 87
    Height = 13
    Caption = 'Inscricao Estadual'
  end
  object Label12: TLabel
    Left = 161
    Top = 85
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label5: TLabel
    Left = 161
    Top = 142
    Width = 91
    Height = 13
    Caption = 'Inscricao Municipal'
  end
  object Label6: TLabel
    Left = 288
    Top = 85
    Width = 27
    Height = 13
    Caption = 'CNPJ'
  end
  object Label7: TLabel
    Left = 288
    Top = 142
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label8: TLabel
    Left = 415
    Top = 85
    Width = 63
    Height = 13
    Caption = 'Raz'#227'o Social'
  end
  object Label9: TLabel
    Left = 415
    Top = 142
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label10: TLabel
    Left = 542
    Top = 85
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label11: TLabel
    Left = 542
    Top = 142
    Width = 25
    Height = 13
    Caption = 'Email'
  end
  object Label4: TLabel
    Left = 669
    Top = 142
    Width = 42
    Height = 13
    Caption = 'Situa'#231#227'o'
  end
  object Label13: TLabel
    Left = 788
    Top = 142
    Width = 61
    Height = 13
    Caption = 'Identifica'#231#227'o'
  end
  object Label14: TLabel
    Left = 34
    Top = 190
    Width = 103
    Height = 13
    Caption = 'Usa Certificado Matriz'
  end
  object Label15: TLabel
    Left = 161
    Top = 190
    Width = 84
    Height = 13
    Caption = 'Senha Certificado'
  end
  object Label16: TLabel
    Left = 288
    Top = 190
    Width = 90
    Height = 13
    Caption = 'Seleciona A3 Saas'
  end
  object Label17: TLabel
    Left = 415
    Top = 190
    Width = 95
    Height = 13
    Caption = 'Seleciona Certi SAT'
  end
  object btnCadastrar: TButton
    Left = 37
    Top = 489
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 27
    OnClick = btnCadastrarClick
  end
  object mmDados: TMemo
    Left = 806
    Top = 376
    Width = 331
    Height = 293
    ScrollBars = ssVertical
    TabOrder = 26
  end
  object btnAtualizar: TButton
    Left = 37
    Top = 572
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 29
    OnClick = btnAtualizarClick
  end
  object Button3: TButton
    Left = 118
    Top = 572
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 30
    OnClick = Button3Click
  end
  object edtHandleEmpresa: TEdit
    Left = 37
    Top = 545
    Width = 121
    Height = 21
    TabOrder = 28
  end
  object edtGrupo: TEdit
    Left = 34
    Top = 105
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EdtInscricaoEstadual: TEdit
    Left = 34
    Top = 161
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edtCidade: TEdit
    Left = 161
    Top = 105
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EdtInscricaoMunicipal: TEdit
    Left = 161
    Top = 161
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object edtCnpj: TEdit
    Left = 288
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EdtEndereco: TEdit
    Left = 288
    Top = 161
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object EdtRazaoSocial: TEdit
    Left = 415
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object EdtTelefone: TEdit
    Left = 415
    Top = 161
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object EdtDescricao: TEdit
    Left = 542
    Top = 104
    Width = 519
    Height = 21
    TabOrder = 5
  end
  object EdtEmail: TEdit
    Left = 542
    Top = 161
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object cbSituacao: TComboBox
    Left = 669
    Top = 161
    Width = 113
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 11
    Text = 'Ativo'
    Items.Strings = (
      'Ativo'
      'Inativo')
  end
  object EdtIdentificacao: TEdit
    Left = 788
    Top = 161
    Width = 273
    Height = 21
    TabOrder = 12
  end
  object cbUsingCertificadoMatriz: TComboBox
    Left = 34
    Top = 209
    Width = 113
    Height = 21
    Style = csDropDownList
    ItemIndex = 1
    TabOrder = 13
    Text = 'N'#227'o'
    Items.Strings = (
      'Sim'
      'N'#227'o')
  end
  object EdtSenhacertificado: TEdit
    Left = 161
    Top = 209
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 14
  end
  object cbSelecionaA3Saas: TComboBox
    Left = 288
    Top = 209
    Width = 113
    Height = 21
    Style = csDropDownList
    ItemIndex = 1
    TabOrder = 15
    Text = 'N'#227'o'
    Items.Strings = (
      'Sim'
      'N'#227'o')
  end
  object cbSelecionaCertiSAT: TComboBox
    Left = 415
    Top = 209
    Width = 113
    Height = 21
    Style = csDropDownList
    ItemIndex = 1
    TabOrder = 16
    Text = 'N'#227'o'
    Items.Strings = (
      'Sim'
      'N'#227'o')
  end
  object grbDocumentos: TGroupBox
    Left = 31
    Top = 241
    Width = 248
    Height = 118
    Caption = 'Documentos'
    TabOrder = 17
    TabStop = True
    object cbNFe: TCheckBox
      Left = 16
      Top = 24
      Width = 97
      Height = 17
      Caption = 'NFe'
      TabOrder = 0
    end
    object cbNFCe: TCheckBox
      Left = 16
      Top = 47
      Width = 97
      Height = 17
      Caption = 'NFCe'
      TabOrder = 2
    end
    object cbNFSe: TCheckBox
      Left = 16
      Top = 70
      Width = 97
      Height = 17
      Caption = 'NFSe'
      TabOrder = 4
    end
    object cbCTe: TCheckBox
      Left = 16
      Top = 93
      Width = 97
      Height = 17
      Caption = 'CTe'
      TabOrder = 6
    end
    object cbCTeOs: TCheckBox
      Left = 127
      Top = 24
      Width = 97
      Height = 17
      Caption = 'CTeOs'
      TabOrder = 1
    end
    object cbMDFe: TCheckBox
      Left = 127
      Top = 47
      Width = 97
      Height = 17
      Caption = 'MDFe'
      TabOrder = 3
    end
    object cbGNRe: TCheckBox
      Left = 127
      Top = 70
      Width = 97
      Height = 17
      Caption = 'GNRe'
      TabOrder = 5
    end
    object cbSat: TCheckBox
      Left = 127
      Top = 93
      Width = 97
      Height = 17
      Caption = 'Sat'
      TabOrder = 7
    end
  end
  object grbNFe: TGroupBox
    Left = 285
    Top = 241
    Width = 185
    Height = 118
    Caption = 'NFe'
    Enabled = False
    TabOrder = 18
    TabStop = True
    object Label18: TLabel
      Left = 3
      Top = 21
      Width = 42
      Height = 13
      Caption = 'Situa'#231#227'o'
    end
    object Label19: TLabel
      Left = 82
      Top = 22
      Width = 40
      Height = 13
      Caption = 'Contrato'
    end
    object Label20: TLabel
      Left = 3
      Top = 74
      Width = 32
      Height = 13
      Caption = 'Motivo'
    end
    object cbSituacaoNFe: TComboBox
      Left = 3
      Top = 40
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Ativo'
      OnChange = cbSituacaoNFeChange
      Items.Strings = (
        'Ativo'
        'Inativo')
    end
    object cbContratoNFe: TComboBox
      Left = 82
      Top = 41
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'Bilhetagem'
      Items.Strings = (
        'None'
        'Bilhetagem'
        'Ilimitado')
    end
    object edtMotivoNFe: TEdit
      Left = 3
      Top = 91
      Width = 174
      Height = 21
      Enabled = False
      TabOrder = 2
    end
  end
  object grbNFCe: TGroupBox
    Left = 482
    Top = 241
    Width = 185
    Height = 118
    Caption = 'NFCe'
    Enabled = False
    TabOrder = 19
    TabStop = True
    object Label21: TLabel
      Left = 3
      Top = 21
      Width = 42
      Height = 13
      Caption = 'Situa'#231#227'o'
    end
    object Label22: TLabel
      Left = 82
      Top = 22
      Width = 40
      Height = 13
      Caption = 'Contrato'
    end
    object Label23: TLabel
      Left = 3
      Top = 74
      Width = 32
      Height = 13
      Caption = 'Motivo'
    end
    object cbSituacaoNFCe: TComboBox
      Left = 3
      Top = 40
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Ativo'
      OnChange = cbSituacaoNFCeChange
      Items.Strings = (
        'Ativo'
        'Inativo')
    end
    object cbContratoNFCe: TComboBox
      Left = 82
      Top = 41
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'Bilhetagem'
      Items.Strings = (
        'None'
        'Bilhetagem'
        'Ilimitado')
    end
    object edtMotivoNFCe: TEdit
      Left = 3
      Top = 91
      Width = 174
      Height = 21
      Enabled = False
      TabOrder = 2
    end
  end
  object grbNFse: TGroupBox
    Left = 673
    Top = 241
    Width = 185
    Height = 118
    Caption = 'NFSe'
    Enabled = False
    TabOrder = 20
    TabStop = True
    object Label24: TLabel
      Left = 3
      Top = 21
      Width = 42
      Height = 13
      Caption = 'Situa'#231#227'o'
    end
    object Label25: TLabel
      Left = 82
      Top = 22
      Width = 40
      Height = 13
      Caption = 'Contrato'
    end
    object Label26: TLabel
      Left = 3
      Top = 74
      Width = 32
      Height = 13
      Caption = 'Motivo'
    end
    object cbSituacaoNFSe: TComboBox
      Left = 3
      Top = 40
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Ativo'
      OnChange = cbSituacaoNFSeChange
      Items.Strings = (
        'Ativo'
        'Inativo')
    end
    object cbContratoNFSe: TComboBox
      Left = 82
      Top = 41
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'Bilhetagem'
      Items.Strings = (
        'None'
        'Bilhetagem'
        'Ilimitado')
    end
    object edtMotivoNFSe: TEdit
      Left = 3
      Top = 93
      Width = 174
      Height = 21
      Enabled = False
      TabOrder = 2
    end
  end
  object grbCTe: TGroupBox
    Left = 864
    Top = 241
    Width = 185
    Height = 118
    Caption = 'CTe'
    Enabled = False
    TabOrder = 21
    TabStop = True
    object Label27: TLabel
      Left = 3
      Top = 21
      Width = 42
      Height = 13
      Caption = 'Situa'#231#227'o'
    end
    object Label28: TLabel
      Left = 82
      Top = 22
      Width = 40
      Height = 13
      Caption = 'Contrato'
    end
    object Label29: TLabel
      Left = 3
      Top = 74
      Width = 32
      Height = 13
      Caption = 'Motivo'
    end
    object cbSituacaoCTe: TComboBox
      Left = 3
      Top = 40
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Ativo'
      OnChange = cbSituacaoCTeChange
      Items.Strings = (
        'Ativo'
        'Inativo')
    end
    object cbContratoCTe: TComboBox
      Left = 82
      Top = 41
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'Bilhetagem'
      Items.Strings = (
        'None'
        'Bilhetagem'
        'Ilimitado')
    end
    object edtMotivoCTe: TEdit
      Left = 3
      Top = 91
      Width = 174
      Height = 21
      Enabled = False
      TabOrder = 2
    end
  end
  object grbMDFe: TGroupBox
    Left = 225
    Top = 365
    Width = 185
    Height = 118
    Caption = 'MDFe'
    Enabled = False
    TabOrder = 23
    TabStop = True
    object Label30: TLabel
      Left = 3
      Top = 21
      Width = 42
      Height = 13
      Caption = 'Situa'#231#227'o'
    end
    object Label31: TLabel
      Left = 82
      Top = 22
      Width = 40
      Height = 13
      Caption = 'Contrato'
    end
    object Label32: TLabel
      Left = 3
      Top = 74
      Width = 32
      Height = 13
      Caption = 'Motivo'
    end
    object cbSituacaoMDFe: TComboBox
      Left = 3
      Top = 40
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Ativo'
      OnChange = cbSituacaoMDFeChange
      Items.Strings = (
        'Ativo'
        'Inativo')
    end
    object cbContratoMDFe: TComboBox
      Left = 82
      Top = 41
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'Bilhetagem'
      Items.Strings = (
        'None'
        'Bilhetagem'
        'Ilimitado')
    end
    object edtMotivoMDFe: TEdit
      Left = 3
      Top = 91
      Width = 174
      Height = 21
      Enabled = False
      TabOrder = 2
    end
  end
  object grbCTeOs: TGroupBox
    Left = 34
    Top = 365
    Width = 185
    Height = 118
    Caption = 'CTeOs'
    Enabled = False
    TabOrder = 22
    TabStop = True
    object Label33: TLabel
      Left = 3
      Top = 21
      Width = 42
      Height = 13
      Caption = 'Situa'#231#227'o'
    end
    object Label34: TLabel
      Left = 82
      Top = 22
      Width = 40
      Height = 13
      Caption = 'Contrato'
    end
    object Label35: TLabel
      Left = 3
      Top = 74
      Width = 32
      Height = 13
      Caption = 'Motivo'
    end
    object cbSituacaoCTeOs: TComboBox
      Left = 3
      Top = 40
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Ativo'
      OnChange = cbSituacaoCTeOsChange
      Items.Strings = (
        'Ativo'
        'Inativo')
    end
    object cbContratoCTeOs: TComboBox
      Left = 82
      Top = 41
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'Bilhetagem'
      Items.Strings = (
        'None'
        'Bilhetagem'
        'Ilimitado')
    end
    object edtMotivoCTeOs: TEdit
      Left = 3
      Top = 91
      Width = 174
      Height = 21
      Enabled = False
      TabOrder = 2
    end
  end
  object grbGNRe: TGroupBox
    Left = 419
    Top = 365
    Width = 185
    Height = 118
    Caption = 'GNRe'
    Enabled = False
    TabOrder = 24
    TabStop = True
    object Label36: TLabel
      Left = 3
      Top = 21
      Width = 42
      Height = 13
      Caption = 'Situa'#231#227'o'
    end
    object Label37: TLabel
      Left = 82
      Top = 22
      Width = 40
      Height = 13
      Caption = 'Contrato'
    end
    object Label38: TLabel
      Left = 3
      Top = 74
      Width = 32
      Height = 13
      Caption = 'Motivo'
    end
    object cbSituacaoGNRe: TComboBox
      Left = 3
      Top = 40
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Ativo'
      OnChange = cbSituacaoGNReChange
      Items.Strings = (
        'Ativo'
        'Inativo')
    end
    object cbContratoGNRe: TComboBox
      Left = 82
      Top = 41
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'Bilhetagem'
      Items.Strings = (
        'None'
        'Bilhetagem'
        'Ilimitado')
    end
    object edtMotivoGNRe: TEdit
      Left = 3
      Top = 91
      Width = 174
      Height = 21
      Enabled = False
      TabOrder = 2
    end
  end
  object grbSat: TGroupBox
    Left = 610
    Top = 365
    Width = 185
    Height = 118
    Caption = 'Sat'
    Enabled = False
    TabOrder = 25
    TabStop = True
    object Label39: TLabel
      Left = 3
      Top = 21
      Width = 42
      Height = 13
      Caption = 'Situa'#231#227'o'
    end
    object Label40: TLabel
      Left = 82
      Top = 22
      Width = 40
      Height = 13
      Caption = 'Contrato'
    end
    object Label41: TLabel
      Left = 3
      Top = 74
      Width = 32
      Height = 13
      Caption = 'Motivo'
    end
    object cbSituacaoSat: TComboBox
      Left = 3
      Top = 40
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Ativo'
      OnChange = cbSituacaoSatChange
      Items.Strings = (
        'Ativo'
        'Inativo')
    end
    object cbContratoSat: TComboBox
      Left = 82
      Top = 41
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'Bilhetagem'
      Items.Strings = (
        'None'
        'Bilhetagem'
        'Ilimitado')
    end
    object edtMotivoSat: TEdit
      Left = 3
      Top = 91
      Width = 174
      Height = 21
      Enabled = False
      TabOrder = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 31
    Top = 8
    Width = 1027
    Height = 71
    Caption = 'Dados Login   '
    TabOrder = 0
    TabStop = True
    object Label43: TLabel
      Left = 9
      Top = 22
      Width = 26
      Height = 13
      Caption = 'Login'
    end
    object Label44: TLabel
      Left = 206
      Top = 22
      Width = 31
      Height = 13
      Caption = 'Senha'
    end
    object Label42: TLabel
      Left = 454
      Top = 22
      Width = 31
      Height = 13
      Caption = 'Token'
    end
    object edtLogin: TEdit
      Left = 9
      Top = 41
      Width = 176
      Height = 21
      TabOrder = 0
    end
    object edtSenhaLogin: TEdit
      Left = 206
      Top = 41
      Width = 147
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object btnToken: TButton
      Left = 359
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Token'
      TabOrder = 2
      OnClick = btnTokenClick
    end
    object edtToken: TEdit
      Left = 454
      Top = 39
      Width = 310
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 3
    end
  end
end
