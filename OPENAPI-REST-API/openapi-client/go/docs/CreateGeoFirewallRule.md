# CreateGeoFirewallRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**XdpAction** | **int32** | 1 &#x3D; Block,  0 &#x3D; Whitelist | 
**DestinationPort** | Pointer to **int32** |  | [optional] [default to 80]
**CountryCode** | Pointer to **int32** | To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by&#x3D;numcode | [optional] 
**Asn** | Pointer to **int32** | ASN number | [optional] 

## Methods

### NewCreateGeoFirewallRule

`func NewCreateGeoFirewallRule(xdpAction int32, ) *CreateGeoFirewallRule`

NewCreateGeoFirewallRule instantiates a new CreateGeoFirewallRule object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreateGeoFirewallRuleWithDefaults

`func NewCreateGeoFirewallRuleWithDefaults() *CreateGeoFirewallRule`

NewCreateGeoFirewallRuleWithDefaults instantiates a new CreateGeoFirewallRule object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetXdpAction

`func (o *CreateGeoFirewallRule) GetXdpAction() int32`

GetXdpAction returns the XdpAction field if non-nil, zero value otherwise.

### GetXdpActionOk

`func (o *CreateGeoFirewallRule) GetXdpActionOk() (*int32, bool)`

GetXdpActionOk returns a tuple with the XdpAction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetXdpAction

`func (o *CreateGeoFirewallRule) SetXdpAction(v int32)`

SetXdpAction sets XdpAction field to given value.


### GetDestinationPort

`func (o *CreateGeoFirewallRule) GetDestinationPort() int32`

GetDestinationPort returns the DestinationPort field if non-nil, zero value otherwise.

### GetDestinationPortOk

`func (o *CreateGeoFirewallRule) GetDestinationPortOk() (*int32, bool)`

GetDestinationPortOk returns a tuple with the DestinationPort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDestinationPort

`func (o *CreateGeoFirewallRule) SetDestinationPort(v int32)`

SetDestinationPort sets DestinationPort field to given value.

### HasDestinationPort

`func (o *CreateGeoFirewallRule) HasDestinationPort() bool`

HasDestinationPort returns a boolean if a field has been set.

### GetCountryCode

`func (o *CreateGeoFirewallRule) GetCountryCode() int32`

GetCountryCode returns the CountryCode field if non-nil, zero value otherwise.

### GetCountryCodeOk

`func (o *CreateGeoFirewallRule) GetCountryCodeOk() (*int32, bool)`

GetCountryCodeOk returns a tuple with the CountryCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCountryCode

`func (o *CreateGeoFirewallRule) SetCountryCode(v int32)`

SetCountryCode sets CountryCode field to given value.

### HasCountryCode

`func (o *CreateGeoFirewallRule) HasCountryCode() bool`

HasCountryCode returns a boolean if a field has been set.

### GetAsn

`func (o *CreateGeoFirewallRule) GetAsn() int32`

GetAsn returns the Asn field if non-nil, zero value otherwise.

### GetAsnOk

`func (o *CreateGeoFirewallRule) GetAsnOk() (*int32, bool)`

GetAsnOk returns a tuple with the Asn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsn

`func (o *CreateGeoFirewallRule) SetAsn(v int32)`

SetAsn sets Asn field to given value.

### HasAsn

`func (o *CreateGeoFirewallRule) HasAsn() bool`

HasAsn returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


