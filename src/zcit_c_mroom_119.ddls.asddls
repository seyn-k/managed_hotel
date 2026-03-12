@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Managed Room Consumption'
@Search.searchable: true
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZCIT_C_MROOM_119 
  as projection on ZCIT_I_MROOM_119
{
  key BookingId,
  key RoomNumber,
  @Search.defaultSearchElement: true
  RoomCategory, 
  Attachment,
  MimeType,
  FileName,
  LocalCreatedBy,
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  
  /* Associations */
  _Booking : redirected to parent ZCIT_C_MHOTEL_119
}
