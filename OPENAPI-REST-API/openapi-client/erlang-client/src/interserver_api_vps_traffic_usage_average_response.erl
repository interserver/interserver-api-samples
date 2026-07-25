-module(interserver_api_vps_traffic_usage_average_response).

-export([encode/1]).

-export_type([interserver_api_vps_traffic_usage_average_response/0]).

-type interserver_api_vps_traffic_usage_average_response() ::
    #{ 'in' := interserver_api_vps_traffic_usage_average_section_response:interserver_api_vps_traffic_usage_average_section_response(),
       'out' := interserver_api_vps_traffic_usage_average_section_response:interserver_api_vps_traffic_usage_average_section_response()
     }.

encode(#{ 'in' := In,
          'out' := Out
        }) ->
    #{ 'in' => In,
       'out' => Out
     }.
