@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for Invoivoice table'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZJIT_ICDS_INV as select from zjit_dt_inv
{
    key soid as Soid,
    key item_id as ItemId,
    key invno as Invno,
    cust as Cust,
    @Semantics.amount.currencyCode: 'Custcurr'
    billamt as Billamt,
    custcurr as Custcurr
}
