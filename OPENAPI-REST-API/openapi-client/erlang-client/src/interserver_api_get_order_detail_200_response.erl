-module(interserver_api_get_order_detail_200_response).

-export([encode/1]).

-export_type([interserver_api_get_order_detail_200_response/0]).

-type interserver_api_get_order_detail_200_response() ::
    #{ 'packageCosts' => interserver_api_get_order_detail_200_response_package_costs:interserver_api_get_order_detail_200_response_package_costs(),
       'serviceTypes' => list(),
       'ips' => list()
     }.

encode(#{ 'packageCosts' := PackageCosts,
          'serviceTypes' := ServiceTypes,
          'ips' := Ips
        }) ->
    #{ 'packageCosts' => PackageCosts,
       'serviceTypes' => ServiceTypes,
       'ips' => Ips
     }.
