-module(interserver_api_licenses_order_service_categories).

-export([encode/1]).

-export_type([interserver_api_licenses_order_service_categories/0]).

-type interserver_api_licenses_order_service_categories() ::
    #{ 'LicensesOrderServiceCategories509' => interserver_api_licenses_order_service_categories509:interserver_api_licenses_order_service_categories509()
     }.

encode(#{ 'LicensesOrderServiceCategories509' := LicensesOrderServiceCategories509
        }) ->
    #{ 'LicensesOrderServiceCategories509' => LicensesOrderServiceCategories509
     }.
