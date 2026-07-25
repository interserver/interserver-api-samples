-module(interserver_api_backups_order_service_types).

-export([encode/1]).

-export_type([interserver_api_backups_order_service_types/0]).

-type interserver_api_backups_order_service_types() ::
    #{ '11006' => interserver_api_backups_order_service_types:interserver_api_backups_order_service_types()
     }.

encode(#{ '11006' := 11006
        }) ->
    #{ '11006' => 11006
     }.
