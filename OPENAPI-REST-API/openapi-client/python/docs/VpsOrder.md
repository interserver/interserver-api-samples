# VpsOrder

Pricing and configuration options for ordering a new VPS, including slice costs by platform and available OS templates.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vps_slice_ssd_ovz_cost** | **float** | Cost of VPS Slice SSD OVZ | 
**vps_slice_ovz_cost** | **float** | Cost of VPS Slice OVZ | 
**vps_slice_ssd_virtuozzo_cost** | **float** | Cost of VPS Slice SSD Virtuozzo | 
**vps_slice_virtuozzo_cost** | **float** | Cost of VPS Slice Virtuozzo | 
**vps_slice_hyperv_cost** | **float** | Cost of VPS Slice HyperV | 
**vps_slice_vmware_cost** | **float** | Cost of VPS Slice VMware | 
**vps_slice_lxc_cost** | **float** | Cost of VPS Slice LXC | 
**vps_slice_xen_cost** | **float** | Cost of VPS Slice Xen | 
**vps_slice_kvm_l_cost** | **float** | Cost of VPS Slice KVM L | 
**vps_slice_kvm_storage_cost** | **float** | Cost of VPS Slice KVM Storage | 
**vps_ny_cost** | **float** | Cost of VPS in NY | 
**vps_slice_kvm_w_cost** | **float** | Cost of VPS Slice KVM Windows | 
**cpanel_cost** | **float** | Cost of cPanel | 
**da_cost** | **float** | Cost of DirectAdmin (DA) | 
**ram_slice** | **str** | RAM for VPS Slice | 
**hd_slice** | **str** | Hard Disk for VPS Slice | 
**hd_storage_slice** | **str** | Storage Hard Disk for VPS Slice | 
**bw_slice** | **str** | Bandwidth for VPS Slice | 
**bw_type** | **str** | Bandwidth Type | 
**bw_total** | **float** | Total Bandwidth | 
**max_slices** | **str** | Maximum Slices | 
**platform_packages** | [**VpsOrderPlatformPackages**](VpsOrderPlatformPackages.md) |  | 
**platform_names** | [**VpsOrderPlatformNames**](VpsOrderPlatformNames.md) |  | 
**package_costs** | [**VpsOrderPackageCosts**](VpsOrderPackageCosts.md) |  | 
**location_stock** | [**VpsOrderLocationStock**](VpsOrderLocationStock.md) |  | 
**location_names** | [**VpsOrderLocationNames**](VpsOrderLocationNames.md) |  | 
**os_names** | [**VpsOrderOsNames**](VpsOrderOsNames.md) |  | 
**templates** | [**VpsOrderTemplates**](VpsOrderTemplates.md) |  | 
**service_types** | [**VpsOrderServiceTypes**](VpsOrderServiceTypes.md) |  | 
**currency** | **str** | Currency | 
**currency_symbol** | **str** | Currency Symbol | 

## Example

```python
from interserver_api_client.models.vps_order import VpsOrder

# TODO update the JSON string below
json = "{}"
# create an instance of VpsOrder from a JSON string
vps_order_instance = VpsOrder.from_json(json)
# print the JSON string representation of the object
print(VpsOrder.to_json())

# convert the object into a dict
vps_order_dict = vps_order_instance.to_dict()
# create an instance of VpsOrder from a dict
vps_order_from_dict = VpsOrder.from_dict(vps_order_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


