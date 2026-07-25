-module(interserver_api_vps_row).

-export([encode/1]).

-export_type([interserver_api_vps_row/0]).

-type interserver_api_vps_row() ::
    #{ 'vps_id' := binary(),
       'vps_name' := binary(),
       'repeat_invoices_cost' := binary(),
       'vps_hostname' := binary(),
       'vps_ip' := binary(),
       'vps_status' := binary(),
       'services_name' := binary(),
       'vps_comment' := binary()
     }.

encode(#{ 'vps_id' := VpsId,
          'vps_name' := VpsName,
          'repeat_invoices_cost' := RepeatInvoicesCost,
          'vps_hostname' := VpsHostname,
          'vps_ip' := VpsIp,
          'vps_status' := VpsStatus,
          'services_name' := ServicesName,
          'vps_comment' := VpsComment
        }) ->
    #{ 'vps_id' => VpsId,
       'vps_name' => VpsName,
       'repeat_invoices_cost' => RepeatInvoicesCost,
       'vps_hostname' => VpsHostname,
       'vps_ip' => VpsIp,
       'vps_status' => VpsStatus,
       'services_name' => ServicesName,
       'vps_comment' => VpsComment
     }.
