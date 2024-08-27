@Metadata.layer: #CUSTOMER

@UI.headerInfo: {
    typeName: 'Habilidade',
    typeNamePlural: 'Habilidades',
    typeImageUrl: 'sap-icon://activity-items',
    title: { type: #STANDARD, value: 'nome_habilidade' }}

annotate view Z_HABILIDADES with
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
  cod_habilidade;
  
  @UI: {
    lineItem: [{ position: 20, importance: #HIGH }],
    identification: [{ position: 20, importance: #HIGH }]}
  nome_habilidade;
  
  @UI: { identification: [{ position: 30 }] }
  ativo;

  @UI: { identification: [{ position: 40 }] }
  data_inicio;

  @UI: { identification: [{ position: 50 }] }
  data_fim;


}