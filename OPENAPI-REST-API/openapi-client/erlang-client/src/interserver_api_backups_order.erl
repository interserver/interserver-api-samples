-module(interserver_api_backups_order).

-export([encode/1]).

-export_type([interserver_api_backups_order/0]).

-type interserver_api_backups_order() ::
    #{ 'packageCosts' := interserver_api_backups_order_package_costs:interserver_api_backups_order_package_costs(),
       'serviceTypes' := interserver_api_backups_order_service_types:interserver_api_backups_order_service_types()
     }.

encode(#{ 'packageCosts' := PackageCosts,
          'serviceTypes' := ServiceTypes
        }) ->
    #{ 'packageCosts' => PackageCosts,
       'serviceTypes' => ServiceTypes
     }.
