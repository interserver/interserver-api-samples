-module(interserver_api_get_scrub_ip_details_200_response).

-export([encode/1]).

-export_type([interserver_api_get_scrub_ip_details_200_response/0]).

-type interserver_api_get_scrub_ip_details_200_response() ::
    #{ 'serviceInfo' => interserver_api_get_scrub_ip_details_200_response_service_info:interserver_api_get_scrub_ip_details_200_response_service_info(),
       'client_links' => list(),
       'billingDetails' => interserver_api_get_scrub_ip_details_200_response_billing_details:interserver_api_get_scrub_ip_details_200_response_billing_details(),
       'custCurrency' => binary(),
       'custCurrencySymbol' => binary(),
       'package' => binary(),
       'extraInfoTables' => interserver_api_get_scrub_ip_details_200_response_extra_info_tables:interserver_api_get_scrub_ip_details_200_response_extra_info_tables(),
       'filter_firewall' => interserver_api_get_scrub_ip_details_200_response_filter_firewall:interserver_api_get_scrub_ip_details_200_response_filter_firewall()
     }.

encode(#{ 'serviceInfo' := ServiceInfo,
          'client_links' := ClientLinks,
          'billingDetails' := BillingDetails,
          'custCurrency' := CustCurrency,
          'custCurrencySymbol' := CustCurrencySymbol,
          'package' := Package,
          'extraInfoTables' := ExtraInfoTables,
          'filter_firewall' := FilterFirewall
        }) ->
    #{ 'serviceInfo' => ServiceInfo,
       'client_links' => ClientLinks,
       'billingDetails' => BillingDetails,
       'custCurrency' => CustCurrency,
       'custCurrencySymbol' => CustCurrencySymbol,
       'package' => Package,
       'extraInfoTables' => ExtraInfoTables,
       'filter_firewall' => FilterFirewall
     }.
