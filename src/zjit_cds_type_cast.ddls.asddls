@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Type cast'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zjit_cds_type_cast
  as select from zjit_demo_exp
{
//place holder X
int1_field,
 cast( int1_field as abap.int8 ) as int1_to_int8,
 int4_field,
 cast( int4_field as abap.dec( 13, 2 ) ) as int4_to_dec13,
 numc_field1,
 cast( numc_field1 as abap.tims ) as numc_to_dats
  }
