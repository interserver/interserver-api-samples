-module(interserver_api_server_bulk_ipmi_power_response).

-export([encode/1]).

-export_type([interserver_api_server_bulk_ipmi_power_response/0]).

-type interserver_api_server_bulk_ipmi_power_response() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
