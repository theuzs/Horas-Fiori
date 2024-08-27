@Metadata.layer: #CUSTOMER

@UI.headerInfo: {
    typeName: 'Cliente',
    typeNamePlural: 'Clientes',
    typeImageUrl: 'sap-icon://supplier',
    title: { type: #STANDARD, value: 'nome_cliente' }}
annotate view Z_CLIENTES with
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
       label: 'Detalhes do Cliente',
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
  nome_cliente;

  @UI: {
    lineItem: [{ position: 30, importance: #HIGH }],
    identification: [{ position: 30, importance: #HIGH }]}
  cod_cliente;

  @UI: { identification: [{ position: 30 }] }
  ativo;

  @UI: { identification: [{ position: 40 }] }
  data_inicio;

  @UI: { identification: [{ position: 50 }] }
  data_fim;


}