@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'INTERFACE CDS FOR CUSTOMER'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZJKP_ICDS_CUST as select from zjit_dt_cust
{
    key cust_id as CustId,
    name as Name,
    company_name as CompanyName,
    country as Country,
    city as City,
    mobile as Mobile,
    local_last_changed as LocalLastChanged,
    last_changed as LastChanged,
    local_changed_by as LocalChangedBy,
    last_changed_by as LastChangedBy
}
