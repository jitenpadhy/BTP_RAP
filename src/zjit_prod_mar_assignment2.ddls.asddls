@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'March Assignment 2 on Customer Sales Summary'
@Metadata.ignorePropagatedAnnotations: true
define view entity zjit_prod_mar_assignment2
  as select from  zjit_dt_so as sh
    inner join zjit_dt_soit as it
  on sh.soid = it.soid
  inner join zjit_dt_cust as cust
  on sh.buyer = cust.cust_id
{
cust.cust_id as Customer_id,
cust.name as Customer_Name,

//@Semantics.amount.currencyCode: 'zjit_dt_prod.currency' 
count( distinct sh.soid) as Sales_order_count,
@Semantics.amount.currencyCode: 'Currency'
sum(it.amount) as Total_amount,
it.currency as Currency

  }
  group by cust.cust_id,
           cust.name,
           it.currency,
           it.amount
