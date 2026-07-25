# InterServerClient::VpsOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vps_slice_ssd_ovz_cost** | **Float** | Cost of VPS Slice SSD OVZ |  |
| **vps_slice_ovz_cost** | **Float** | Cost of VPS Slice OVZ |  |
| **vps_slice_ssd_virtuozzo_cost** | **Float** | Cost of VPS Slice SSD Virtuozzo |  |
| **vps_slice_virtuozzo_cost** | **Float** | Cost of VPS Slice Virtuozzo |  |
| **vps_slice_hyperv_cost** | **Float** | Cost of VPS Slice HyperV |  |
| **vps_slice_vmware_cost** | **Float** | Cost of VPS Slice VMware |  |
| **vps_slice_lxc_cost** | **Float** | Cost of VPS Slice LXC |  |
| **vps_slice_xen_cost** | **Float** | Cost of VPS Slice Xen |  |
| **vps_slice_kvm_l_cost** | **Float** | Cost of VPS Slice KVM L |  |
| **vps_slice_kvm_storage_cost** | **Float** | Cost of VPS Slice KVM Storage |  |
| **vps_ny_cost** | **Float** | Cost of VPS in NY |  |
| **vps_slice_kvm_w_cost** | **Float** | Cost of VPS Slice KVM Windows |  |
| **cpanel_cost** | **Float** | Cost of cPanel |  |
| **da_cost** | **Float** | Cost of DirectAdmin (DA) |  |
| **ram_slice** | **String** | RAM for VPS Slice |  |
| **hd_slice** | **String** | Hard Disk for VPS Slice |  |
| **hd_storage_slice** | **String** | Storage Hard Disk for VPS Slice |  |
| **bw_slice** | **String** | Bandwidth for VPS Slice |  |
| **bw_type** | **String** | Bandwidth Type |  |
| **bw_total** | **Float** | Total Bandwidth |  |
| **max_slices** | **String** | Maximum Slices |  |
| **platform_packages** | [**VpsOrderPlatformPackages**](VpsOrderPlatformPackages.md) |  |  |
| **platform_names** | [**VpsOrderPlatformNames**](VpsOrderPlatformNames.md) |  |  |
| **package_costs** | [**VpsOrderPackageCosts**](VpsOrderPackageCosts.md) |  |  |
| **location_stock** | [**VpsOrderLocationStock**](VpsOrderLocationStock.md) |  |  |
| **location_names** | [**VpsOrderLocationNames**](VpsOrderLocationNames.md) |  |  |
| **os_names** | [**VpsOrderOsNames**](VpsOrderOsNames.md) |  |  |
| **templates** | [**VpsOrderTemplates**](VpsOrderTemplates.md) |  |  |
| **service_types** | [**VpsOrderServiceTypes**](VpsOrderServiceTypes.md) |  |  |
| **currency** | **String** | Currency |  |
| **currency_symbol** | **String** | Currency Symbol |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsOrder.new(
  vps_slice_ssd_ovz_cost: 9,
  vps_slice_ovz_cost: 6,
  vps_slice_ssd_virtuozzo_cost: 9,
  vps_slice_virtuozzo_cost: 6,
  vps_slice_hyperv_cost: 10,
  vps_slice_vmware_cost: 10,
  vps_slice_lxc_cost: 6,
  vps_slice_xen_cost: 6,
  vps_slice_kvm_l_cost: 6,
  vps_slice_kvm_storage_cost: 6,
  vps_ny_cost: 3,
  vps_slice_kvm_w_cost: 10,
  cpanel_cost: 22,
  da_cost: 8,
  ram_slice: 2048,
  hd_slice: 30,
  hd_storage_slice: 1000,
  bw_slice: 2000,
  bw_type: 2,
  bw_total: 2,
  max_slices: 16,
  platform_packages: null,
  platform_names: null,
  package_costs: null,
  location_stock: null,
  location_names: null,
  os_names: null,
  templates: null,
  service_types: null,
  currency: USD,
  currency_symbol: $
)
```

