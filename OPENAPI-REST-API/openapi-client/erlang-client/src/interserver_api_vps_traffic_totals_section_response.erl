-module(interserver_api_vps_traffic_totals_section_response).

-export([encode/1]).

-export_type([interserver_api_vps_traffic_totals_section_response/0]).

-type interserver_api_vps_traffic_totals_section_response() ::
    #{ 'in' := integer(),
       'out' := integer()
     }.

encode(#{ 'in' := In,
          'out' := Out
        }) ->
    #{ 'in' => In,
       'out' => Out
     }.
