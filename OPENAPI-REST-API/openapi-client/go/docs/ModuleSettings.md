# ModuleSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SERVICE_ID_OFFSET** | **int32** |  | 
**USE_REPEAT_INVOICE** | **bool** |  | 
**USE_PACKAGES** | **bool** |  | 
**BILLING_DAYS_OFFSET** | **int32** |  | 
**IMGNAME** | **string** |  | 
**REPEAT_BILLING_METHOD** | **int32** |  | 
**DELETE_PENDING_DAYS** | **int32** |  | 
**SUSPEND_DAYS** | **int32** |  | 
**SUSPEND_WARNING_DAYS** | **int32** |  | 
**TITLE** | **string** |  | 
**MENUNAME** | **string** |  | 
**EMAIL_FROM** | **string** |  | 
**TBLNAME** | **string** |  | 
**TABLE** | **string** |  | 
**TITLE_FIELD** | **string** |  | 
**PREFIX** | **string** |  | 
**TITLEFIELD2** | Pointer to **string** |  | [optional] 
**TITLEFIELD3** | Pointer to **string** |  | [optional] 

## Methods

### NewModuleSettings

`func NewModuleSettings(sERVICEIDOFFSET int32, uSEREPEATINVOICE bool, uSEPACKAGES bool, bILLINGDAYSOFFSET int32, iMGNAME string, rEPEATBILLINGMETHOD int32, dELETEPENDINGDAYS int32, sUSPENDDAYS int32, sUSPENDWARNINGDAYS int32, tITLE string, mENUNAME string, eMAILFROM string, tBLNAME string, tABLE string, tITLEFIELD string, pREFIX string, ) *ModuleSettings`

NewModuleSettings instantiates a new ModuleSettings object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewModuleSettingsWithDefaults

`func NewModuleSettingsWithDefaults() *ModuleSettings`

NewModuleSettingsWithDefaults instantiates a new ModuleSettings object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSERVICE_ID_OFFSET

`func (o *ModuleSettings) GetSERVICE_ID_OFFSET() int32`

GetSERVICE_ID_OFFSET returns the SERVICE_ID_OFFSET field if non-nil, zero value otherwise.

### GetSERVICE_ID_OFFSETOk

`func (o *ModuleSettings) GetSERVICE_ID_OFFSETOk() (*int32, bool)`

GetSERVICE_ID_OFFSETOk returns a tuple with the SERVICE_ID_OFFSET field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSERVICE_ID_OFFSET

`func (o *ModuleSettings) SetSERVICE_ID_OFFSET(v int32)`

SetSERVICE_ID_OFFSET sets SERVICE_ID_OFFSET field to given value.


### GetUSE_REPEAT_INVOICE

`func (o *ModuleSettings) GetUSE_REPEAT_INVOICE() bool`

GetUSE_REPEAT_INVOICE returns the USE_REPEAT_INVOICE field if non-nil, zero value otherwise.

### GetUSE_REPEAT_INVOICEOk

`func (o *ModuleSettings) GetUSE_REPEAT_INVOICEOk() (*bool, bool)`

GetUSE_REPEAT_INVOICEOk returns a tuple with the USE_REPEAT_INVOICE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUSE_REPEAT_INVOICE

`func (o *ModuleSettings) SetUSE_REPEAT_INVOICE(v bool)`

SetUSE_REPEAT_INVOICE sets USE_REPEAT_INVOICE field to given value.


### GetUSE_PACKAGES

`func (o *ModuleSettings) GetUSE_PACKAGES() bool`

GetUSE_PACKAGES returns the USE_PACKAGES field if non-nil, zero value otherwise.

### GetUSE_PACKAGESOk

`func (o *ModuleSettings) GetUSE_PACKAGESOk() (*bool, bool)`

GetUSE_PACKAGESOk returns a tuple with the USE_PACKAGES field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUSE_PACKAGES

`func (o *ModuleSettings) SetUSE_PACKAGES(v bool)`

SetUSE_PACKAGES sets USE_PACKAGES field to given value.


### GetBILLING_DAYS_OFFSET

`func (o *ModuleSettings) GetBILLING_DAYS_OFFSET() int32`

GetBILLING_DAYS_OFFSET returns the BILLING_DAYS_OFFSET field if non-nil, zero value otherwise.

### GetBILLING_DAYS_OFFSETOk

`func (o *ModuleSettings) GetBILLING_DAYS_OFFSETOk() (*int32, bool)`

