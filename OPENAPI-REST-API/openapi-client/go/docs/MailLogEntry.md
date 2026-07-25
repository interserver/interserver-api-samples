# MailLogEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** | Internal auto-increment database row ID. | 
**Id** | **string** | The relay-assigned mail ID (18-19 hex characters).  Matches the &#x60;mailid&#x60; filter parameter and the &#x60;text&#x60; value returned by send endpoints. | 
**From** | **string** | SMTP envelope &#x60;MAIL FROM&#x60; address. | 
**To** | **string** | SMTP envelope &#x60;RCPT TO&#x60; address. | 
**Created** | **string** | Human-readable creation timestamp in &#x60;YYYY-MM-DD HH:MM:SS&#x60; format. | 
**Time** | **int32** | Unix timestamp of message acceptance.  Corresponds to the &#x60;startDate&#x60; and &#x60;endDate&#x60; filter parameters. | 
**User** | **string** | The SMTP AUTH username used to submit the message (e.g. &#x60;mb5658&#x60;). | 
**Transtype** | **string** | SMTP transaction type negotiated with the relay. | 
**Origin** | **string** | IP address of the client that submitted the message to the relay. | 
**Interface** | **string** | Relay interface name that accepted the message. | 
**Subject** | Pointer to **NullableString** | The &#x60;Subject&#x60; header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded. | [optional] 
**MessageId** | Pointer to **NullableString** | The &#x60;Message-ID&#x60; header value.  Can be used with the &#x60;messageId&#x60; filter for subsequent lookups. | [optional] 
**SendingZone** | Pointer to **NullableString** | The sending zone assigned by the relay for outbound delivery. | [optional] 
**BodySize** | Pointer to **NullableInt32** | Size of the message body in bytes. | [optional] 
**Seq** | Pointer to **NullableInt32** | Sequence index of this recipient in a multi-recipient message. Starts at 1. | [optional] 
**Delivered** | Pointer to **NullableInt32** | Delivery status flag.  &#x60;1&#x60; &#x3D; successfully delivered to destination MX. &#x60;0&#x60; &#x3D; queued, deferred, or failed.  &#x60;null&#x60; &#x3D; delivery not yet attempted. | [optional] 
**Code** | Pointer to **NullableInt32** | The SMTP response code from the destination MX server (e.g. &#x60;250&#x60;). | [optional] 
**Recipient** | Pointer to **NullableString** | The specific recipient address this delivery record is for. | [optional] 
**Response** | Pointer to **NullableString** | The full SMTP response string received from the destination MX server. | [optional] 
**Domain** | Pointer to **NullableString** | The destination domain for this delivery attempt. | [optional] 
**Locked** | Pointer to **NullableInt32** | Whether the queue entry is currently locked for delivery processing. | [optional] 
**LockTime** | Pointer to **NullableString** | Millisecond-precision timestamp of the last queue lock acquisition. | [optional] 
**Assigned** | Pointer to **NullableString** | The relay server node assigned to deliver this message. | [optional] 
**Queued** | Pointer to **NullableString** | ISO 8601 timestamp when the message was placed into the delivery queue. | [optional] 
**MxHostname** | Pointer to **NullableString** | The MX hostname the relay connected to for delivery.  Corresponds to the &#x60;mx&#x60; filter parameter. | [optional] 

## Methods

### NewMailLogEntry

`func NewMailLogEntry(id int32, id string, from string, to string, created string, time int32, user string, transtype string, origin string, interface_ string, ) *MailLogEntry`

NewMailLogEntry instantiates a new MailLogEntry object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMailLogEntryWithDefaults

`func NewMailLogEntryWithDefaults() *MailLogEntry`

NewMailLogEntryWithDefaults instantiates a new MailLogEntry object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *MailLogEntry) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *MailLogEntry) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *MailLogEntry) SetId(v int32)`

SetId sets Id field to given value.


### GetId

`func (o *MailLogEntry) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *MailLogEntry) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *MailLogEntry) SetId(v string)`

SetId sets Id field to given value.


### GetFrom

`func (o *MailLogEntry) GetFrom() string`

GetFrom returns the From field if non-nil, zero value otherwise.

### GetFromOk

`func (o *MailLogEntry) GetFromOk() (*string, bool)`

GetFromOk returns a tuple with the From field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrom

`func (o *MailLogEntry) SetFrom(v string)`

SetFrom sets From field to given value.


### GetTo

`func (o *MailLogEntry) GetTo() string`

GetTo returns the To field if non-nil, zero value otherwise.

### GetToOk

`func (o *MailLogEntry) GetToOk() (*string, bool)`

GetToOk returns a tuple with the To field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTo

`func (o *MailLogEntry) SetTo(v string)`

SetTo sets To field to given value.


### GetCreated

`func (o *MailLogEntry) GetCreated() string`

GetCreated returns the Created field if non-nil, zero value otherwise.

### GetCreatedOk

`func (o *MailLogEntry) GetCreatedOk() (*string, bool)`

GetCreatedOk returns a tuple with the Created field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreated

`func (o *MailLogEntry) SetCreated(v string)`

SetCreated sets Created field to given value.


### GetTime

`func (o *MailLogEntry) GetTime() int32`

GetTime returns the Time field if non-nil, zero value otherwise.

### GetTimeOk

`func (o *MailLogEntry) GetTimeOk() (*int32, bool)`

GetTimeOk returns a tuple with the Time field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTime

`func (o *MailLogEntry) SetTime(v int32)`

SetTime sets Time field to given value.


### GetUser

`func (o *MailLogEntry) GetUser() string`

GetUser returns the User field if non-nil, zero value otherwise.

### GetUserOk

`func (o *MailLogEntry) GetUserOk() (*string, bool)`

GetUserOk returns a tuple with the User field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUser

`func (o *MailLogEntry) SetUser(v string)`

SetUser sets User field to given value.


### GetTranstype

`func (o *MailLogEntry) GetTranstype() string`

GetTranstype returns the Transtype field if non-nil, zero value otherwise.

### GetTranstypeOk

`func (o *MailLogEntry) GetTranstypeOk() (*string, bool)`

GetTranstypeOk returns a tuple with the Transtype field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTranstype

`func (o *MailLogEntry) SetTranstype(v string)`

SetTranstype sets Transtype field to given value.


### GetOrigin

`func (o *MailLogEntry) GetOrigin() string`

GetOrigin returns the Origin field if non-nil, zero value otherwise.

### GetOriginOk

`func (o *MailLogEntry) GetOriginOk() (*string, bool)`

GetOriginOk returns a tuple with the Origin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrigin

`func (o *MailLogEntry) SetOrigin(v string)`

SetOrigin sets Origin field to given value.


### GetInterface

`func (o *MailLogEntry) GetInterface() string`

GetInterface returns the Interface field if non-nil, zero value otherwise.

### GetInterfaceOk

`func (o *MailLogEntry) GetInterfaceOk() (*string, bool)`

GetInterfaceOk returns a tuple with the Interface field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInterface

`func (o *MailLogEntry) SetInterface(v string)`

SetInterface sets Interface field to given value.


### GetSubject

`func (o *MailLogEntry) GetSubject() string`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *MailLogEntry) GetSubjectOk() (*string, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *MailLogEntry) SetSubject(v string)`

