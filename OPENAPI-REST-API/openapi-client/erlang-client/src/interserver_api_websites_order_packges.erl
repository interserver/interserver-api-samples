-module(interserver_api_websites_order_packges).

-export([encode/1]).

-export_type([interserver_api_websites_order_packges/0]).

-type interserver_api_websites_order_packges() ::
    #{ '11440' := interserver_api_websites_order_packages_info:interserver_api_websites_order_packages_info()
     }.

encode(#{ '11440' := 11440
        }) ->
    #{ '11440' => 11440
     }.
