@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'SALES'
@Metadata.ignorePropagatedAnnotations: true
define view entity Zjit_CDS_SALES_REP
  as select from zjit_dt_so   as head
    inner join   zjit_dt_soit as item on head.soid = item.soid
{
  key head.buyer         as customer,
  key item.currency      as Currency,
      @Semantics.amount.currencyCode: 'Currency'
      sum( item.amount ) as total_sales_amount

}
group by
  head.buyer,
  item.currency
