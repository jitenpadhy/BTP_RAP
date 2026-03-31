@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Cds view'
@Metadata.ignorePropagatedAnnotations: true
/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ]  } */
define root view entity ZJIT_CDS_RI_SO
  as select from zjit_dt_so
  composition [1..*] of  ZJIT_CDS_RC_SOIT as _Item

  association to ZJKP_ICDS_CUST   as _Cust
   on $projection.Buyer = _Cust.CustId


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
