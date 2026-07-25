-module(interserver_api_licenses_order).

-export([encode/1]).

-export_type([interserver_api_licenses_order/0]).

-type interserver_api_licenses_order() ::
    #{ 'serviceCategories' => interserver_api_licenses_order_service_categories:interserver_api_licenses_order_service_categories(),
       'packageCosts' => interserver_api_licenses_order_package_costs:interserver_api_licenses_order_package_costs(),
       'serviceTypes' => interserver_api_licenses_order_service_types:interserver_api_licenses_order_service_types()
     }.

encode(#{ 'serviceCategories' := ServiceCategories,
          'packageCosts' := PackageCosts,
          'serviceTypes' := ServiceTypes
        }) ->
    #{ 'serviceCategories' => ServiceCategories,
       'packageCosts' => PackageCosts,
       'serviceTypes' => ServiceTypes
     }.
