-module(interserver_api_mail_schema).

-export([encode/1]).

-export_type([interserver_api_mail_schema/0]).

-type interserver_api_mail_schema() ::
    #{ 'serviceInfo' := interserver_api_mail_service_info:interserver_api_mail_service_info(),
       'client_links' := list(),
       'billingDetails' := interserver_api_mail_billing_details:interserver_api_mail_billing_details(),
       'custCurrency' := binary(),
       'custCurrencySymbol' := binary(),
       'package' := binary(),
       'serviceExtra' => list(),
       'extraInfoTables' := interserver_api_mail_schema_extra_info_tables:interserver_api_mail_schema_extra_info_tables(),
       'serviceType' := interserver_api_mail_service_type:interserver_api_mail_service_type(),
       'usage_count' := binary()
     }.

encode(#{ 'serviceInfo' := ServiceInfo,
          'client_links' := ClientLinks,
          'billingDetails' := BillingDetails,
          'custCurrency' := CustCurrency,
          'custCurrencySymbol' := CustCurrencySymbol,
          'package' := Package,
          'serviceExtra' := ServiceExtra,
          'extraInfoTables' := ExtraInfoTables,
          'serviceType' := ServiceType,
          'usage_count' := UsageCount
        }) ->
    #{ 'serviceInfo' => ServiceInfo,
       'client_links' => ClientLinks,
       'billingDetails' => BillingDetails,
       'custCurrency' => CustCurrency,
       'custCurrencySymbol' => CustCurrencySymbol,
       'package' => Package,
       'serviceExtra' => ServiceExtra,
       'extraInfoTables' => ExtraInfoTables,
       'serviceType' => ServiceType,
       'usage_count' => UsageCount
     }.
