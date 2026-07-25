

# CreateGeoFirewallRule

Create firewall rule for your ip

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**xdpAction** | [**XdpActionEnum**](#XdpActionEnum) | 1 &#x3D; Block,  0 &#x3D; Whitelist |  |
|**destinationPort** | **Integer** |  |  [optional] |
|**countryCode** | **Integer** | To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by&#x3D;numcode |  [optional] |
|**asn** | **Integer** | ASN number |  [optional] |



## Enum: XdpActionEnum

| Name | Value |
|---- | -----|
| NUMBER_0 | 0 |
| NUMBER_1 | 1 |


## Implemented Interfaces

* Serializable


