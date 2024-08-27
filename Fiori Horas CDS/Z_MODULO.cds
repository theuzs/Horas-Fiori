@AbapCatalog.sqlViewName: 'ZMODULO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Horas Modulos'

@ObjectModel.modelCategory: #BUSINESS_OBJECT
@ObjectModel.compositionRoot: true
@ObjectModel.transactionalProcessingEnabled: true
@ObjectModel.createEnabled: true
@ObjectModel.updateEnabled: true
@ObjectModel.deleteEnabled: true

@ObjectModel.writeActivePersistence: 'zagghcmmodulo'
@OData.publish: true
@Metadata.allowExtensions: true
define view Z_MODULO
  as select from zagghcmmodulo
{
      @UI.lineItem: [{ position: 10 }]
      @EndUserText.label: 'Código Módulo'
  key cod_modulo,
      @UI.lineItem: [{ position: 20 }]
      @EndUserText.label: 'Sigla Módulo'
  key sig_cliente,
      @UI.lineItem: [{ position: 30 }]
      @EndUserText.label: 'Nome Módulo BR'
      nome_modulo_br,
      @UI.lineItem: [{ position: 40 }]
      @EndUserText.label: 'Nome Módulo SAP'
      nome_modulo_sap,
      @UI.lineItem: [{ position: 50 }]
      @EndUserText.label: 'Ativo'
      ativo,
      @UI.lineItem: [{ position: 60 }]
      @EndUserText.label: 'Data inicio'
      data_inicio,
      @UI.lineItem: [{ position: 70 }]
      @EndUserText.label: 'Data Fim'
      data_fim
}
