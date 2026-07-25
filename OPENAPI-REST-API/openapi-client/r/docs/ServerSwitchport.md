# interserverapi::ServerSwitchport


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**switchport_id** | **integer** | Unique identifier for the switchport. | 
**switch_id** | **character** | Unique identifier for the switch associated with the switchport. | 
**switch** | **character** | Name of the switch associated with the switchport. | 
**port** | **character** | Port name on the switch. | 
**blade** | **character** | Blade name associated with the port. | 
**justport** | **character** | Port identifier. | 
**graph_id** | **character** | Identifier for the graph associated with the switchport. | 
**vlans** | **array[character]** | List of VLANs associated with the switchport. | [optional] 
**vlans6** | **array[character]** | List of IPv6 VLANs associated with the switchport. | [optional] 
**asset_id** | **integer** | Unique identifier of the asset associated with the switchport. | 


