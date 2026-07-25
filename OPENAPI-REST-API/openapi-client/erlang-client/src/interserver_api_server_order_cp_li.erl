-module(interserver_api_server_order_cp_li).

-export([encode/1]).

-export_type([interserver_api_server_order_cp_li/0]).

-type interserver_api_server_order_cp_li() ::
    #{ '9' => interserver_api_server_order_control_panel:interserver_api_server_order_control_panel()
     }.

encode(#{ '9' := 9
        }) ->
    #{ '9' => 9
     }.
