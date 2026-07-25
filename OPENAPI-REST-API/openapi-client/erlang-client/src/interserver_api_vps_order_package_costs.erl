-module(interserver_api_vps_order_package_costs).

-export([encode/1]).

-export_type([interserver_api_vps_order_package_costs/0]).

-type interserver_api_vps_order_package_costs() ::
    #{ '57' => integer()
     }.

encode(#{ '57' := 57
        }) ->
    #{ '57' => 57
     }.
