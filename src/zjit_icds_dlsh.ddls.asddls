@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface For delivery schedule table'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZJIT_ICDS_DLSH
  as select from zjit_dt_dlsh
{
  key soid        as Soid,
  key item_id     as ItemId,
      delno       as Delno,
      product     as Product,
      @Semantics.quantity.unitOfMeasure: 'Unitmeasure'
      quantity    as Quantity,
      deldate     as Deldate,
      unitmeasure as Unitmeasure
}
