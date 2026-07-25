-module(interserver_api_server_order_cpu_li).

-export([encode/1]).

-export_type([interserver_api_server_order_cpu_li/0]).

-type interserver_api_server_order_cpu_li() ::
    #{ '254' => interserver_api_server_order_cpu:interserver_api_server_order_cpu()
     }.

encode(#{ '254' := 254
        }) ->
    #{ '254' => 254
     }.
