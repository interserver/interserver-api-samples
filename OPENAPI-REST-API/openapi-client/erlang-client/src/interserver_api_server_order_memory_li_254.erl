-module(interserver_api_server_order_memory_li_254).

-export([encode/1]).

-export_type([interserver_api_server_order_memory_li_254/0]).

-type interserver_api_server_order_memory_li_254() ::
    #{ '65' => interserver_api_server_order_memory:interserver_api_server_order_memory()
     }.

encode(#{ '65' := 65
        }) ->
    #{ '65' => 65
     }.
