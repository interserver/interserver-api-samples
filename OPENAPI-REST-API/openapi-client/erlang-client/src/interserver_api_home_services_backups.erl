-module(interserver_api_home_services_backups).

-export([encode/1]).

-export_type([interserver_api_home_services_backups/0]).

-type interserver_api_home_services_backups() ::
    #{ 'links' => list(),
       'count' => integer()
     }.

encode(#{ 'links' := Links,
          'count' := Count
        }) ->
    #{ 'links' => Links,
       'count' => Count
     }.
