-module(interserver_api_server_order_ips_li).

-export([encode/1]).

-export_type([interserver_api_server_order_ips_li/0]).

-type interserver_api_server_order_ips_li() ::
    #{ '9' => interserver_api_server_order_ip:interserver_api_server_order_ip()
     }.

encode(#{ '9' := 9
        }) ->
    #{ '9' => 9
     }.
