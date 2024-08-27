@AbapCatalog.sqlViewName: 'ZHABILIDADES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Horas Habilidades'

@ObjectModel.modelCategory: #BUSINESS_OBJECT
@ObjectModel.compositionRoot: true
@ObjectModel.transactionalProcessingEnabled: true
@ObjectModel.createEnabled: true
@ObjectModel.updateEnabled: true
@ObjectModel.deleteEnabled: true

@ObjectModel.writeActivePersistence: 'zagghcmhabilidad'
@OData.publish: true
@Metadata.allowExtensions: true

define view Z_HABILIDADES
  as select from zagghcmhabilidad
{
      @UI.lineItem: [{ position: 10 }]
      @EndUserText.label: 'Código Habilidade'
  key cod_habilidade,
      @UI.lineItem: [{ position: 20 }]
      @EndUserText.label: 'Nome Habilidade'
      nome_habilidade,
      @UI.lineItem: [{ position: 30 }]
      @EndUserText.label: 'Ativo'
      ativo,
      @UI.lineItem: [{ position: 40 }]
      @EndUserText.label: 'Data Inicio'
      data_inicio,
      @UI.lineItem: [{ position: 50 }]
      @EndUserText.label: 'Data Fim'
      data_fim
}
