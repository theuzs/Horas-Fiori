@AbapCatalog.sqlViewName: 'ZATIVIDADES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Horas Atividades'

@ObjectModel.modelCategory: #BUSINESS_OBJECT
@ObjectModel.compositionRoot: true
@ObjectModel.transactionalProcessingEnabled: true
@ObjectModel.createEnabled: true
@ObjectModel.updateEnabled: true
@ObjectModel.deleteEnabled: true

@ObjectModel.writeActivePersistence: 'zagghcmatividade'
@OData.publish: true
@Metadata.allowExtensions: true

define view Z_ATIVIDADES
  as select from zagghcmatividade
{
      @UI.hidden: true
      @EndUserText.label: 'Código Consultoria'
  key zagghcmatividade.cod_consultoria,

      @UI.hidden: true
      @EndUserText.label: 'Nome Consultoria'
  key zagghcmatividade.nome_consultoria,

      @UI.lineItem: [{ position: 20 }]
  key zagghcmatividade.nome_cliente,

      @EndUserText.label: 'Codigo Cliente'
  key zagghcmatividade.cod_cliente,

      @EndUserText.label: 'Codigo Modulo'
  key zagghcmatividade.cod_modulo,

      @UI.lineItem: [{ position: 40 }]
      @UI.selectionField: [{ position: 20 }]
      @EndUserText.label: 'Data Atividade'
  key zagghcmatividade.data_atividade,

      @UI.lineItem: [{ position: 50 }]
      //@UI.selectionField: [{ position: 20 }]
      @EndUserText.label: 'Hora Atividade'
  key zagghcmatividade.hora_atividade,

      @UI.lineItem: [{ position: 10 }]
      @UI.selectionField: [{ position: 10 }]
      @EndUserText.label: 'Recurso'
      zagghcmatividade.nome_recurso,

      @UI.lineItem: [{ position: 30 }]
      @EndUserText.label: 'Habilidade'
      zagghcmatividade.nome_habilidade,

      @UI.lineItem: [{ position: 60 }]
      @EndUserText.label: 'Tempo Gasto (Horas)'
      zagghcmatividade.tempo_gasto,


     // @Consumption.valueHelpDefinition: [{ entity:{name: 'Z_RECURSOS', element: 'cod_recurso' } }]
      @EndUserText.label: 'Código do Recurso'
      zagghcmatividade.cod_recurso,

      @UI.hidden: true
      @EndUserText.label: 'Módulo BR'
      zagghcmatividade.nome_modulo_br,

      @EndUserText.label: 'Código da Habilidade'
      zagghcmatividade.cod_habilidade





}
