-module(interserver_api_servers_buy_now_response_order_details).

-export([encode/1]).

-export_type([interserver_api_servers_buy_now_response_order_details/0]).

-type interserver_api_servers_buy_now_response_order_details() ::
    #{ 'service_id' => integer(),
       'invoice_id' => integer()
     }.

encode(#{ 'service_id' := ServiceId,
          'invoice_id' := InvoiceId
        }) ->
    #{ 'service_id' => ServiceId,
       'invoice_id' => InvoiceId
     }.
