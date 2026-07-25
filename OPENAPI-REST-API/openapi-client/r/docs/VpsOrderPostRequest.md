# interserverapi::VpsOrderPostRequest

request to validate a vps order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**osDistro** | **character** | OS Distribution | 
**slices** | **integer** | Number of slices | [default to 1] [Max: 32] [Min: 1] 
**vpsPlatform** | **character** | VPS Platform | [Enum: [kvm, hyperv, kvmstorage]] 
**period** | **integer** | Billing Period or Frequency | [default to 1] [Max: 12] [Min: 1] 
**location** | **integer** | Location | [default to 1] [Max: 3] [Min: 1] 
**osVersion** | **character** | OS Version | 
**hostname** | **character** | The hostname to assign to the VPS | [default to &quot;&quot;] 
**rootpass** | **character** | Root password to assign to the VVPS | 
**controlpanel** | **character** | Control Panel | [optional] [Enum: [none, cpanel, da]] 
**coupon** | **character** | Coupon | [optional] [default to &quot;&quot;] 
**comment** | **character** | Order comments or notes | [optional] [default to &quot;&quot;] 


