# GetWebsiteBuyIp200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ips** | **Dict[str, str]** | A map of IP addresses to their current reverse DNS hostnames. | [optional] 

## Example

```python
from interserver_api_client.models.get_website_buy_ip200_response import GetWebsiteBuyIp200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetWebsiteBuyIp200Response from a JSON string
get_website_buy_ip200_response_instance = GetWebsiteBuyIp200Response.from_json(json)
# print the JSON string representation of the object
print(GetWebsiteBuyIp200Response.to_json())

# convert the object into a dict
get_website_buy_ip200_response_dict = get_website_buy_ip200_response_instance.to_dict()
# create an instance of GetWebsiteBuyIp200Response from a dict
get_website_buy_ip200_response_from_dict = GetWebsiteBuyIp200Response.from_dict(get_website_buy_ip200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


