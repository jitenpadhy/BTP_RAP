@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection CDS : Order Header'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZJIT_PRC_SO
provider contract transactional_query
  as projection on ZJIT_CDS_RI_SO
{
  key Soid,
      Buyer,
      SalesPerson,
      SalesTimestamp,
      SalesManager,
      ApprovalTimestamp,
      CreatedBy,
      CreatedOn,
      ChangedBy,
      ChangedOn,
      Url,
      /* Associations */
      _Cust,
      _Item : redirected to composition child ZJIT_CDS_PRC_SOIT
}
