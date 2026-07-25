-module(interserver_api_vps_traffic_totals_resposne).

-export([encode/1]).

-export_type([interserver_api_vps_traffic_totals_resposne/0]).

-type interserver_api_vps_traffic_totals_resposne() ::
    #{ 'day' := interserver_api_vps_traffic_totals_section_response:interserver_api_vps_traffic_totals_section_response(),
       'month' := interserver_api_vps_traffic_totals_section_response:interserver_api_vps_traffic_totals_section_response(),
       'year' := interserver_api_vps_traffic_totals_section_response:interserver_api_vps_traffic_totals_section_response(),
       'all' := interserver_api_vps_traffic_totals_section_response:interserver_api_vps_traffic_totals_section_response()
     }.

encode(#{ 'day' := Day,
          'month' := Month,
          'year' := Year,
          'all' := All
        }) ->
    #{ 'day' => Day,
       'month' => Month,
       'year' => Year,
       'all' => All
     }.
