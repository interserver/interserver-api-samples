-module(interserver_api_charge_invoice_rows).

-export([encode/1]).

-export_type([interserver_api_charge_invoice_rows/0]).

-type interserver_api_charge_invoice_rows() ::
    #{ 'success' => boolean(),
       'invoices' => maps:map()
     }.

encode(#{ 'success' := Success,
          'invoices' := Invoices
        }) ->
    #{ 'success' => Success,
       'invoices' => Invoices
     }.
