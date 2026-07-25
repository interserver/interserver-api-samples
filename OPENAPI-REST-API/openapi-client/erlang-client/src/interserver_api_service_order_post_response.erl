-module(interserver_api_service_order_post_response).

-export([encode/1]).

-export_type([interserver_api_service_order_post_response/0]).

-type interserver_api_service_order_post_response() ::
    #{ 'continue' => boolean(),
       'errors' => list(),
       'total_cost' => binary(),
       'iid' => binary(),
       'iids' => list(),
       'real_iids' => list(),
       'serviceId' => integer(),
       'invoice_description' => binary()
     }.

encode(#{ 'continue' := Continue,
          'errors' := Errors,
          'total_cost' := TotalCost,
          'iid' := Iid,
          'iids' := Iids,
          'real_iids' := RealIids,
          'serviceId' := ServiceId,
          'invoice_description' := InvoiceDescription
        }) ->
    #{ 'continue' => Continue,
       'errors' => Errors,
       'total_cost' => TotalCost,
       'iid' => Iid,
       'iids' => Iids,
       'real_iids' => RealIids,
       'serviceId' => ServiceId,
       'invoice_description' => InvoiceDescription
     }.
