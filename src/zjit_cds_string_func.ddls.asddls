@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'String Function'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zjit_cds_string_func as select from zjit_demo_exp as demo
{
    id,
    char_field1,
    ltrim( char_field1, 'Z' ) as l_trimZ,
    ltrim( char_field1, 'F' ) as l_trimF,
    replace( char_field1, 'LL', 'BB' ) as s_replace,
    substring( char_field1, 3, 3 ) as S_substring,
    lpad( char_field1, 8, 'FF' ) as S_lpad
}
