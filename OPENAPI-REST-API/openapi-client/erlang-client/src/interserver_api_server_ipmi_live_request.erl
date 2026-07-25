-module(interserver_api_server_ipmi_live_request).

-export([encode/1]).

-export_type([interserver_api_server_ipmi_live_request/0]).

-type interserver_api_server_ipmi_live_request() ::
    #{ 'ip' := binary(),
       'asset' => integer()
     }.

encode(#{ 'ip' := Ip,
          'asset' := Asset
        }) ->
    #{ 'ip' => Ip,
       'asset' => Asset
     }.
