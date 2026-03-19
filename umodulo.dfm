object dm: Tdm
  Height = 1260
  Width = 1680
  PixelsPerInch = 168
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://localhost/Projetos_ETEC_PWEB-III_Div2'
    Params = <>
    SynchronizedEvents = False
    Left = 256
    Top = 8
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 256
    Top = 112
  end
  object RESTResponse1: TRESTResponse
    Left = 256
    Top = 216
  end
  object RRDSAUsuarios: TRESTResponseDataSetAdapter
    Dataset = usuarios
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 256
    Top = 320
  end
  object usuarios: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 256
    Top = 424
    object usuariosusuid: TIntegerField
      FieldName = 'usuid'
    end
    object usuariosusunome: TStringField
      FieldName = 'usunome'
      Size = 100
    end
    object usuariosusulogin: TStringField
      FieldName = 'usulogin'
      Size = 100
    end
    object usuariosususenha: TStringField
      FieldName = 'ususenha'
      Size = 100
    end
    object usuariosusulogado: TBooleanField
      FieldName = 'usulogado'
    end
  end
end
