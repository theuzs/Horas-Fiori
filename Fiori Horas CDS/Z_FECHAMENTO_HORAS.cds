@AbapCatalog.sqlViewName: 'ZFECHAMENTOHR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Relatório de Fechamento de Horas'
@OData.publish: true

@Metadata.allowExtensions: true

define view Z_FECHAMENTO_HORAS
  as select from zagghcmatividade as Atividade
    inner join   zagghcmrecurso   as Recurso     on Atividade.cod_recurso = Recurso.cod_recurso
    inner join   zagghcmconsultor as Consultoria on Atividade.cod_consultoria = Consultoria.cod_consultoria
    inner join   zagghcmcliente   as Cliente     on Atividade.cod_cliente = Cliente.cod_cliente
    inner join   zagghcmmodulo    as Modulo      on Atividade.cod_modulo = Atividade.cod_modulo
    inner join   zagghcmhabilidad as Habilidade  on Atividade.cod_habilidade = Habilidade.cod_habilidade
{
        //@Consumption.valueHelpDefinition: [{ entity:{name: 'Z_RECURSOS', element: 'cod_recurso' } }]
        
        @UI.hidden: true
        @EndUserText.label: 'Código Atividade'
  key   concat( Consultoria.cod_consultoria,
            concat( Atividade.data_atividade, Atividade.hora_atividade ) ) as cod_atividade,

        @UI.hidden: true
  key   Recurso.cod_recurso,

        @UI.hidden: true
  key   Modulo.cod_modulo,

        @Consumption.valueHelpDefinition: [{ entity:{name: 'Z_RECURSOS', element: 'nome_recurso' } }]
        @UI.lineItem: [{ position: 10 }]
        @EndUserText.label: 'Nome do Recurso'
  key   Recurso.nome_recurso,

        @UI.lineItem: [{ position: 20 }]
        @UI.selectionField: [{ position: 30 }]
        @EndUserText.label: 'Data da Atividade'
  key   Atividade.data_atividade,

        @UI.lineItem: [{ position: 70 }]
        @EndUserText.label: 'Cargo'
        Recurso.cargo_recurso,


        @UI.lineItem: [{ position: 40 }]
        @EndUserText.label: 'Tempo Gasto (Horas)'
        Atividade.tempo_gasto,

        @UI.hidden: true
        @EndUserText.label: 'Código da Consultoria'
        Consultoria.cod_consultoria,

        @UI.lineItem: [{ position: 50 }]
        @EndUserText.label: 'Nome da Consultoria'
        Consultoria.nome_consultoria,

        @UI.hidden: true
        Cliente.cod_cliente,

        @UI.lineItem: [{ position: 60 }]
        @EndUserText.label: 'Nome do Cliente'
        Cliente.nome_cliente,

        @UI.lineItem: [{ position: 30 }]
        @EndUserText.label: 'Nome da Habilidade'
        Habilidade.nome_habilidade,

        @UI.hidden: true
        @EndUserText.label: 'Código Habilidade'
        Habilidade.cod_habilidade,

        @UI.lineItem: [{ position: 80 }]
        @EndUserText.label: 'Nome do Módulo'
        Modulo.nome_modulo_br

}
