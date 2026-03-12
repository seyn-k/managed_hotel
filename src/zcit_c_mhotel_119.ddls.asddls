@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Managed Hotel Consumption'
@Search.searchable: true
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZCIT_C_MHOTEL_119 
  provider contract transactional_query
  as projection on ZCIT_I_MHOTEL_119
{
  @Search.defaultSearchElement: true
  key BookingId,
  GuestName,
  CheckInDate,
  CheckOutDate,
  @Semantics.amount.currencyCode: 'Currency'
  TotalPrice,
  Currency,
  LocalCreatedBy,
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  
  /* Associations */
  _Rooms : redirected to composition child ZCIT_C_MROOM_119
}