SetSubject sets Subject field to given value.

### HasSubject

`func (o *MailLogEntry) HasSubject() bool`

HasSubject returns a boolean if a field has been set.

### SetSubjectNil

`func (o *MailLogEntry) SetSubjectNil(b bool)`

 SetSubjectNil sets the value for Subject to be an explicit nil

### UnsetSubject
`func (o *MailLogEntry) UnsetSubject()`

UnsetSubject ensures that no value is present for Subject, not even an explicit nil
### GetMessageId

`func (o *MailLogEntry) GetMessageId() string`

GetMessageId returns the MessageId field if non-nil, zero value otherwise.

### GetMessageIdOk

`func (o *MailLogEntry) GetMessageIdOk() (*string, bool)`

GetMessageIdOk returns a tuple with the MessageId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessageId

`func (o *MailLogEntry) SetMessageId(v string)`

SetMessageId sets MessageId field to given value.

### HasMessageId

`func (o *MailLogEntry) HasMessageId() bool`

HasMessageId returns a boolean if a field has been set.

### SetMessageIdNil

`func (o *MailLogEntry) SetMessageIdNil(b bool)`

 SetMessageIdNil sets the value for MessageId to be an explicit nil

### UnsetMessageId
`func (o *MailLogEntry) UnsetMessageId()`

