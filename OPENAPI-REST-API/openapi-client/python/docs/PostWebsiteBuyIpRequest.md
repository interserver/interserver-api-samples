# PostWebsiteBuyIpRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ips** | **Dict[str, str]** | A map of IP addresses to their desired reverse DNS hostnames. | [optional] 

## Example

```python
from interserver_api_client.models.post_website_buy_ip_request import PostWebsiteBuyIpRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PostWebsiteBuyIpRequest from a JSON string
post_website_buy_ip_request_instance = PostWebsiteBuyIpRequest.from_json(json)
# print the JSON string representation of the object
print(PostWebsiteBuyIpRequest.to_json())

# convert the object into a dict
post_website_buy_ip_request_dict = post_website_buy_ip_request_instance.to_dict()
# create an instance of PostWebsiteBuyIpRequest from a dict
post_website_buy_ip_request_from_dict = PostWebsiteBuyIpRequest.from_dict(post_website_buy_ip_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


