-module(interserver_api_backup).

-export([encode/1]).

-export_type([interserver_api_backup/0]).

-type interserver_api_backup() ::
    #{ 'serviceInfo' => interserver_api_backup_service_info:interserver_api_backup_service_info(),
       'client_links' => list(),
       'billingDetails' => interserver_api_backup_billing_details:interserver_api_backup_billing_details(),
       'custCurrency' => binary(),
       'custCurrencySymbol' => binary(),
       'serviceMaster' => interserver_api_backup_service_master:interserver_api_backup_service_master(),
       'package' => binary(),
       'serviceExtra' => binary(),
       'extraInfoTables' => interserver_api_backup_extra_info_tables:interserver_api_backup_extra_info_tables()
     }.

encode(#{ 'serviceInfo' := ServiceInfo,
          'client_links' := ClientLinks,
          'billingDetails' := BillingDetails,
          'custCurrency' := CustCurrency,
          'custCurrencySymbol' := CustCurrencySymbol,
          'serviceMaster' := ServiceMaster,
          'package' := Package,
          'serviceExtra' := ServiceExtra,
          'extraInfoTables' := ExtraInfoTables
        }) ->
    #{ 'serviceInfo' => ServiceInfo,
       'client_links' => ClientLinks,
       'billingDetails' => BillingDetails,
       'custCurrency' => CustCurrency,
       'custCurrencySymbol' => CustCurrencySymbol,
       'serviceMaster' => ServiceMaster,
       'package' => Package,
       'serviceExtra' => ServiceExtra,
       'extraInfoTables' => ExtraInfoTables
     }.