UnsetMessageId ensures that no value is present for MessageId, not even an explicit nil
### GetSendingZone

`func (o *MailLogEntry) GetSendingZone() string`

GetSendingZone returns the SendingZone field if non-nil, zero value otherwise.

### GetSendingZoneOk

`func (o *MailLogEntry) GetSendingZoneOk() (*string, bool)`

GetSendingZoneOk returns a tuple with the SendingZone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSendingZone

`func (o *MailLogEntry) SetSendingZone(v string)`

SetSendingZone sets SendingZone field to given value.

### HasSendingZone

`func (o *MailLogEntry) HasSendingZone() bool`

HasSendingZone returns a boolean if a field has been set.

### SetSendingZoneNil

`func (o *MailLogEntry) SetSendingZoneNil(b bool)`

 SetSendingZoneNil sets the value for SendingZone to be an explicit nil

### UnsetSendingZone
`func (o *MailLogEntry) UnsetSendingZone()`

UnsetSendingZone ensures that no value is present for SendingZone, not even an explicit nil
### GetBodySize

`func (o *MailLogEntry) GetBodySize() int32`

GetBodySize returns the BodySize field if non-nil, zero value otherwise.

### GetBodySizeOk

`func (o *MailLogEntry) GetBodySizeOk() (*int32, bool)`

GetBodySizeOk returns a tuple with the BodySize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBodySize

`func (o *MailLogEntry) SetBodySize(v int32)`

SetBodySize sets BodySize field to given value.

### HasBodySize

`func (o *MailLogEntry) HasBodySize() bool`

HasBodySize returns a boolean if a field has been set.

### SetBodySizeNil

`func (o *MailLogEntry) SetBodySizeNil(b bool)`

 SetBodySizeNil sets the value for BodySize to be an explicit nil

### UnsetBodySize
`func (o *MailLogEntry) UnsetBodySize()`

UnsetBodySize ensures that no value is present for BodySize, not even an explicit nil
### GetSeq

`func (o *MailLogEntry) GetSeq() int32`

GetSeq returns the Seq field if non-nil, zero value otherwise.

### GetSeqOk

`func (o *MailLogEntry) GetSeqOk() (*int32, bool)`

GetSeqOk returns a tuple with the Seq field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSeq

`func (o *MailLogEntry) SetSeq(v int32)`

SetSeq sets Seq field to given value.

### HasSeq

`func (o *MailLogEntry) HasSeq() bool`

HasSeq returns a boolean if a field has been set.

### SetSeqNil

`func (o *MailLogEntry) SetSeqNil(b bool)`

 SetSeqNil sets the value for Seq to be an explicit nil

### UnsetSeq
`func (o *MailLogEntry) UnsetSeq()`

UnsetSeq ensures that no value is present for Seq, not even an explicit nil
### GetDelivered

`func (o *MailLogEntry) GetDelivered() int32`

GetDelivered returns the Delivered field if non-nil, zero value otherwise.

### GetDeliveredOk

`func (o *MailLogEntry) GetDeliveredOk() (*int32, bool)`

GetDeliveredOk returns a tuple with the Delivered field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDelivered

`func (o *MailLogEntry) SetDelivered(v int32)`

SetDelivered sets Delivered field to given value.

### HasDelivered

`func (o *MailLogEntry) HasDelivered() bool`

