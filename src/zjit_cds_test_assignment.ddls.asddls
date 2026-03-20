@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Assignment'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zjit_cds_test_assignment
  as select from zjit_demo_exp
{
 numc_field1 as Actual_value,
 cast( numc_field1 as abap.dec( 8, 2 ) ) / 10 as Discount,
 cast( numc_field1 as abap.int8 ) * cast(0.90 as abap.dec( 3, 2 ) ) as After_Doscount,
 
 case 
 when
 cast( numc_field1 as abap.int8 ) * cast(0.90 as abap.dec( 3, 2 ) ) > 110700.00 
 then   'Success'
 else 

 'Error'
 end as message
  }
