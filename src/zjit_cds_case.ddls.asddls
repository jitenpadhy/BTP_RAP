@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'case functions'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zjit_cds_case
  as select from zjit_demo_exp
{
int1_field,
case 
when int1_field <= 50
then 'Small interger'
when int1_field > 50 and  int1_field <= 200
then 'Integer'
when int1_field > 200
then 'Large integer'
end as integerType
  }
where int1_field >= 200
