-module(interserver_api_domain_order).

-export([encode/1]).

-export_type([interserver_api_domain_order/0]).

-type interserver_api_domain_order() ::
    #{ 'whoisPrivacyCost' => binary(),
       'services' => interserver_api_domain_order_services:interserver_api_domain_order_services(),
       'tldServices' => maps:map()
     }.

encode(#{ 'whoisPrivacyCost' := WhoisPrivacyCost,
          'services' := Services,
          'tldServices' := TldServices
        }) ->
    #{ 'whoisPrivacyCost' => WhoisPrivacyCost,
       'services' => Services,
       'tldServices' => TldServices
     }.
