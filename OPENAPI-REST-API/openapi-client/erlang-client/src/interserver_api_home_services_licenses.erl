-module(interserver_api_home_services_licenses).

-export([encode/1]).

-export_type([interserver_api_home_services_licenses/0]).

-type interserver_api_home_services_licenses() ::
    #{ 'links' => interserver_api_home_services_licenses_links:interserver_api_home_services_licenses_links(),
       'count' => integer()
     }.

encode(#{ 'links' := Links,
          'count' := Count
        }) ->
    #{ 'links' => Links,
       'count' => Count
     }.
