-module(interserver_api_license).

-export([encode/1]).

-export_type([interserver_api_license/0]).

-type interserver_api_license() ::
    #{ 'serviceInfo' := interserver_api_license_service_info:interserver_api_license_service_info(),
       'client_links' := list(),
       'billingDetails' := interserver_api_license_billing_details:interserver_api_license_billing_details(),
       'custCurrency' := binary(),
       'custCurrencySymbol' := binary(),
       'package' := binary(),
       'serviceExtra' := list(),
       'extraInfoTables' := interserver_api_license_extra_info_tables:interserver_api_license_extra_info_tables(),
       'service_overview_extra' := binary(),
       'serviceType' := interserver_api_license_service_type:interserver_api_license_service_type(),
       'license_key' := binary()
     }.

encode(#{ 'serviceInfo' := ServiceInfo,
          'client_links' := ClientLinks,
          'billingDetails' := BillingDetails,
          'custCurrency' := CustCurrency,
          'custCurrencySymbol' := CustCurrencySymbol,
          'package' := Package,
          'serviceExtra' := ServiceExtra,
          'extraInfoTables' := ExtraInfoTables,
          'service_overview_extra' := ServiceOverviewExtra,
          'serviceType' := ServiceType,
          'license_key' := LicenseKey
        }) ->
    #{ 'serviceInfo' => ServiceInfo,
       'client_links' => ClientLinks,
       'billingDetails' => BillingDetails,
       'custCurrency' => CustCurrency,
       'custCurrencySymbol' => CustCurrencySymbol,
       'package' => Package,
       'serviceExtra' => ServiceExtra,
       'extraInfoTables' => ExtraInfoTables,
       'service_overview_extra' => ServiceOverviewExtra,
       'serviceType' => ServiceType,
       'license_key' => LicenseKey
     }.
