-module(interserver_api_websites_order_service_types).

-export([encode/1]).

-export_type([interserver_api_websites_order_service_types/0]).

-type interserver_api_websites_order_service_types() ::
    #{ '11447' := interserver_api_websites_order_service_types:interserver_api_websites_order_service_types()
     }.

encode(#{ '11447' := 11447
        }) ->
    #{ '11447' => 11447
     }.
