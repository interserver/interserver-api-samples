-module(interserver_api_home_services_servers_links).

-export([encode/1]).

-export_type([interserver_api_home_services_servers_links/0]).

-type interserver_api_home_services_servers_links() ::
    #{ '16058' => binary()
     }.

encode(#{ '16058' := 16058
        }) ->
    #{ '16058' => 16058
     }.
