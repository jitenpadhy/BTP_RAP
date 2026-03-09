@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Arithmatic Expression'
@Metadata.ignorePropagatedAnnotations: true
define view entity zjit_cds_arith_exp as select from zjit_demo_exp as exp
{
   key id as id,
   int1_field * int2_field as multi,
   dec_field ,
   ceil(dec_field) as C_ceil,
   abs(dec_field) as c_abs,
   floor(dec_field) as c_floor,
   round(dec_field , 1) as c_round1,
   round(dec_field , 2) as c_round2
}
