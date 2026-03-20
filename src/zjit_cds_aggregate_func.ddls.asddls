@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Aggregate Function'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZJIT_CDS_aggregate_func
  as select from zjit_demo_exp as demo
{
id,
char_field1 as grouping,
sum(dec_field) as aggreagation
  }
  group by id,char_field1
  having sum(dec_field) >= 5555555.55
