-module(interserver_api_server_locations).

-export([encode/1]).

-export_type([interserver_api_server_locations/0]).

-type interserver_api_server_locations() ::
    #{ '1' => interserver_api_server_location1:interserver_api_server_location1()
     }.

encode(#{ '1' := 1
        }) ->
    #{ '1' => 1
     }.
