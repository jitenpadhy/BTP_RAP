@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zjit_cds_consumption
  as select from Zjit_cds_string_func as str
{

l_trimZ,
l_trimF,
s_replace,
S_substring,
S_lpad
  }
