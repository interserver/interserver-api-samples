-module(interserver_api_server).

-export([encode/1]).

-export_type([interserver_api_server/0]).

-type interserver_api_server() ::
    #{ 'ipmiAuth' := boolean(),
       'client_links' := list(),
       'billingDetails' := interserver_api_server_billing_details:interserver_api_server_billing_details(),
       'custCurrency' := binary(),
       'custCurrencySymbol' := binary(),
       'package' := binary(),
       'serviceExtra' := list(),
       'locations' := interserver_api_server_locations:interserver_api_server_locations(),
       'networkInfo' := interserver_api_server_network_info:interserver_api_server_network_info(),
       'extraInfoTables' := interserver_api_server_extra_info_tables:interserver_api_server_extra_info_tables(),
       'serviceInfo' := interserver_api_server_service_info:interserver_api_server_service_info()
     }.

encode(#{ 'ipmiAuth' := IpmiAuth,
          'client_links' := ClientLinks,
          'billingDetails' := BillingDetails,
          'custCurrency' := CustCurrency,
          'custCurrencySymbol' := CustCurrencySymbol,
          'package' := Package,
          'serviceExtra' := ServiceExtra,
          'locations' := Locations,
          'networkInfo' := NetworkInfo,
          'extraInfoTables' := ExtraInfoTables,
          'serviceInfo' := ServiceInfo
        }) ->
    #{ 'ipmiAuth' => IpmiAuth,
       'client_links' => ClientLinks,
       'billingDetails' => BillingDetails,
       'custCurrency' => CustCurrency,
       'custCurrencySymbol' => CustCurrencySymbol,
       'package' => Package,
       'serviceExtra' => ServiceExtra,
       'locations' => Locations,
       'networkInfo' => NetworkInfo,
       'extraInfoTables' => ExtraInfoTables,
       'serviceInfo' => ServiceInfo
     }.
