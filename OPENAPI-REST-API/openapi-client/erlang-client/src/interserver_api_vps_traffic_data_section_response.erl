-module(interserver_api_vps_traffic_data_section_response).

-export([encode/1]).

-export_type([interserver_api_vps_traffic_data_section_response/0]).

-type interserver_api_vps_traffic_data_section_response() ::
    #{ 'name' := binary(),
       'data' := list()
     }.

encode(#{ 'name' := Name,
          'data' := Data
        }) ->
    #{ 'name' => Name,
       'data' => Data
     }.
