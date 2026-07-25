-module(interserver_api_license_row).

-export([encode/1]).

-export_type([interserver_api_license_row/0]).

-type interserver_api_license_row() ::
    #{ 'license_id' => binary(),
       'license_hostname' => binary(),
       'license_ip' => binary(),
       'services_name' => binary(),
       'cost' => binary(),
       'license_status' => binary(),
       'invoices_paid' => binary(),
       'invoices_date' => interserver_api_date_time:interserver_api_date_time()
     }.

encode(#{ 'license_id' := LicenseId,
          'license_hostname' := LicenseHostname,
          'license_ip' := LicenseIp,
          'services_name' := ServicesName,
          'cost' := Cost,
          'license_status' := LicenseStatus,
          'invoices_paid' := InvoicesPaid,
          'invoices_date' := InvoicesDate
        }) ->
    #{ 'license_id' => LicenseId,
       'license_hostname' => LicenseHostname,
       'license_ip' => LicenseIp,
       'services_name' => ServicesName,
       'cost' => Cost,
       'license_status' => LicenseStatus,
       'invoices_paid' => InvoicesPaid,
       'invoices_date' => InvoicesDate
     }.
