-module(interserver_api_home_services_domains_links).

-export([encode/1]).

-export_type([interserver_api_home_services_domains_links/0]).

-type interserver_api_home_services_domains_links() ::
    #{ '376114' => binary(),
       '376503' => binary(),
       '592337' => binary()
     }.

encode(#{ '376114' := 376114,
          '376503' := 376503,
          '592337' := 592337
        }) ->
    #{ '376114' => 376114,
       '376503' => 376503,
       '592337' => 592337
     }.
