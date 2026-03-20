@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds consumption View'
@Metadata.ignorePropagatedAnnotations: false
define view entity zjit_c_assignment
  as select from Zjit_CDS_SALES_REP
{
  key customer,
  key Currency,
      total_sales_amount
}
