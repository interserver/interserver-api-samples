-module(interserver_api_vps_order_location_stock).

-export([encode/1]).

-export_type([interserver_api_vps_order_location_stock/0]).

-type interserver_api_vps_order_location_stock() ::
    #{ '1' => interserver_api_vps_order_location_stock_1:interserver_api_vps_order_location_stock_1()
     }.

encode(#{ '1' := 1
        }) ->
    #{ '1' => 1
     }.
