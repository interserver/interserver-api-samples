-module(interserver_api_licenses_order_service_types).

-export([encode/1]).

-export_type([interserver_api_licenses_order_service_types/0]).

-type interserver_api_licenses_order_service_types() ::
    #{ 'LicensesOrderServiceTypes11482' => interserver_api_licenses_order_service_types11482:interserver_api_licenses_order_service_types11482()
     }.

encode(#{ 'LicensesOrderServiceTypes11482' := LicensesOrderServiceTypes11482
        }) ->
    #{ 'LicensesOrderServiceTypes11482' => LicensesOrderServiceTypes11482
     }.
