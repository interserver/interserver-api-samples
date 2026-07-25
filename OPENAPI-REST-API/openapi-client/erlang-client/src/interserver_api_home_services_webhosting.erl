-module(interserver_api_home_services_webhosting).

-export([encode/1]).

-export_type([interserver_api_home_services_webhosting/0]).

-type interserver_api_home_services_webhosting() ::
    #{ 'links' => interserver_api_home_services_webhosting_links:interserver_api_home_services_webhosting_links(),
       'count' => integer()
     }.

encode(#{ 'links' := Links,
          'count' := Count
        }) ->
    #{ 'links' => Links,
       'count' => Count
     }.
