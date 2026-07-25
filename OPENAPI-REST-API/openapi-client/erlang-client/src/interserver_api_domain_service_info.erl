-module(interserver_api_domain_service_info).

-export([encode/1]).

-export_type([interserver_api_domain_service_info/0]).

-type interserver_api_domain_service_info() ::
    #{ 'domain_id' => binary(),
       'domain_hostname' => binary(),
       'domain_username' => binary(),
       'domain_password' => binary(),
       'domain_type' => binary(),
       'domain_currency' => binary(),
       'domain_expire_date' => binary(),
       'domain_order_date' => binary(),
       'domain_custid' => binary(),
       'domain_status' => binary(),
       'domain_invoice' => binary(),
       'domain_coupon' => binary()
     }.

encode(#{ 'domain_id' := DomainId,
          'domain_hostname' := DomainHostname,
          'domain_username' := DomainUsername,
          'domain_password' := DomainPassword,
          'domain_type' := DomainType,
          'domain_currency' := DomainCurrency,
          'domain_expire_date' := DomainExpireDate,
          'domain_order_date' := DomainOrderDate,
          'domain_custid' := DomainCustid,
          'domain_status' := DomainStatus,
          'domain_invoice' := DomainInvoice,
          'domain_coupon' := DomainCoupon
        }) ->
    #{ 'domain_id' => DomainId,
       'domain_hostname' => DomainHostname,
       'domain_username' => DomainUsername,
       'domain_password' => DomainPassword,
       'domain_type' => DomainType,
       'domain_currency' => DomainCurrency,
       'domain_expire_date' => DomainExpireDate,
       'domain_order_date' => DomainOrderDate,
       'domain_custid' => DomainCustid,
       'domain_status' => DomainStatus,
       'domain_invoice' => DomainInvoice,
       'domain_coupon' => DomainCoupon
     }.
