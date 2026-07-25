# ServerOrderPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cpu** | **int32** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | 
**Hd** | [**ServerOrderPostRequestHd**](ServerOrderPostRequestHd.md) |  | 
**Memory** | **int32** | Memory configuration id from config_li.memory_li[cpu]. | 
**Bandwidth** | **int32** | Bandwidth configuration id from config_li.bandwidth_li. | 
**Ips** | **int32** | IP block configuration id from config_li.ips_li. | 
**Os** | **int32** | Operating System configuration id from config_li.os_li. | 
**Cp** | **int32** | Control Panel configuration id from config_li.cp_li. | 
**Raid** | **int32** | RAID configuration id from config_li.raid_li. | 
**Region** | **int32** | Region id from the regions list. | 
**Servername** | **string** | Server hostname. Must pass valid_hostname(). | 
**Rootpass** | **string** | Root password for the server. | 
**Tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | 
**Comment** | Pointer to **string** | Optional free-form order comment. | [optional] [default to ""]

## Methods

### NewServerOrderPostRequest

`func NewServerOrderPostRequest(cpu int32, hd ServerOrderPostRequestHd, memory int32, bandwidth int32, ips int32, os int32, cp int32, raid int32, region int32, servername string, rootpass string, tos bool, ) *ServerOrderPostRequest`

NewServerOrderPostRequest instantiates a new ServerOrderPostRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewServerOrderPostRequestWithDefaults

`func NewServerOrderPostRequestWithDefaults() *ServerOrderPostRequest`

NewServerOrderPostRequestWithDefaults instantiates a new ServerOrderPostRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCpu

`func (o *ServerOrderPostRequest) GetCpu() int32`

GetCpu returns the Cpu field if non-nil, zero value otherwise.

### GetCpuOk

`func (o *ServerOrderPostRequest) GetCpuOk() (*int32, bool)`

GetCpuOk returns a tuple with the Cpu field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCpu

`func (o *ServerOrderPostRequest) SetCpu(v int32)`

SetCpu sets Cpu field to given value.


### GetHd

`func (o *ServerOrderPostRequest) GetHd() ServerOrderPostRequestHd`

GetHd returns the Hd field if non-nil, zero value otherwise.

### GetHdOk

`func (o *ServerOrderPostRequest) GetHdOk() (*ServerOrderPostRequestHd, bool)`

GetHdOk returns a tuple with the Hd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHd

`func (o *ServerOrderPostRequest) SetHd(v ServerOrderPostRequestHd)`

SetHd sets Hd field to given value.


### GetMemory

`func (o *ServerOrderPostRequest) GetMemory() int32`

GetMemory returns the Memory field if non-nil, zero value otherwise.

### GetMemoryOk

`func (o *ServerOrderPostRequest) GetMemoryOk() (*int32, bool)`

GetMemoryOk returns a tuple with the Memory field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemory

`func (o *ServerOrderPostRequest) SetMemory(v int32)`

SetMemory sets Memory field to given value.


### GetBandwidth

`func (o *ServerOrderPostRequest) GetBandwidth() int32`

GetBandwidth returns the Bandwidth field if non-nil, zero value otherwise.

### GetBandwidthOk

`func (o *ServerOrderPostRequest) GetBandwidthOk() (*int32, bool)`

GetBandwidthOk returns a tuple with the Bandwidth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBandwidth

`func (o *ServerOrderPostRequest) SetBandwidth(v int32)`

SetBandwidth sets Bandwidth field to given value.


### GetIps

`func (o *ServerOrderPostRequest) GetIps() int32`

GetIps returns the Ips field if non-nil, zero value otherwise.

### GetIpsOk

`func (o *ServerOrderPostRequest) GetIpsOk() (*int32, bool)`

GetIpsOk returns a tuple with the Ips field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIps

`func (o *ServerOrderPostRequest) SetIps(v int32)`

SetIps sets Ips field to given value.


### GetOs

`func (o *ServerOrderPostRequest) GetOs() int32`

GetOs returns the Os field if non-nil, zero value otherwise.

### GetOsOk

`func (o *ServerOrderPostRequest) GetOsOk() (*int32, bool)`

GetOsOk returns a tuple with the Os field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOs

`func (o *ServerOrderPostRequest) SetOs(v int32)`

SetOs sets Os field to given value.


### GetCp

`func (o *ServerOrderPostRequest) GetCp() int32`

GetCp returns the Cp field if non-nil, zero value otherwise.

### GetCpOk

`func (o *ServerOrderPostRequest) GetCpOk() (*int32, bool)`

GetCpOk returns a tuple with the Cp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCp

`func (o *ServerOrderPostRequest) SetCp(v int32)`

SetCp sets Cp field to given value.


### GetRaid

`func (o *ServerOrderPostRequest) GetRaid() int32`

GetRaid returns the Raid field if non-nil, zero value otherwise.

### GetRaidOk

`func (o *ServerOrderPostRequest) GetRaidOk() (*int32, bool)`

GetRaidOk returns a tuple with the Raid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRaid

`func (o *ServerOrderPostRequest) SetRaid(v int32)`

SetRaid sets Raid field to given value.


### GetRegion

`func (o *ServerOrderPostRequest) GetRegion() int32`

GetRegion returns the Region field if non-nil, zero value otherwise.

### GetRegionOk

`func (o *ServerOrderPostRequest) GetRegionOk() (*int32, bool)`

GetRegionOk returns a tuple with the Region field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegion

`func (o *ServerOrderPostRequest) SetRegion(v int32)`

SetRegion sets Region field to given value.


### GetServername

`func (o *ServerOrderPostRequest) GetServername() string`

GetServername returns the Servername field if non-nil, zero value otherwise.

### GetServernameOk

`func (o *ServerOrderPostRequest) GetServernameOk() (*string, bool)`

GetServernameOk returns a tuple with the Servername field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServername

`func (o *ServerOrderPostRequest) SetServername(v string)`

SetServername sets Servername field to given value.


### GetRootpass

`func (o *ServerOrderPostRequest) GetRootpass() string`

GetRootpass returns the Rootpass field if non-nil, zero value otherwise.

### GetRootpassOk

`func (o *ServerOrderPostRequest) GetRootpassOk() (*string, bool)`

GetRootpassOk returns a tuple with the Rootpass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRootpass

`func (o *ServerOrderPostRequest) SetRootpass(v string)`

SetRootpass sets Rootpass field to given value.


### GetTos

`func (o *ServerOrderPostRequest) GetTos() bool`

GetTos returns the Tos field if non-nil, zero value otherwise.

### GetTosOk

`func (o *ServerOrderPostRequest) GetTosOk() (*bool, bool)`

GetTosOk returns a tuple with the Tos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTos

`func (o *ServerOrderPostRequest) SetTos(v bool)`

SetTos sets Tos field to given value.


### GetComment

`func (o *ServerOrderPostRequest) GetComment() string`

GetComment returns the Comment field if non-nil, zero value otherwise.

### GetCommentOk

`func (o *ServerOrderPostRequest) GetCommentOk() (*string, bool)`

GetCommentOk returns a tuple with the Comment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComment

`func (o *ServerOrderPostRequest) SetComment(v string)`

SetComment sets Comment field to given value.

### HasComment

`func (o *ServerOrderPostRequest) HasComment() bool`

HasComment returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


