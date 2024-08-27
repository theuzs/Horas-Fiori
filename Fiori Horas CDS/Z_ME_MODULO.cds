@Metadata.layer: #CUSTOMER

@UI.headerInfo: {
    typeName: 'Mn',
    typeNamePlural: 'Clientes',
    typeImageUrl: 'sap-icon://grid',
    title: { type: #STANDARD, value: 'nome_modulo_BR' }}
annotate view Z_MODULO with
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
      id: 'idIdentification'}]

  @UI: {
      lineItem: [{ position: 10, importance: #HIGH }],
      identification: [{ position: 10, importance: #HIGH }]}
  cod_modulo;

  @UI: {
    lineItem: [{ position: 20, importance: #HIGH }],
    identification: [{ position: 20, importance: #HIGH }]}
  sig_cliente;

  @UI: { identification: [{ position: 30 }] }
  ativo;

  @UI: { identification: [{ position: 40 }] }
  nome_modulo_br;

  @UI: { identification: [{ position: 50 }] }
  nome_modulo_sap;

  @UI: { identification: [{ position: 60 }] }
  data_inicio;

  @UI: { identification: [{ position: 70 }] }
  data_fim;

}