GetBILLING_DAYS_OFFSETOk returns a tuple with the BILLING_DAYS_OFFSET field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBILLING_DAYS_OFFSET

`func (o *ModuleSettings) SetBILLING_DAYS_OFFSET(v int32)`

SetBILLING_DAYS_OFFSET sets BILLING_DAYS_OFFSET field to given value.


### GetIMGNAME

`func (o *ModuleSettings) GetIMGNAME() string`

GetIMGNAME returns the IMGNAME field if non-nil, zero value otherwise.

### GetIMGNAMEOk

`func (o *ModuleSettings) GetIMGNAMEOk() (*string, bool)`

GetIMGNAMEOk returns a tuple with the IMGNAME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIMGNAME

`func (o *ModuleSettings) SetIMGNAME(v string)`

SetIMGNAME sets IMGNAME field to given value.


### GetREPEAT_BILLING_METHOD

`func (o *ModuleSettings) GetREPEAT_BILLING_METHOD() int32`

GetREPEAT_BILLING_METHOD returns the REPEAT_BILLING_METHOD field if non-nil, zero value otherwise.

### GetREPEAT_BILLING_METHODOk

`func (o *ModuleSettings) GetREPEAT_BILLING_METHODOk() (*int32, bool)`

GetREPEAT_BILLING_METHODOk returns a tuple with the REPEAT_BILLING_METHOD field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetREPEAT_BILLING_METHOD

`func (o *ModuleSettings) SetREPEAT_BILLING_METHOD(v int32)`

SetREPEAT_BILLING_METHOD sets REPEAT_BILLING_METHOD field to given value.


### GetDELETE_PENDING_DAYS

`func (o *ModuleSettings) GetDELETE_PENDING_DAYS() int32`

GetDELETE_PENDING_DAYS returns the DELETE_PENDING_DAYS field if non-nil, zero value otherwise.

### GetDELETE_PENDING_DAYSOk

`func (o *ModuleSettings) GetDELETE_PENDING_DAYSOk() (*int32, bool)`

GetDELETE_PENDING_DAYSOk returns a tuple with the DELETE_PENDING_DAYS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDELETE_PENDING_DAYS

`func (o *ModuleSettings) SetDELETE_PENDING_DAYS(v int32)`

SetDELETE_PENDING_DAYS sets DELETE_PENDING_DAYS field to given value.


### GetSUSPEND_DAYS

`func (o *ModuleSettings) GetSUSPEND_DAYS() int32`

GetSUSPEND_DAYS returns the SUSPEND_DAYS field if non-nil, zero value otherwise.

### GetSUSPEND_DAYSOk

`func (o *ModuleSettings) GetSUSPEND_DAYSOk() (*int32, bool)`

GetSUSPEND_DAYSOk returns a tuple with the SUSPEND_DAYS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSUSPEND_DAYS

`func (o *ModuleSettings) SetSUSPEND_DAYS(v int32)`

SetSUSPEND_DAYS sets SUSPEND_DAYS field to given value.


### GetSUSPEND_WARNING_DAYS

`func (o *ModuleSettings) GetSUSPEND_WARNING_DAYS() int32`

GetSUSPEND_WARNING_DAYS returns the SUSPEND_WARNING_DAYS field if non-nil, zero value otherwise.

### GetSUSPEND_WARNING_DAYSOk

`func (o *ModuleSettings) GetSUSPEND_WARNING_DAYSOk() (*int32, bool)`

GetSUSPEND_WARNING_DAYSOk returns a tuple with the SUSPEND_WARNING_DAYS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSUSPEND_WARNING_DAYS

`func (o *ModuleSettings) SetSUSPEND_WARNING_DAYS(v int32)`

SetSUSPEND_WARNING_DAYS sets SUSPEND_WARNING_DAYS field to given value.


### GetTITLE

`func (o *ModuleSettings) GetTITLE() string`

GetTITLE returns the TITLE field if non-nil, zero value otherwise.

### GetTITLEOk

`func (o *ModuleSettings) GetTITLEOk() (*string, bool)`

GetTITLEOk returns a tuple with the TITLE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTITLE

`func (o *ModuleSettings) SetTITLE(v string)`

SetTITLE sets TITLE field to given value.


### GetMENUNAME

`func (o *ModuleSettings) GetMENUNAME() string`

GetMENUNAME returns the MENUNAME field if non-nil, zero value otherwise.

