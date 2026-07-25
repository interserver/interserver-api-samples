-module(interserver_api_home_services_vps).

-export([encode/1]).

-export_type([interserver_api_home_services_vps/0]).

-type interserver_api_home_services_vps() ::
    #{ 'links' => interserver_api_home_services_vps_links:interserver_api_home_services_vps_links(),
       'count' => integer()
     }.

encode(#{ 'links' := Links,
          'count' := Count
        }) ->
    #{ 'links' => Links,
       'count' => Count
     }.
