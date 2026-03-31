@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection CDS : Order Item'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define  view entity ZJIT_CDS_PRC_SOIT
  as projection on ZJIT_CDS_RC_SOIT
{
  key Soid,
  key ItemId,
      Product,
   //   @Semantics.amount.currencyCode: 'Currency'
      Amount,
      Currency,
      SalesPerson,
      SalesTimestamp,
      SalesManager,
      ApprovalTimestamp,
      ChangedBy,
      ChangedOn,
      ImageItem,
      /* Associations */
      _header : redirected to parent ZJIT_PRC_SO ,
      _Prod
}
