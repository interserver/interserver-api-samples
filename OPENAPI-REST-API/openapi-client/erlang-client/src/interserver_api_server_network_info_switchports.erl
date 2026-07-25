-module(interserver_api_server_network_info_switchports).

-export([encode/1]).

-export_type([interserver_api_server_network_info_switchports/0]).

-type interserver_api_server_network_info_switchports() ::
    #{ '10414' := interserver_api_server_switchport:interserver_api_server_switchport()
     }.

encode(#{ '10414' := 10414
        }) ->
    #{ '10414' => 10414
     }.
