# DomainWhoisPrivacyRequest

Request payload for enabling or disabling Whois privacy.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**func** | **str** | Action to perform (enable or disableCancel). | [optional] 
**csrf_token** | **str** | CSRF token if the API requires it for the account. | [optional] 
**domain_firstname** | **str** |  | [optional] 
**domain_lastname** | **str** |  | [optional] 
**domain_email** | **str** |  | [optional] 
**domain_address** | **str** |  | [optional] 
**domain_address2** | **str** |  | [optional] 
**domain_address3** | **str** |  | [optional] 
**domain_city** | **str** |  | [optional] 
**domain_state** | **str** |  | [optional] 
**domain_zip** | **str** |  | [optional] 
**domain_country** | **str** |  | [optional] 
**domain_phone** | **str** |  | [optional] 
**domain_fax** | **str** |  | [optional] 
**domain_company** | **str** |  | [optional] 
**domain_extra** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_whois_privacy_request import DomainWhoisPrivacyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DomainWhoisPrivacyRequest from a JSON string
domain_whois_privacy_request_instance = DomainWhoisPrivacyRequest.from_json(json)
# print the JSON string representation of the object
print(DomainWhoisPrivacyRequest.to_json())

# convert the object into a dict
domain_whois_privacy_request_dict = domain_whois_privacy_request_instance.to_dict()
# create an instance of DomainWhoisPrivacyRequest from a dict
domain_whois_privacy_request_from_dict = DomainWhoisPrivacyRequest.from_dict(domain_whois_privacy_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


