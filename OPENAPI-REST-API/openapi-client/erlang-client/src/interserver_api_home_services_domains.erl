-module(interserver_api_home_services_domains).

-export([encode/1]).

-export_type([interserver_api_home_services_domains/0]).

-type interserver_api_home_services_domains() ::
    #{ 'links' => interserver_api_home_services_domains_links:interserver_api_home_services_domains_links(),
       'count' => integer()
     }.

encode(#{ 'links' := Links,
          'count' := Count
        }) ->
    #{ 'links' => Links,
       'count' => Count
     }.
