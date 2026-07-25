-module(interserver_api_server_bulk_ipmi_power_response_results_inner).

-export([encode/1]).

-export_type([interserver_api_server_bulk_ipmi_power_response_results_inner/0]).

-type interserver_api_server_bulk_ipmi_power_response_results_inner() ::
    #{ 'id' => integer(),
       'asset' => integer(),
       'text' => binary(),
       'error' => binary()
     }.

encode(#{ 'id' := Id,
          'asset' := Asset,
          'text' := Text,
          'error' := Error
        }) ->
    #{ 'id' => Id,
       'asset' => Asset,
       'text' => Text,
       'error' => Error
     }.
