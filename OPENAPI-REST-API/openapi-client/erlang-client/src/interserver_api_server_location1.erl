-module(interserver_api_server_location1).

-export([encode/1]).

-export_type([interserver_api_server_location1/0]).

-type interserver_api_server_location1() ::
    #{ 'location_id' := integer(),
       'location_name' := binary(),
       'location_description' => binary(),
       'location_lat' := binary(),
       'location_long' := binary(),
       'location_ipmi_group' => integer()
     }.

encode(#{ 'location_id' := LocationId,
          'location_name' := LocationName,
          'location_description' := LocationDescription,
          'location_lat' := LocationLat,
          'location_long' := LocationLong,
          'location_ipmi_group' := LocationIpmiGroup
        }) ->
    #{ 'location_id' => LocationId,
       'location_name' => LocationName,
       'location_description' => LocationDescription,
       'location_lat' => LocationLat,
       'location_long' => LocationLong,
       'location_ipmi_group' => LocationIpmiGroup
     }.
