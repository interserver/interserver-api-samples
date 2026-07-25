-module(interserver_api_domain).

-export([encode/1]).

-export_type([interserver_api_domain/0]).

-type interserver_api_domain() ::
    #{ 'serviceInfo' => interserver_api_domain_service_info:interserver_api_domain_service_info(),
       'serviceTypes' => maps:map(),
       'client_links' => list(),
       'billingDetails' => interserver_api_domain_billing_details:interserver_api_domain_billing_details(),
       'custCurrency' => binary(),
       'custCurrencySymbol' => binary(),
       'serviceExtra' => interserver_api_domain_billing_extra:interserver_api_domain_billing_extra(),
       'extraInfoTables' => interserver_api_backup_extra_info_tables:interserver_api_backup_extra_info_tables(),
       'serviceType' => interserver_api_domain_service_type:interserver_api_domain_service_type(),
       'contact_details' => interserver_api_domain_contact_details:interserver_api_domain_contact_details(),
       'pwarning' => binary(),
       'transfer_info' => binary(),
       'errors' => boolean(),
       'domain_logs' => list(),
       'allInfo' => interserver_api_domain_all_info:interserver_api_domain_all_info(),
       'registrarStatus' => binary(),
       'locked' => binary(),
       'whoisPrivacy' => binary(),
       'autoRenew' => binary()
     }.

encode(#{ 'serviceInfo' := ServiceInfo,
          'serviceTypes' := ServiceTypes,
          'client_links' := ClientLinks,
          'billingDetails' := BillingDetails,
          'custCurrency' := CustCurrency,
          'custCurrencySymbol' := CustCurrencySymbol,
          'serviceExtra' := ServiceExtra,
          'extraInfoTables' := ExtraInfoTables,
          'serviceType' := ServiceType,
          'contact_details' := ContactDetails,
          'pwarning' := Pwarning,
          'transfer_info' := TransferInfo,
          'errors' := Errors,
          'domain_logs' := DomainLogs,
          'allInfo' := AllInfo,
          'registrarStatus' := RegistrarStatus,
          'locked' := Locked,
          'whoisPrivacy' := WhoisPrivacy,
          'autoRenew' := AutoRenew
        }) ->
    #{ 'serviceInfo' => ServiceInfo,
       'serviceTypes' => ServiceTypes,
       'client_links' => ClientLinks,
       'billingDetails' => BillingDetails,
       'custCurrency' => CustCurrency,
       'custCurrencySymbol' => CustCurrencySymbol,
       'serviceExtra' => ServiceExtra,
       'extraInfoTables' => ExtraInfoTables,
       'serviceType' => ServiceType,
       'contact_details' => ContactDetails,
       'pwarning' => Pwarning,
       'transfer_info' => TransferInfo,
       'errors' => Errors,
       'domain_logs' => DomainLogs,
       'allInfo' => AllInfo,
       'registrarStatus' => RegistrarStatus,
       'locked' => Locked,
       'whoisPrivacy' => WhoisPrivacy,
       'autoRenew' => AutoRenew
     }.
