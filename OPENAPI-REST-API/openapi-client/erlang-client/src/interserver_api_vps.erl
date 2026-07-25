-module(interserver_api_vps).

-export([encode/1]).

-export_type([interserver_api_vps/0]).

-type interserver_api_vps() ::
    #{ 'serviceInfo' := interserver_api_vps_service_info:interserver_api_vps_service_info(),
       'client_links' := list(),
       'billingDetails' := interserver_api_vps_billing_details:interserver_api_vps_billing_details(),
       'custCurrency' := binary(),
       'custCurrencySymbol' := binary(),
       'serviceMaster' := interserver_api_vps_service_master:interserver_api_vps_service_master(),
       'package' := binary(),
       'os_template' => binary(),
       'serviceExtra' := interserver_api_vps_service_extra:interserver_api_vps_service_extra(),
       'extraInfoTables' := interserver_api_vps_extra_info_tables:interserver_api_vps_extra_info_tables(),
       'cpu_graph_data' => interserver_api_any_type:interserver_api_any_type(),
       'module' := binary(),
       'token' := binary(),
       'da_link' := integer(),
       'sr_link' := integer(),
       'cp_data' := interserver_api_vps_cp_data:interserver_api_vps_cp_data(),
       'da_data' := interserver_api_vps_da_data:interserver_api_vps_da_data(),
       'plesk12_data' := interserver_api_vps_plesk12_data:interserver_api_vps_plesk12_data(),
       'serviceAddons' := interserver_api_vps_service_addons:interserver_api_vps_service_addons()
     }.

encode(#{ 'serviceInfo' := ServiceInfo,
          'client_links' := ClientLinks,
          'billingDetails' := BillingDetails,
          'custCurrency' := CustCurrency,
          'custCurrencySymbol' := CustCurrencySymbol,
          'serviceMaster' := ServiceMaster,
          'package' := Package,
          'os_template' := OsTemplate,
          'serviceExtra' := ServiceExtra,
          'extraInfoTables' := ExtraInfoTables,
          'cpu_graph_data' := CpuGraphData,
          'module' := Module,
          'token' := Token,
          'da_link' := DaLink,
          'sr_link' := SrLink,
          'cp_data' := CpData,
          'da_data' := DaData,
          'plesk12_data' := Plesk12Data,
          'serviceAddons' := ServiceAddons
        }) ->
    #{ 'serviceInfo' => ServiceInfo,
       'client_links' => ClientLinks,
       'billingDetails' => BillingDetails,
       'custCurrency' => CustCurrency,
       'custCurrencySymbol' => CustCurrencySymbol,
       'serviceMaster' => ServiceMaster,
       'package' => Package,
       'os_template' => OsTemplate,
       'serviceExtra' => ServiceExtra,
       'extraInfoTables' => ExtraInfoTables,
       'cpu_graph_data' => CpuGraphData,
       'module' => Module,
       'token' => Token,
       'da_link' => DaLink,
       'sr_link' => SrLink,
       'cp_data' => CpData,
       'da_data' => DaData,
       'plesk12_data' => Plesk12Data,
       'serviceAddons' => ServiceAddons
     }.
