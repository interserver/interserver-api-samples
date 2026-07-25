-module(interserver_api_server_network_info_assets).

-export([encode/1]).

-export_type([interserver_api_server_network_info_assets/0]).

-type interserver_api_server_network_info_assets() ::
    #{ '3497' := interserver_api_server_asset:interserver_api_server_asset()
     }.

encode(#{ '3497' := 3497
        }) ->
    #{ '3497' => 3497
     }.
