-module(interserver_api_home_services_vps_links).

-export([encode/1]).

-export_type([interserver_api_home_services_vps_links/0]).

-type interserver_api_home_services_vps_links() ::
    #{ '465503' => binary(),
       '2500081' => binary(),
       '2578866' => binary()
     }.

encode(#{ '465503' := 465503,
          '2500081' := 2500081,
          '2578866' := 2578866
        }) ->
    #{ '465503' => 465503,
       '2500081' => 2500081,
       '2578866' => 2578866
     }.
