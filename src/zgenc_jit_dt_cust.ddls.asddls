@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZGENJIT_DT_CUST'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZGENC_JIT_DT_CUST
  provider contract TRANSACTIONAL_QUERY
  as projection on ZGENR_JIT_DT_CUST
  association [1..1] to ZGENR_JIT_DT_CUST as _BaseEntity on $projection.CUSTID = _BaseEntity.CUSTID
{
  key CustID,
  Name,
  CompanyName,
  Country,
  City,
  Mobile,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChanged,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChanged,
  @Semantics: {
    User.Createdby: true
  }
  LocalChangedBy,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  _BaseEntity
}
