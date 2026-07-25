-module(interserver_api_quickserver_order_server_details).

-export([encode/1]).

-export_type([interserver_api_quickserver_order_server_details/0]).

-type interserver_api_quickserver_order_server_details() ::
    #{ '381' => interserver_api_quickserver_order_server_details381:interserver_api_quickserver_order_server_details381()
     }.

encode(#{ '381' := 381
        }) ->
    #{ '381' => 381
     }.
