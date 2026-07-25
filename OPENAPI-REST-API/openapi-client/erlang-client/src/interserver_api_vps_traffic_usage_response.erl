-module(interserver_api_vps_traffic_usage_response).

-export([encode/1]).

-export_type([interserver_api_vps_traffic_usage_response/0]).

-type interserver_api_vps_traffic_usage_response() ::
    #{ 'current' := interserver_api_vps_traffic_totals_section_response:interserver_api_vps_traffic_totals_section_response(),
       'peak' := interserver_api_vps_traffic_totals_section_response:interserver_api_vps_traffic_totals_section_response(),
       'average' := interserver_api_vps_traffic_usage_average_response:interserver_api_vps_traffic_usage_average_response()
     }.

encode(#{ 'current' := Current,
          'peak' := Peak,
          'average' := Average
        }) ->
    #{ 'current' => Current,
       'peak' => Peak,
       'average' => Average
     }.
