-module(interserver_api_vps_traffic_history_response).

-export([encode/1]).

-export_type([interserver_api_vps_traffic_history_response/0]).

-type interserver_api_vps_traffic_history_response() ::
    #{ 'hour' := interserver_api_vps_traffic_history_section_response:interserver_api_vps_traffic_history_section_response(),
       'day' := interserver_api_vps_traffic_history_section_response:interserver_api_vps_traffic_history_section_response()
     }.

encode(#{ 'hour' := Hour,
          'day' := Day
        }) ->
    #{ 'hour' => Hour,
       'day' => Day
     }.
