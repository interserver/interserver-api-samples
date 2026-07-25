-module(interserver_api_home_services_licenses_links).

-export([encode/1]).

-export_type([interserver_api_home_services_licenses_links/0]).

-type interserver_api_home_services_licenses_links() ::
    #{ '386522' => binary()
     }.

encode(#{ '386522' := 386522
        }) ->
    #{ '386522' => 386522
     }.
