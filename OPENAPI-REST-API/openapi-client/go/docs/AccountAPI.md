# \AccountAPI

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteAccountOauthName**](AccountAPI.md#DeleteAccountOauthName) | **Delete** /account/oauth/{name} | Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
[**DeleteAccountTfa**](AccountAPI.md#DeleteAccountTfa) | **Delete** /account/2fa | Disable two-factor authentication and remove the TOTP secret
[**DeleteIpLimit**](AccountAPI.md#DeleteIpLimit) | **Patch** /account/iplimits | Remove one IP range from the account allow-list (PATCH on /account/iplimits)
[**GetAccountInfo**](AccountAPI.md#GetAccountInfo) | **Get** /account | Read full account profile, billing address, and security settings
[**GetAccountTfaSetup**](AccountAPI.md#GetAccountTfaSetup) | **Get** /account/2fa | Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
[**GetHome**](AccountAPI.md#GetHome) | **Get** /home | Aggregate dashboard payload — service counts, recent activity, alerts
[**GetSearch**](AccountAPI.md#GetSearch) | **Get** /search | Global autocomplete across the caller&#39;s services, domains, and records
[**Logout**](AccountAPI.md#Logout) | **Get** /logout | Destroy the current API/web session — token becomes unusable
[**LogoutAccountOauth**](AccountAPI.md#LogoutAccountOauth) | **Get** /account/oauth/{name}/logout | Sign out of the upstream OAuth provider session (does not unlink the account)
[**UpdateAccountApiKey**](AccountAPI.md#UpdateAccountApiKey) | **Post** /account/apikey | Rotate the account&#39;s REST/MCP API key — old key is invalidated immediately
[**UpdateAccountFeatures**](AccountAPI.md#UpdateAccountFeatures) | **Post** /account/features | Toggle account-wide safety locks for password reset and OS reinstall
[**UpdateAccountInfo**](AccountAPI.md#UpdateAccountInfo) | **Post** /account | Update contact and billing-address fields on the customer profile
[**UpdateAccountIpLimits**](AccountAPI.md#UpdateAccountIpLimits) | **Post** /account/iplimits | Add an IP CIDR/range to the account&#39;s API+web allow-list (lockout-safe)
[**UpdateAccountPassword**](AccountAPI.md#UpdateAccountPassword) | **Post** /account/password | Change the account login password (verifies current, kills other sessions)
[**UpdateAccountSshKey**](AccountAPI.md#UpdateAccountSshKey) | **Post** /account/sshkey | Set the account-level SSH public key auto-installed on new VPS/dedicated orders
[**UpdateAccountTfa**](AccountAPI.md#UpdateAccountTfa) | **Post** /account/2fa | Verify TOTP code and enable two-factor authentication on the account



## DeleteAccountOauthName

> SuccessTextResponse DeleteAccountOauthName(ctx, name).Execute()

Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	name := "name_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.DeleteAccountOauthName(context.Background(), name).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.DeleteAccountOauthName``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteAccountOauthName`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.DeleteAccountOauthName`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteAccountOauthNameRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteAccountTfa

> SuccessTextResponse DeleteAccountTfa(ctx).Execute()

Disable two-factor authentication and remove the TOTP secret



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.DeleteAccountTfa(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.DeleteAccountTfa``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteAccountTfa`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.DeleteAccountTfa`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteAccountTfaRequest struct via the builder pattern


### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteIpLimit

> GenericResponse DeleteIpLimit(ctx).IpLimitRange(ipLimitRange).Execute()

Remove one IP range from the account allow-list (PATCH on /account/iplimits)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	ipLimitRange := *openapiclient.NewIpLimitRange("1.2.3.0", "1.2.3.255") // IpLimitRange |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.DeleteIpLimit(context.Background()).IpLimitRange(ipLimitRange).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.DeleteIpLimit``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteIpLimit`: GenericResponse
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.DeleteIpLimit`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDeleteIpLimitRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ipLimitRange** | [**IpLimitRange**](IpLimitRange.md) |  | 

### Return type

[**GenericResponse**](GenericResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAccountInfo

> AccountInfo GetAccountInfo(ctx).Execute()

Read full account profile, billing address, and security settings



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.GetAccountInfo(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.GetAccountInfo``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetAccountInfo`: AccountInfo
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.GetAccountInfo`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetAccountInfoRequest struct via the builder pattern


### Return type

[**AccountInfo**](AccountInfo.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAccountTfaSetup

> GetAccountTfaSetup200Response GetAccountTfaSetup(ctx).Execute()

Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.GetAccountTfaSetup(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.GetAccountTfaSetup``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetAccountTfaSetup`: GetAccountTfaSetup200Response
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.GetAccountTfaSetup`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetAccountTfaSetupRequest struct via the builder pattern


### Return type

[**GetAccountTfaSetup200Response**](GetAccountTfaSetup200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetHome

> Home GetHome(ctx).Execute()

Aggregate dashboard payload — service counts, recent activity, alerts



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.GetHome(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.GetHome``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetHome`: Home
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.GetHome`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetHomeRequest struct via the builder pattern


### Return type

[**Home**](Home.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetSearch

> SearchAutocompleteResponse GetSearch(ctx).Execute()

Global autocomplete across the caller's services, domains, and records



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.GetSearch(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.GetSearch``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetSearch`: SearchAutocompleteResponse
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.GetSearch`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetSearchRequest struct via the builder pattern


### Return type

[**SearchAutocompleteResponse**](SearchAutocompleteResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Logout

> SuccessTextResponse Logout(ctx).Execute()

Destroy the current API/web session — token becomes unusable



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.Logout(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.Logout``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Logout`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.Logout`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiLogoutRequest struct via the builder pattern


### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LogoutAccountOauth

> SuccessTextResponse LogoutAccountOauth(ctx, name).Execute()

Sign out of the upstream OAuth provider session (does not unlink the account)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	name := "name_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.LogoutAccountOauth(context.Background(), name).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.LogoutAccountOauth``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LogoutAccountOauth`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.LogoutAccountOauth`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiLogoutAccountOauthRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateAccountApiKey

> SuccessTextResponse UpdateAccountApiKey(ctx).Execute()

Rotate the account's REST/MCP API key — old key is invalidated immediately



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.UpdateAccountApiKey(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.UpdateAccountApiKey``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateAccountApiKey`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.UpdateAccountApiKey`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateAccountApiKeyRequest struct via the builder pattern


### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateAccountFeatures

> SuccessTextResponse UpdateAccountFeatures(ctx).DisableReset(disableReset).DisableReinstall(disableReinstall).Execute()

Toggle account-wide safety locks for password reset and OS reinstall



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	disableReset := int32(56) // int32 |  (optional)
	disableReinstall := int32(56) // int32 |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.UpdateAccountFeatures(context.Background()).DisableReset(disableReset).DisableReinstall(disableReinstall).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.UpdateAccountFeatures``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateAccountFeatures`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.UpdateAccountFeatures`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUpdateAccountFeaturesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disableReset** | **int32** |  | 
 **disableReinstall** | **int32** |  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateAccountInfo

> SuccessTextResponse UpdateAccountInfo(ctx).Name(name).Address(address).City(city).State(state).Zip(zip).Country(country).Phone(phone).Company(company).Address2(address2).Locale(locale).EmailInvoices(emailInvoices).EmailAbuse(emailAbuse).DisableReset(disableReset).DisableReinstall(disableReinstall).DisableServerNotifications(disableServerNotifications).DisableEmailNotifications(disableEmailNotifications).Gstin(gstin).Execute()

Update contact and billing-address fields on the customer profile



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	name := "name_example" // string | Your name.
	address := "address_example" // string | Your address.
	city := "city_example" // string | Your city.
	state := "state_example" // string | Your state.
	zip := "zip_example" // string | Your ZIP code.
	country := "country_example" // string | Your country.
	phone := "phone_example" // string | Your phone number.
	company := "company_example" // string | Your company name. (optional)
	address2 := "address2_example" // string | Additional address information. (optional)
	locale := "locale_example" // string | Your preferred locale. (optional)
	emailInvoices := "emailInvoices_example" // string | Your email for invoice notifications. (optional)
	emailAbuse := "emailAbuse_example" // string | Your email for abuse notifications. (optional)
	disableReset := true // bool | Set to `true` to disable account resets, or `false` to enable them. (optional)
	disableReinstall := true // bool | Set to `true` to disable server reinstalls, or `false` to enable them. (optional)
	disableServerNotifications := true // bool | Set to `true` to disable server notifications, or `false` to enable them. (optional)
	disableEmailNotifications := true // bool | Set to `true` to disable email notifications, or `false` to enable them. (optional)
	gstin := "gstin_example" // string | Your GST identification number (if applicable). (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.UpdateAccountInfo(context.Background()).Name(name).Address(address).City(city).State(state).Zip(zip).Country(country).Phone(phone).Company(company).Address2(address2).Locale(locale).EmailInvoices(emailInvoices).EmailAbuse(emailAbuse).DisableReset(disableReset).DisableReinstall(disableReinstall).DisableServerNotifications(disableServerNotifications).DisableEmailNotifications(disableEmailNotifications).Gstin(gstin).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.UpdateAccountInfo``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateAccountInfo`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.UpdateAccountInfo`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUpdateAccountInfoRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string** | Your name. | 
 **address** | **string** | Your address. | 
 **city** | **string** | Your city. | 
 **state** | **string** | Your state. | 
 **zip** | **string** | Your ZIP code. | 
 **country** | **string** | Your country. | 
 **phone** | **string** | Your phone number. | 
 **company** | **string** | Your company name. | 
 **address2** | **string** | Additional address information. | 
 **locale** | **string** | Your preferred locale. | 
 **emailInvoices** | **string** | Your email for invoice notifications. | 
 **emailAbuse** | **string** | Your email for abuse notifications. | 
 **disableReset** | **bool** | Set to &#x60;true&#x60; to disable account resets, or &#x60;false&#x60; to enable them. | 
 **disableReinstall** | **bool** | Set to &#x60;true&#x60; to disable server reinstalls, or &#x60;false&#x60; to enable them. | 
 **disableServerNotifications** | **bool** | Set to &#x60;true&#x60; to disable server notifications, or &#x60;false&#x60; to enable them. | 
 **disableEmailNotifications** | **bool** | Set to &#x60;true&#x60; to disable email notifications, or &#x60;false&#x60; to enable them. | 
 **gstin** | **string** | Your GST identification number (if applicable). | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateAccountIpLimits

> SuccessTextResponse UpdateAccountIpLimits(ctx).Start(start).End(end).Execute()

Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	start := "start_example" // string | The begining (or first) IP address in the range.
	end := "end_example" // string | The ending (or last) IP address in the range.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.UpdateAccountIpLimits(context.Background()).Start(start).End(end).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.UpdateAccountIpLimits``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateAccountIpLimits`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.UpdateAccountIpLimits`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUpdateAccountIpLimitsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **string** | The begining (or first) IP address in the range. | 
 **end** | **string** | The ending (or last) IP address in the range. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateAccountPassword

> TextResponse UpdateAccountPassword(ctx).Password(password).Execute()

Change the account login password (verifies current, kills other sessions)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	password := "password_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.UpdateAccountPassword(context.Background()).Password(password).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.UpdateAccountPassword``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateAccountPassword`: TextResponse
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.UpdateAccountPassword`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUpdateAccountPasswordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | **string** |  | 

### Return type

[**TextResponse**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateAccountSshKey

> SuccessTextResponse UpdateAccountSshKey(ctx).SshKey(sshKey).Execute()

Set the account-level SSH public key auto-installed on new VPS/dedicated orders



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	sshKey := "sshKey_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.UpdateAccountSshKey(context.Background()).SshKey(sshKey).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.UpdateAccountSshKey``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateAccountSshKey`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.UpdateAccountSshKey`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUpdateAccountSshKeyRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sshKey** | **string** |  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateAccountTfa

> SuccessTextResponse UpdateAccountTfa(ctx).Var2faGoogleCode(var2faGoogleCode).Execute()

Verify TOTP code and enable two-factor authentication on the account



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	var2faGoogleCode := "var2faGoogleCode_example" // string | The 6-digit verification code from your authenticator app.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AccountAPI.UpdateAccountTfa(context.Background()).Var2faGoogleCode(var2faGoogleCode).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AccountAPI.UpdateAccountTfa``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateAccountTfa`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `AccountAPI.UpdateAccountTfa`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUpdateAccountTfaRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **var2faGoogleCode** | **string** | The 6-digit verification code from your authenticator app. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

