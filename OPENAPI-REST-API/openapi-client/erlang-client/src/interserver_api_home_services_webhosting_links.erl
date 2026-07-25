-module(interserver_api_home_services_webhosting_links).

-export([encode/1]).

-export_type([interserver_api_home_services_webhosting_links/0]).

-type interserver_api_home_services_webhosting_links() ::
    #{ '376359' => binary(),
       '376473' => binary(),
       '386218' => binary()
     }.

encode(#{ '376359' := 376359,
          '376473' := 376473,
          '386218' := 386218
        }) ->
    #{ '376359' => 376359,
       '376473' => 376473,
       '386218' => 386218
     }.
