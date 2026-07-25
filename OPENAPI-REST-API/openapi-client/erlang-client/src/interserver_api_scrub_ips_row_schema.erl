-module(interserver_api_scrub_ips_row_schema).

-export([encode/1]).

-export_type([interserver_api_scrub_ips_row_schema/0]).

-type interserver_api_scrub_ips_row_schema() ::
    #{ 'scrub_ip_id' => integer(),
       'repeat_invoices_cost' => integer(),
       'scrub_ip_ip' => binary(),
       'scrub_ip_status' => binary(),
       'services_name' => binary()
     }.

encode(#{ 'scrub_ip_id' := ScrubIpId,
          'repeat_invoices_cost' := RepeatInvoicesCost,
          'scrub_ip_ip' := ScrubIpIp,
          'scrub_ip_status' := ScrubIpStatus,
          'services_name' := ServicesName
        }) ->
    #{ 'scrub_ip_id' => ScrubIpId,
       'repeat_invoices_cost' => RepeatInvoicesCost,
       'scrub_ip_ip' => ScrubIpIp,
       'scrub_ip_status' => ScrubIpStatus,
       'services_name' => ServicesName
     }.
