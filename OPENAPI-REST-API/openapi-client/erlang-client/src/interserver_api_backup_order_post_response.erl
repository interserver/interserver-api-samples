-module(interserver_api_backup_order_post_response).

-export([encode/1]).

-export_type([interserver_api_backup_order_post_response/0]).

-type interserver_api_backup_order_post_response() ::
    #{ 'continue' => boolean(),
       'errors' => list(),
       'total_cost' => binary(),
       'iid' => binary(),
       'iids' => list(),
       'real_iids' => list(),
       'serviceId' => integer(),
       'invoice_description' => binary(),
       'cj_params' => interserver_api_backup_order_post_response_cj_params:interserver_api_backup_order_post_response_cj_params()
     }.

encode(#{ 'continue' := Continue,
          'errors' := Errors,
          'total_cost' := TotalCost,
          'iid' := Iid,
          'iids' := Iids,
          'real_iids' := RealIids,
          'serviceId' := ServiceId,
          'invoice_description' := InvoiceDescription,
          'cj_params' := CjParams
        }) ->
    #{ 'continue' => Continue,
       'errors' => Errors,
       'total_cost' => TotalCost,
       'iid' => Iid,
       'iids' => Iids,
       'real_iids' => RealIids,
       'serviceId' => ServiceId,
       'invoice_description' => InvoiceDescription,
       'cj_params' => CjParams
     }.
