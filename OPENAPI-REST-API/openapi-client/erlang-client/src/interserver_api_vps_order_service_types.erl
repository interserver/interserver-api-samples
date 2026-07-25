-module(interserver_api_vps_order_service_types).

-export([encode/1]).

-export_type([interserver_api_vps_order_service_types/0]).

-type interserver_api_vps_order_service_types() ::
    #{ '32' => interserver_api_vps_order_service_types_32:interserver_api_vps_order_service_types_32()
     }.

encode(#{ '32' := 32
        }) ->
    #{ '32' => 32
     }.
