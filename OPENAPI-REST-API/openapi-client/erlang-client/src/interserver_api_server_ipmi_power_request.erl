-module(interserver_api_server_ipmi_power_request).

-export([encode/1]).

-export_type([interserver_api_server_ipmi_power_request/0]).

-type interserver_api_server_ipmi_power_request() ::
    #{ 'action' := binary(),
       'asset' => integer()
     }.

encode(#{ 'action' := Action,
          'asset' := Asset
        }) ->
    #{ 'action' => Action,
       'asset' => Asset
     }.
