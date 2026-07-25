-module(interserver_api_vps_traffic_history_section_response).

-export([encode/1]).

-export_type([interserver_api_vps_traffic_history_section_response/0]).

-type interserver_api_vps_traffic_history_section_response() ::
    #{ 'data' := list(),
       'times' := list()
     }.

encode(#{ 'data' := Data,
          'times' := Times
        }) ->
    #{ 'data' => Data,
       'times' => Times
     }.
