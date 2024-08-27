@Metadata.layer: #CORE
@UI.headerInfo: {
    typeName: 'Hora',
    typeNamePlural: 'Horas',
    typeImageUrl: 'sap-icon://time-account',
    title: { type: #STANDARD, value: 'nome_recurso' },
    description: { type: #STANDARD, value: 'nome_cliente' }
}

annotate view Z_FECHAMENTO_HORAS with
{

  @UI.facet: [
    {
        id: 'idGeneralInformation',
        type: #COLLECTION,
        label: 'Informações da Hora',
        position: 10
    },
    {
        type: #IDENTIFICATION_REFERENCE,
        label: 'Detalhes do Recurso',
        parentId: 'idGeneralInformation', // Corrigido o nome do parentId
        id: 'idIdentification'
    }
  ]

  @UI: {
      lineItem: [{ position: 10, importance: #HIGH }],
      identification: [{ position: 10, importance: #HIGH }]
  }
  cod_recurso;

  @UI.selectionField: [{ position: 10 }]
  @UI: { identification: [{ position: 20 }] }
  nome_recurso;

  @UI: { identification: [{ position: 30 }] }
  data_atividade;

  @UI: { identification: [{ position: 40 }] }
  tempo_gasto;

  @UI: { identification: [{ position: 50 }] }
  nome_consultoria;

  @UI: { identification: [{ position: 60 }] }
  nome_modulo_br;

  @UI: { identification: [{ position: 70 }] }
  nome_habilidade;


}