# AffiliateBannerRow

An affiliate banner image details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | **str** |  | [optional] 
**width** | **str** |  | [optional] 
**height** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.affiliate_banner_row import AffiliateBannerRow

# TODO update the JSON string below
json = "{}"
# create an instance of AffiliateBannerRow from a JSON string
affiliate_banner_row_instance = AffiliateBannerRow.from_json(json)
# print the JSON string representation of the object
print(AffiliateBannerRow.to_json())

# convert the object into a dict
affiliate_banner_row_dict = affiliate_banner_row_instance.to_dict()
# create an instance of AffiliateBannerRow from a dict
affiliate_banner_row_from_dict = AffiliateBannerRow.from_dict(affiliate_banner_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


