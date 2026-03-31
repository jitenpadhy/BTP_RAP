@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'INTERFACE CDS FOR PRODUCT'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZJKP_ICDS_PROD as select from zjit_dt_prod
{
    key prod_id as ProdId,
    descpt as Descpt,
    @Semantics.amount.currencyCode: 'Currency'
    price as Price,
    currency as Currency
}
