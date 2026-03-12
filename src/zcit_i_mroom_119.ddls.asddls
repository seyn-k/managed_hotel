@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Managed Child Interface View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCIT_I_MROOM_119 
  as select from zcit_mitem_119
  association to parent ZCIT_I_MHOTEL_119 as _Booking 
    on $projection.BookingId = _Booking.BookingId
{
  key booking_id as BookingId,
  key room_number as RoomNumber,
  room_type as RoomCategory, 
  
  @Semantics.largeObject: { mimeType: 'MimeType', fileName: 'FileName', contentDispositionPreference: #INLINE }
  attachment as Attachment,
  @Semantics.mimeType: true
  mimetype as MimeType,
  filename as FileName,

  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.lastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  
  _Booking
}
