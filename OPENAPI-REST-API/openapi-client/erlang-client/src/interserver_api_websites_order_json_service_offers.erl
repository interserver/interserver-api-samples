-module(interserver_api_websites_order_json_service_offers).

-export([encode/1]).

-export_type([interserver_api_websites_order_json_service_offers/0]).

-type interserver_api_websites_order_json_service_offers() ::
    #{ '1026' := list()
     }.

encode(#{ '1026' := 1026
        }) ->
    #{ '1026' => 1026
     }.
