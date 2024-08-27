@Metadata.layer: #CUSTOMER

@UI.headerInfo: {
    typeName: 'Atividade',
    typeNamePlural: 'Atividades',
    typeImageUrl: 'sap-icon://work-history',
    title: { type: #STANDARD, value: 'Cod_consultoria' },
    description: { type: #STANDARD, value: 'Data_atividade' }
}
annotate view Z_ATIVIDADES with
{
  @UI.facet: [
      {
          id: 'idGeneralInformation',
          type: #COLLECTION,
          label: 'Informações Gerais',
          position: 10
      },
      {
          type: #IDENTIFICATION_REFERENCE,
          label: 'Detalhes da Atividade',
          parentId: 'idGeneralInformation',
          id: 'idIdentification'
      }
  ]

  @UI: {
      lineItem: [{ position: 10, importance: #HIGH }],
      identification: [{ position: 10, importance: #HIGH }]}
  cod_consultoria;

  @UI: {
    lineItem: [{ position: 20, importance: #HIGH }],
    identification: [{ position: 10, importance: #HIGH }]}
  nome_consultoria;

  @UI: { identification: [{ position: 30 }] }
  cod_cliente;

  @UI: { identification: [{ position: 40 }] }
  nome_cliente;

  @UI: { identification: [{ position: 50 }] }
  cod_modulo;

  @UI: { identification: [{ position: 60 }] }
  nome_modulo_br;

  @UI: { identification: [{ position: 70 }] }
  cod_recurso;

  @UI: { identification: [{ position: 80 }] }
  nome_recurso;

  @UI: { identification: [{ position: 90 }] }
  cod_habilidade;

  @UI: { identification: [{ position: 100 }] }
  nome_habilidade;

  @UI: { identification: [{ position: 110 }] }
  data_atividade;

  @UI: { identification: [{ position: 120 }] }
  hora_atividade;

  @UI: { identification: [{ position: 130 }] }
  tempo_gasto;
}