### GetMENUNAMEOk

`func (o *ModuleSettings) GetMENUNAMEOk() (*string, bool)`

GetMENUNAMEOk returns a tuple with the MENUNAME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMENUNAME

`func (o *ModuleSettings) SetMENUNAME(v string)`

SetMENUNAME sets MENUNAME field to given value.


### GetEMAIL_FROM

`func (o *ModuleSettings) GetEMAIL_FROM() string`

GetEMAIL_FROM returns the EMAIL_FROM field if non-nil, zero value otherwise.

### GetEMAIL_FROMOk

`func (o *ModuleSettings) GetEMAIL_FROMOk() (*string, bool)`

GetEMAIL_FROMOk returns a tuple with the EMAIL_FROM field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEMAIL_FROM

`func (o *ModuleSettings) SetEMAIL_FROM(v string)`

SetEMAIL_FROM sets EMAIL_FROM field to given value.


### GetTBLNAME

`func (o *ModuleSettings) GetTBLNAME() string`

GetTBLNAME returns the TBLNAME field if non-nil, zero value otherwise.

### GetTBLNAMEOk

`func (o *ModuleSettings) GetTBLNAMEOk() (*string, bool)`

GetTBLNAMEOk returns a tuple with the TBLNAME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTBLNAME

`func (o *ModuleSettings) SetTBLNAME(v string)`

SetTBLNAME sets TBLNAME field to given value.


### GetTABLE

`func (o *ModuleSettings) GetTABLE() string`

GetTABLE returns the TABLE field if non-nil, zero value otherwise.

### GetTABLEOk

`func (o *ModuleSettings) GetTABLEOk() (*string, bool)`

GetTABLEOk returns a tuple with the TABLE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTABLE

`func (o *ModuleSettings) SetTABLE(v string)`

SetTABLE sets TABLE field to given value.


### GetTITLE_FIELD

`func (o *ModuleSettings) GetTITLE_FIELD() string`

GetTITLE_FIELD returns the TITLE_FIELD field if non-nil, zero value otherwise.

### GetTITLE_FIELDOk

`func (o *ModuleSettings) GetTITLE_FIELDOk() (*string, bool)`

GetTITLE_FIELDOk returns a tuple with the TITLE_FIELD field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTITLE_FIELD

`func (o *ModuleSettings) SetTITLE_FIELD(v string)`

SetTITLE_FIELD sets TITLE_FIELD field to given value.


### GetPREFIX

`func (o *ModuleSettings) GetPREFIX() string`

GetPREFIX returns the PREFIX field if non-nil, zero value otherwise.

### GetPREFIXOk

`func (o *ModuleSettings) GetPREFIXOk() (*string, bool)`

GetPREFIXOk returns a tuple with the PREFIX field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPREFIX

`func (o *ModuleSettings) SetPREFIX(v string)`

SetPREFIX sets PREFIX field to given value.


### GetTITLEFIELD2

`func (o *ModuleSettings) GetTITLEFIELD2() string`

GetTITLEFIELD2 returns the TITLEFIELD2 field if non-nil, zero value otherwise.

### GetTITLEFIELD2Ok

`func (o *ModuleSettings) GetTITLEFIELD2Ok() (*string, bool)`

GetTITLEFIELD2Ok returns a tuple with the TITLEFIELD2 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTITLEFIELD2

`func (o *ModuleSettings) SetTITLEFIELD2(v string)`

SetTITLEFIELD2 sets TITLEFIELD2 field to given value.

### HasTITLEFIELD2

`func (o *ModuleSettings) HasTITLEFIELD2() bool`

HasTITLEFIELD2 returns a boolean if a field has been set.

### GetTITLEFIELD3

`func (o *ModuleSettings) GetTITLEFIELD3() string`

GetTITLEFIELD3 returns the TITLEFIELD3 field if non-nil, zero value otherwise.

### GetTITLEFIELD3Ok

`func (o *ModuleSettings) GetTITLEFIELD3Ok() (*string, bool)`

GetTITLEFIELD3Ok returns a tuple with the TITLEFIELD3 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTITLEFIELD3

`func (o *ModuleSettings) SetTITLEFIELD3(v string)`

SetTITLEFIELD3 sets TITLEFIELD3 field to given value.

### HasTITLEFIELD3

`func (o *ModuleSettings) HasTITLEFIELD3() bool`

HasTITLEFIELD3 returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


