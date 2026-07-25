-module(interserver_api_place_scrub_order_201_response_order_details).

-export([encode/1]).

-export_type([interserver_api_place_scrub_order_201_response_order_details/0]).

-type interserver_api_place_scrub_order_201_response_order_details() ::
    #{ 'total_cost' => integer(),
       'service_id' => integer(),
       'invoice_id' => integer(),
       'invoice_description' => binary(),
       'cj_params' => interserver_api_place_scrub_order_201_response_order_details_cj_params:interserver_api_place_scrub_order_201_response_order_details_cj_params()
     }.

encode(#{ 'total_cost' := TotalCost,
          'service_id' := ServiceId,
          'invoice_id' := InvoiceId,
          'invoice_description' := InvoiceDescription,
          'cj_params' := CjParams
        }) ->
    #{ 'total_cost' => TotalCost,
       'service_id' => ServiceId,
       'invoice_id' => InvoiceId,
       'invoice_description' => InvoiceDescription,
       'cj_params' => CjParams
     }.
