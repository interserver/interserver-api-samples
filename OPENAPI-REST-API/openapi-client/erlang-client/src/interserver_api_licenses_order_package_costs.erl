-module(interserver_api_licenses_order_package_costs).

-export([encode/1]).

-export_type([interserver_api_licenses_order_package_costs/0]).

-type interserver_api_licenses_order_package_costs() ::
    #{ 'LicensesOrderPackageCosts11468' => integer()
     }.

encode(#{ 'LicensesOrderPackageCosts11468' := LicensesOrderPackageCosts11468
        }) ->
    #{ 'LicensesOrderPackageCosts11468' => LicensesOrderPackageCosts11468
     }.
