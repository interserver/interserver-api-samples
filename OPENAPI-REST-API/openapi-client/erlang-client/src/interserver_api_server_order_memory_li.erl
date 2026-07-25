-module(interserver_api_server_order_memory_li).

-export([encode/1]).

-export_type([interserver_api_server_order_memory_li/0]).

-type interserver_api_server_order_memory_li() ::
    #{ '254' => interserver_api_server_order_memory_li_254:interserver_api_server_order_memory_li_254()
     }.

encode(#{ '254' := 254
        }) ->
    #{ '254' => 254
     }.
