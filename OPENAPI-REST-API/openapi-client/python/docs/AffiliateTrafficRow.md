# AffiliateTrafficRow

Affiliate Web Traffic Entry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**traffic_id** | **str** |  | [optional] 
**traffic_ip** | **str** |  | [optional] 
**traffic_url** | **str** |  | [optional] 
**traffic_affiliate** | **str** |  | [optional] 
**traffic_referrer** | **str** |  | [optional] 
**traffic_timestamp** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.affiliate_traffic_row import AffiliateTrafficRow

# TODO update the JSON string below
json = "{}"
# create an instance of AffiliateTrafficRow from a JSON string
affiliate_traffic_row_instance = AffiliateTrafficRow.from_json(json)
# print the JSON string representation of the object
print(AffiliateTrafficRow.to_json())

# convert the object into a dict
affiliate_traffic_row_dict = affiliate_traffic_row_instance.to_dict()
# create an instance of AffiliateTrafficRow from a dict
affiliate_traffic_row_from_dict = AffiliateTrafficRow.from_dict(affiliate_traffic_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


