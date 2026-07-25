-module(interserver_api_billing_invoice_list).

-export([encode/1]).

-export_type([interserver_api_billing_invoice_list/0]).

-type interserver_api_billing_invoice_list() ::
    #{ 'rows' => list(),
       'summary' => maps:map()
     }.

encode(#{ 'rows' := Rows,
          'summary' := Summary
        }) ->
    #{ 'rows' => Rows,
       'summary' => Summary
     }.
