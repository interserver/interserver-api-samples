-module(interserver_api_home_services_servers).

-export([encode/1]).

-export_type([interserver_api_home_services_servers/0]).

-type interserver_api_home_services_servers() ::
    #{ 'links' => interserver_api_home_services_servers_links:interserver_api_home_services_servers_links(),
       'count' => integer()
     }.

encode(#{ 'links' := Links,
          'count' := Count
        }) ->
    #{ 'links' => Links,
       'count' => Count
     }.
