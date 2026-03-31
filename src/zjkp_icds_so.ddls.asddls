@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'INTERFACE CDS FOR SALES HEADER'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZJKP_ICDS_SO
  as select from zjit_dt_so as hd
  association [1..*] to ZJKP_ICDS_SI as _Item
  on hd.soid = _Item.Soid
  association [1..1] to ZJKP_ICDS_CUST as _Cust
  on hd.buyer = _Cust.CustId
{
  key soid               as Soid,
      buyer              as Buyer,
      sales_person       as SalesPerson,
      sales_timestamp    as SalesTimestamp,
      sales_manager      as SalesManager,
      approval_timestamp as ApprovalTimestamp,
      created_by         as CreatedBy,
      created_on         as CreatedOn,
      changed_by         as ChangedBy,
      changed_on         as ChangedOn,
      url                as Url,
      _Item,
      _Cust
}
