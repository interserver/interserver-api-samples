-module(interserver_api_server_extra_info_tables).

-export([encode/1]).

-export_type([interserver_api_server_extra_info_tables/0]).

-type interserver_api_server_extra_info_tables() ::
    #{ 'assets' := interserver_api_server_assets:interserver_api_server_assets()
     }.

encode(#{ 'assets' := Assets
        }) ->
    #{ 'assets' => Assets
     }.
