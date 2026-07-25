-module(interserver_api_server_order_os_li).

-export([encode/1]).

-export_type([interserver_api_server_order_os_li/0]).

-type interserver_api_server_order_os_li() ::
    #{ '51' => interserver_api_server_order_os:interserver_api_server_order_os()
     }.

encode(#{ '51' := 51
        }) ->
    #{ '51' => 51
     }.
