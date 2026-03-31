@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'INTERFACE CDS FOR SALES Header and item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZJKP_ICDS_SI
  as select from zjit_dt_soit as It
  association [1..1] to ZJKP_ICDS_PROD as _Prod
  on It.product = _Prod.ProdId
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
      _Prod
}
