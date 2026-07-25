-module(interserver_api_server_network_info).

-export([encode/1]).

-export_type([interserver_api_server_network_info/0]).

-type interserver_api_server_network_info() ::
    #{ 'vlans' := list(),
       'vlans6' := list(),
       'assets' := interserver_api_server_network_info_assets:interserver_api_server_network_info_assets(),
       'switchports' := interserver_api_server_network_info_switchports:interserver_api_server_network_info_switchports()
     }.

encode(#{ 'vlans' := Vlans,
          'vlans6' := Vlans6,
          'assets' := Assets,
          'switchports' := Switchports
        }) ->
    #{ 'vlans' => Vlans,
       'vlans6' => Vlans6,
       'assets' => Assets,
       'switchports' => Switchports
     }.
