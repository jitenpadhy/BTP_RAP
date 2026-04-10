@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for Delivery schedule'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZJIT_PROJ_DLSH
  as projection on ZJIT_ICDS_DLSH
  
{
  key Soid,
  key ItemId,
      Delno,
      Product,
      Quantity,
      Deldate,
      Unitmeasure,
      /* Associations */
      _Item :redirected to ZJIT_CDS_PRC_SOIT
      }
     
