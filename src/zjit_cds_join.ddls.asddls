@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS with Join and assocaition'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zjit_cds_join as select from zjit_dt_so as head
inner join zjit_dt_soit as item
on head.soid = item.soid
{
    key head.soid as Soid,
    key item.item_id as ItemId,
    head.buyer as Buyer,
    head.sales_person as SalesPerson,
    head.sales_timestamp as SalesTimestamp,
    head.sales_manager as SalesManager,
    head.approval_timestamp as ApprovalTimestamp,
    head.created_by as CreatedBy,
    head.created_on as CreatedOn,
    head.changed_by as ChangedBy,
    head.changed_on as ChangedOn,
    head.url as Url,
    item.product as Product,
    @Semantics.amount.currencyCode: 'Currency'
    item.amount as Amount,
    item.currency as Currency,
    item.image_item as ImageItem
}
