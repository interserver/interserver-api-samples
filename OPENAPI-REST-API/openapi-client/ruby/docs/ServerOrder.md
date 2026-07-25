# InterServerClient::ServerOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_values** | [**ServerOrderFormValues**](ServerOrderFormValues.md) |  | [optional] |
| **config_ids** | [**ServerOrderConfigIds**](ServerOrderConfigIds.md) |  | [optional] |
| **cpu** | **Integer** | Number of CPUs for the server order. | [optional] |
| **field_label** | [**ServerOrderFieldLabels**](ServerOrderFieldLabels.md) |  | [optional] |
| **cpu_li** | [**ServerOrderCpuLi**](ServerOrderCpuLi.md) |  | [optional] |
| **memory_li** | [**ServerOrderMemoryLi**](ServerOrderMemoryLi.md) |  | [optional] |
| **bandwidth_li** | [**ServerOrderBandwidthLi**](ServerOrderBandwidthLi.md) |  | [optional] |
| **ips_li** | [**ServerOrderIpsLi**](ServerOrderIpsLi.md) |  | [optional] |
| **os_li** | [**ServerOrderOsLi**](ServerOrderOsLi.md) |  | [optional] |
| **cp_li** | [**ServerOrderCpLi**](ServerOrderCpLi.md) |  | [optional] |
| **raid_li** | [**Array&lt;ServerOrderRAID&gt;**](ServerOrderRAID.md) | RAID options for the server order. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerOrder.new(
  form_values: null,
  config_ids: null,
  cpu: 184,
  field_label: null,
  cpu_li: null,
  memory_li: null,
  bandwidth_li: null,
  ips_li: null,
  os_li: null,
  cp_li: null,
  raid_li: null
)
```

