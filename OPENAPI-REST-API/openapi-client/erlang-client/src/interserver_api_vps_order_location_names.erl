-module(interserver_api_vps_order_location_names).

-export([encode/1]).

-export_type([interserver_api_vps_order_location_names/0]).

-type interserver_api_vps_order_location_names() ::
    #{ '3' => binary()
     }.

encode(#{ '3' := 3
        }) ->
    #{ '3' => 3
     }.
