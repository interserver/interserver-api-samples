-module(interserver_api_backups_order_package_costs).

-export([encode/1]).

-export_type([interserver_api_backups_order_package_costs/0]).

-type interserver_api_backups_order_package_costs() ::
    #{ '11006' := integer()
     }.

encode(#{ '11006' := 11006
        }) ->
    #{ '11006' => 11006
     }.
