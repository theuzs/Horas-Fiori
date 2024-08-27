@Metadata.layer: #CUSTOMER

@UI.headerInfo: {
    typeName: 'Consultoria',
    typeNamePlural: 'Consultorias',
    typeImageUrl: 'sap-icon://company-view',
    title: { type: #STANDARD, value: 'nome_consultoria' }}
annotate view Z_CONSULTORIA with
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
    identification: [{ position: 20, importance: #HIGH }]}
  nome_consultoria;
  
  @UI: { identification: [{ position: 30 }] }
  ativo;

  @UI: { identification: [{ position: 40 }] }
  data_inicio;

  @UI: { identification: [{ position: 50 }] }
  data_fim;


}