HasDelivered returns a boolean if a field has been set.

### SetDeliveredNil

`func (o *MailLogEntry) SetDeliveredNil(b bool)`

 SetDeliveredNil sets the value for Delivered to be an explicit nil

### UnsetDelivered
`func (o *MailLogEntry) UnsetDelivered()`

UnsetDelivered ensures that no value is present for Delivered, not even an explicit nil
### GetCode

`func (o *MailLogEntry) GetCode() int32`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *MailLogEntry) GetCodeOk() (*int32, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *MailLogEntry) SetCode(v int32)`

SetCode sets Code field to given value.

### HasCode

`func (o *MailLogEntry) HasCode() bool`

HasCode returns a boolean if a field has been set.

### SetCodeNil

`func (o *MailLogEntry) SetCodeNil(b bool)`

 SetCodeNil sets the value for Code to be an explicit nil

### UnsetCode
`func (o *MailLogEntry) UnsetCode()`

UnsetCode ensures that no value is present for Code, not even an explicit nil
### GetRecipient

`func (o *MailLogEntry) GetRecipient() string`

GetRecipient returns the Recipient field if non-nil, zero value otherwise.

### GetRecipientOk

`func (o *MailLogEntry) GetRecipientOk() (*string, bool)`

GetRecipientOk returns a tuple with the Recipient field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecipient

`func (o *MailLogEntry) SetRecipient(v string)`

SetRecipient sets Recipient field to given value.

### HasRecipient

`func (o *MailLogEntry) HasRecipient() bool`

HasRecipient returns a boolean if a field has been set.

### SetRecipientNil

`func (o *MailLogEntry) SetRecipientNil(b bool)`

 SetRecipientNil sets the value for Recipient to be an explicit nil

### UnsetRecipient
`func (o *MailLogEntry) UnsetRecipient()`

UnsetRecipient ensures that no value is present for Recipient, not even an explicit nil
### GetResponse

`func (o *MailLogEntry) GetResponse() string`

GetResponse returns the Response field if non-nil, zero value otherwise.

### GetResponseOk

`func (o *MailLogEntry) GetResponseOk() (*string, bool)`

GetResponseOk returns a tuple with the Response field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResponse

`func (o *MailLogEntry) SetResponse(v string)`

SetResponse sets Response field to given value.

### HasResponse

`func (o *MailLogEntry) HasResponse() bool`

HasResponse returns a boolean if a field has been set.

### SetResponseNil

`func (o *MailLogEntry) SetResponseNil(b bool)`

 SetResponseNil sets the value for Response to be an explicit nil

### UnsetResponse
`func (o *MailLogEntry) UnsetResponse()`

UnsetResponse ensures that no value is present for Response, not even an explicit nil
### GetDomain

`func (o *MailLogEntry) GetDomain() string`

GetDomain returns the Domain field if non-nil, zero value otherwise.

### GetDomainOk

`func (o *MailLogEntry) GetDomainOk() (*string, bool)`

GetDomainOk returns a tuple with the Domain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDomain

`func (o *MailLogEntry) SetDomain(v string)`

SetDomain sets Domain field to given value.

### HasDomain

`func (o *MailLogEntry) HasDomain() bool`

HasDomain returns a boolean if a field has been set.

### SetDomainNil

`func (o *MailLogEntry) SetDomainNil(b bool)`

 SetDomainNil sets the value for Domain to be an explicit nil

### UnsetDomain
`func (o *MailLogEntry) UnsetDomain()`

UnsetDomain ensures that no value is present for Domain, not even an explicit nil
### GetLocked

`func (o *MailLogEntry) GetLocked() int32`

GetLocked returns the Locked field if non-nil, zero value otherwise.

### GetLockedOk

`func (o *MailLogEntry) GetLockedOk() (*int32, bool)`

GetLockedOk returns a tuple with the Locked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocked

`func (o *MailLogEntry) SetLocked(v int32)`

SetLocked sets Locked field to given value.

### HasLocked

`func (o *MailLogEntry) HasLocked() bool`

HasLocked returns a boolean if a field has been set.

### SetLockedNil

`func (o *MailLogEntry) SetLockedNil(b bool)`

 SetLockedNil sets the value for Locked to be an explicit nil

### UnsetLocked
`func (o *MailLogEntry) UnsetLocked()`

UnsetLocked ensures that no value is present for Locked, not even an explicit nil
### GetLockTime

`func (o *MailLogEntry) GetLockTime() string`

GetLockTime returns the LockTime field if non-nil, zero value otherwise.

### GetLockTimeOk

`func (o *MailLogEntry) GetLockTimeOk() (*string, bool)`

GetLockTimeOk returns a tuple with the LockTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLockTime

`func (o *MailLogEntry) SetLockTime(v string)`

SetLockTime sets LockTime field to given value.

### HasLockTime

`func (o *MailLogEntry) HasLockTime() bool`

HasLockTime returns a boolean if a field has been set.

### SetLockTimeNil

`func (o *MailLogEntry) SetLockTimeNil(b bool)`

 SetLockTimeNil sets the value for LockTime to be an explicit nil

### UnsetLockTime
`func (o *MailLogEntry) UnsetLockTime()`

UnsetLockTime ensures that no value is present for LockTime, not even an explicit nil
### GetAssigned

`func (o *MailLogEntry) GetAssigned() string`

GetAssigned returns the Assigned field if non-nil, zero value otherwise.

### GetAssignedOk

`func (o *MailLogEntry) GetAssignedOk() (*string, bool)`

GetAssignedOk returns a tuple with the Assigned field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssigned

`func (o *MailLogEntry) SetAssigned(v string)`

SetAssigned sets Assigned field to given value.

### HasAssigned

`func (o *MailLogEntry) HasAssigned() bool`

HasAssigned returns a boolean if a field has been set.

### SetAssignedNil

`func (o *MailLogEntry) SetAssignedNil(b bool)`

 SetAssignedNil sets the value for Assigned to be an explicit nil

### UnsetAssigned
`func (o *MailLogEntry) UnsetAssigned()`

UnsetAssigned ensures that no value is present for Assigned, not even an explicit nil
### GetQueued

`func (o *MailLogEntry) GetQueued() string`

GetQueued returns the Queued field if non-nil, zero value otherwise.

### GetQueuedOk

`func (o *MailLogEntry) GetQueuedOk() (*string, bool)`

GetQueuedOk returns a tuple with the Queued field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQueued

`func (o *MailLogEntry) SetQueued(v string)`

SetQueued sets Queued field to given value.

### HasQueued

`func (o *MailLogEntry) HasQueued() bool`

HasQueued returns a boolean if a field has been set.

### SetQueuedNil

`func (o *MailLogEntry) SetQueuedNil(b bool)`

 SetQueuedNil sets the value for Queued to be an explicit nil

### UnsetQueued
`func (o *MailLogEntry) UnsetQueued()`

UnsetQueued ensures that no value is present for Queued, not even an explicit nil
### GetMxHostname

`func (o *MailLogEntry) GetMxHostname() string`

GetMxHostname returns the MxHostname field if non-nil, zero value otherwise.

### GetMxHostnameOk

`func (o *MailLogEntry) GetMxHostnameOk() (*string, bool)`

GetMxHostnameOk returns a tuple with the MxHostname field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMxHostname

`func (o *MailLogEntry) SetMxHostname(v string)`

SetMxHostname sets MxHostname field to given value.

### HasMxHostname

`func (o *MailLogEntry) HasMxHostname() bool`

HasMxHostname returns a boolean if a field has been set.

### SetMxHostnameNil

`func (o *MailLogEntry) SetMxHostnameNil(b bool)`

 SetMxHostnameNil sets the value for MxHostname to be an explicit nil

### UnsetMxHostname
`func (o *MailLogEntry) UnsetMxHostname()`

UnsetMxHostname ensures that no value is present for MxHostname, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


