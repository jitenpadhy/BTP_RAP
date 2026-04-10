@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales order Item root to child'
@Metadata.ignorePropagatedAnnotations: true
/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ]  } */
define  view entity ZJIT_CDS_RC_SOIT
  as select from zjit_dt_soit
    association to parent ZJIT_CDS_RI_SO as _header
  on $projection.Soid  = _header.Soid
  
  association to ZJKP_ICDS_PROD as _Prod
on  $projection.Product = _Prod.ProdId

association to ZJIT_ICDS_DLSH as _DLSH
on $projection.Soid = _DLSH.Soid
and $projection.ItemId = _DLSH.ItemId
{
  key soid               as Soid,
  key item_id            as ItemId,
      product            as Product,
      @Semantics.amount.currencyCode: 'Currency'
      amount             as Amount,
      currency           as Currency,
      sales_person       as SalesPerson,
      sales_timestamp    as SalesTimestamp,
      sales_manager      as SalesManager,
      approval_timestamp as ApprovalTimestamp,
      changed_by         as ChangedBy,
      changed_on         as ChangedOn,
      image_item         as ImageItem,
      _header ,
      _Prod ,
      _DLSH   
}
