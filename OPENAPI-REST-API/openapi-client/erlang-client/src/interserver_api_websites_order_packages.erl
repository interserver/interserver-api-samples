-module(interserver_api_websites_order_packages).

-export([encode/1]).

-export_type([interserver_api_websites_order_packages/0]).

-type interserver_api_websites_order_packages() ::
    #{ '11447' := binary()
     }.

encode(#{ '11447' := 11447
        }) ->
    #{ '11447' => 11447
     }.
