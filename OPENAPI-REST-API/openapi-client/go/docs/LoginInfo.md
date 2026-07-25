# LoginInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Captcha** | **string** | A base64 encoded image to use for rendering the alternateive captcha. | 
**Counts** | [**LoginServiceCounts**](LoginServiceCounts.md) |  | 
**Logo** | Pointer to **string** | A logo image url. | [optional] 
**Language** | Pointer to **string** | The desired langauge to render the site with. | [optional] 

## Methods

### NewLoginInfo

`func NewLoginInfo(captcha string, counts LoginServiceCounts, ) *LoginInfo`

NewLoginInfo instantiates a new LoginInfo object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLoginInfoWithDefaults

`func NewLoginInfoWithDefaults() *LoginInfo`

NewLoginInfoWithDefaults instantiates a new LoginInfo object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCaptcha

`func (o *LoginInfo) GetCaptcha() string`

GetCaptcha returns the Captcha field if non-nil, zero value otherwise.

### GetCaptchaOk

`func (o *LoginInfo) GetCaptchaOk() (*string, bool)`

GetCaptchaOk returns a tuple with the Captcha field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCaptcha

`func (o *LoginInfo) SetCaptcha(v string)`

SetCaptcha sets Captcha field to given value.


### GetCounts

`func (o *LoginInfo) GetCounts() LoginServiceCounts`

GetCounts returns the Counts field if non-nil, zero value otherwise.

### GetCountsOk

`func (o *LoginInfo) GetCountsOk() (*LoginServiceCounts, bool)`

GetCountsOk returns a tuple with the Counts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCounts

`func (o *LoginInfo) SetCounts(v LoginServiceCounts)`

SetCounts sets Counts field to given value.


### GetLogo

`func (o *LoginInfo) GetLogo() string`

GetLogo returns the Logo field if non-nil, zero value otherwise.

### GetLogoOk

`func (o *LoginInfo) GetLogoOk() (*string, bool)`

GetLogoOk returns a tuple with the Logo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogo

`func (o *LoginInfo) SetLogo(v string)`

SetLogo sets Logo field to given value.

### HasLogo

`func (o *LoginInfo) HasLogo() bool`

HasLogo returns a boolean if a field has been set.

### GetLanguage

`func (o *LoginInfo) GetLanguage() string`

GetLanguage returns the Language field if non-nil, zero value otherwise.

### GetLanguageOk

`func (o *LoginInfo) GetLanguageOk() (*string, bool)`

GetLanguageOk returns a tuple with the Language field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguage

`func (o *LoginInfo) SetLanguage(v string)`

SetLanguage sets Language field to given value.

### HasLanguage

`func (o *LoginInfo) HasLanguage() bool`

HasLanguage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


