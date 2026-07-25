-module(interserver_api_license_service_info).

-export([encode/1]).

-export_type([interserver_api_license_service_info/0]).

-type interserver_api_license_service_info() ::
    #{ 'license_id' := binary(),
       'license_type' := binary(),
       'license_currency' := binary(),
       'license_order_date' := interserver_api_date_time:interserver_api_date_time(),
       'license_custid' := binary(),
       'license_ip' := binary(),
       'license_status' := binary(),
       'license_hostname' => binary(),
       'license_key' => binary(),
       'license_invoice' := binary(),
       'license_coupon' := binary(),
       'license_extra' => binary()
     }.

encode(#{ 'license_id' := LicenseId,
          'license_type' := LicenseType,
          'license_currency' := LicenseCurrency,
          'license_order_date' := LicenseOrderDate,
          'license_custid' := LicenseCustid,
          'license_ip' := LicenseIp,
          'license_status' := LicenseStatus,
          'license_hostname' := LicenseHostname,
          'license_key' := LicenseKey,
          'license_invoice' := LicenseInvoice,
          'license_coupon' := LicenseCoupon,
          'license_extra' := LicenseExtra
        }) ->
    #{ 'license_id' => LicenseId,
       'license_type' => LicenseType,
       'license_currency' => LicenseCurrency,
       'license_order_date' => LicenseOrderDate,
       'license_custid' => LicenseCustid,
       'license_ip' => LicenseIp,
       'license_status' => LicenseStatus,
       'license_hostname' => LicenseHostname,
       'license_key' => LicenseKey,
       'license_invoice' => LicenseInvoice,
       'license_coupon' => LicenseCoupon,
       'license_extra' => LicenseExtra
     }.
