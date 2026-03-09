@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo Expression table'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zjit_cds_demo_exp as select from zjit_demo_exp
{
    key id as Id,
    char_field1 as CharField1,
    char_field2 as CharField2,
    char_field3 as CharField3,
    numc_field1 as NumcField1,
    numc_field2 as NumcField2,
    string_field as StringField,
    sstring_field as SstringField,
    date_field as DateField,
    time_field as TimeField,
    int1_field as Int1Field,
    int2_field as Int2Field,
    int4_field as Int4Field,       
    dec_field as DecField,
    @Semantics.amount.currencyCode: 'CurrencyKey'
    curr_field as CurrField,
    @Semantics.quantity.unitOfMeasure: 'UnitKey'
    quan_field as QuanField,
    currency_key as CurrencyKey,
    unit_key as UnitKey,
    raw_data as RawData
}
