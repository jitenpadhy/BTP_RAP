@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS with Join and assocaition'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZJIT_CDS_ASSOCIATION as select from  /dmo/flight as flight
 association to /dmo/connection as _conn
 on flight.carrier_id = _conn.carrier_id
{
key flight.carrier_id as CarrierId,
key flight.connection_id as ConnectionId,
key flight.flight_date as FlightDate,
//flight.price as Price,
flight.currency_code as CurrencyCode,
flight.plane_type_id as PlaneTypeId,
flight.seats_max as SeatsMax,
flight.seats_occupied as SeatsOccupied,
_conn

}
