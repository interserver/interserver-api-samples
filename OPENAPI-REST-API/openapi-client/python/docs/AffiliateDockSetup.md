# AffiliateDockSetup

Affiliate Landing Page information.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**affiliate_dock_title** | **str** |  | [optional] 
**affiliate_dock_description** | **str** |  | [optional] 
**referrer_coupon** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.affiliate_dock_setup import AffiliateDockSetup

# TODO update the JSON string below
json = "{}"
# create an instance of AffiliateDockSetup from a JSON string
affiliate_dock_setup_instance = AffiliateDockSetup.from_json(json)
# print the JSON string representation of the object
print(AffiliateDockSetup.to_json())

# convert the object into a dict
affiliate_dock_setup_dict = affiliate_dock_setup_instance.to_dict()
# create an instance of AffiliateDockSetup from a dict
affiliate_dock_setup_from_dict = AffiliateDockSetup.from_dict(affiliate_dock_setup_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


