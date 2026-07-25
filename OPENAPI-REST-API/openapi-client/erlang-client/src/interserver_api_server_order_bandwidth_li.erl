-module(interserver_api_server_order_bandwidth_li).

-export([encode/1]).

-export_type([interserver_api_server_order_bandwidth_li/0]).

-type interserver_api_server_order_bandwidth_li() ::
    #{ '15' => interserver_api_server_order_bandwidth:interserver_api_server_order_bandwidth()
     }.

encode(#{ '15' := 15
        }) ->
    #{ '15' => 15
     }.
