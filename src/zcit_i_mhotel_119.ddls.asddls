@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Managed Root Interface View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCIT_I_MHOTEL_119 
  as select from zcit_mhead_119
  composition [0..*] of ZCIT_I_MROOM_119 as _Rooms
{
  key booking_id as BookingId,
  guest_name as GuestName,
  check_in_date as CheckInDate,
  check_out_date as CheckOutDate,
  @Semantics.amount.currencyCode: 'Currency'
  total_price as TotalPrice,
  currency as Currency,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.lastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  
  _Rooms
}
