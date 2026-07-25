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
       'serviceExtra' := interserver_api_vps_service_extra:interserver_api_vps_service_extra(),
       'extraInfoTables' := interserver_api_vps_extra_info_tables:interserver_api_vps_extra_info_tables(),
       'module' := binary(),
       'token' := binary(),
       'da_link' := integer(),
       'sr_link' := integer(),
       'cp_data' := interserver_api_vps_cp_data:interserver_api_vps_cp_data(),
       'da_data' := interserver_api_vps_da_data:interserver_api_vps_da_data(),
       'plesk12_data' := interserver_api_vps_plesk12_data:interserver_api_vps_plesk12_data(),
       'serviceAddons' := interserver_api_vps_service_addons:interserver_api_vps_service_addons(),
       'os_template' => binary(),
       'cpu_graph_data' => interserver_api_any_type:interserver_api_any_type()
     }.

encode(#{ 'serviceInfo' := ServiceInfo,
          'client_links' := ClientLinks,
          'billingDetails' := BillingDetails,
          'custCurrency' := CustCurrency,
          'custCurrencySymbol' := CustCurrencySymbol,
          'serviceMaster' := ServiceMaster,
          'package' := Package,
          'serviceExtra' := ServiceExtra,
          'extraInfoTables' := ExtraInfoTables,
          'module' := Module,
          'token' := Token,
          'da_link' := DaLink,
          'sr_link' := SrLink,
          'cp_data' := CpData,
          'da_data' := DaData,
          'plesk12_data' := Plesk12Data,
          'serviceAddons' := ServiceAddons,
          'os_template' := OsTemplate,
          'cpu_graph_data' := CpuGraphData
        }) ->
    #{ 'serviceInfo' => ServiceInfo,
       'client_links' => ClientLinks,
       'billingDetails' => BillingDetails,
       'custCurrency' => CustCurrency,
       'custCurrencySymbol' => CustCurrencySymbol,
       'serviceMaster' => ServiceMaster,
       'package' => Package,
       'serviceExtra' => ServiceExtra,
       'extraInfoTables' => ExtraInfoTables,
       'module' => Module,
       'token' => Token,
       'da_link' => DaLink,
       'sr_link' => SrLink,
       'cp_data' => CpData,
       'da_data' => DaData,
       'plesk12_data' => Plesk12Data,
       'serviceAddons' => ServiceAddons,
       'os_template' => OsTemplate,
       'cpu_graph_data' => CpuGraphData
     }.
