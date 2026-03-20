@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'March Assignment 1 on product'
@Metadata.ignorePropagatedAnnotations: true
define view entity zjit_prod_mar_assignment1
  as select from zjit_dt_prod
{
key prod_id as ProdId,
descpt as Descpt,
@Semantics.amount.currencyCode: 'Currency'
price as Price,
currency as Currency,
cast ( price as abap.fltp ) * cast( 0.18  as abap.fltp ) + cast( price as abap.fltp) as  Price_with_Tax
//cast( zjit_prod_mar_assignment1.Price_with_Tax as abap.dec( 15, 2 )) as Price_with_Tax1
  }
 