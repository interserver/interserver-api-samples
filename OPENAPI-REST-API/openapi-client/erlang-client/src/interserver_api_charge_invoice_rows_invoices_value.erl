-module(interserver_api_charge_invoice_rows_invoices_value).

-export([encode/1]).

-export_type([interserver_api_charge_invoice_rows_invoices_value/0]).

-type interserver_api_charge_invoice_rows_invoices_value() ::
    #{ 'invoices_id' => integer(),
       'invoices_description' => binary(),
       'invoices_amount' => integer(),
       'invoices_date' => binary(),
       'invoices_paid' => integer(),
       'invoices_due_date' => binary(),
       'invoices_currency' => binary(),
       'currency_symbol' => binary(),
       'invoices_date_formatted' => binary(),
       'paid_invoices' => maps:map()
     }.

encode(#{ 'invoices_id' := InvoicesId,
          'invoices_description' := InvoicesDescription,
          'invoices_amount' := InvoicesAmount,
          'invoices_date' := InvoicesDate,
          'invoices_paid' := InvoicesPaid,
          'invoices_due_date' := InvoicesDueDate,
          'invoices_currency' := InvoicesCurrency,
          'currency_symbol' := CurrencySymbol,
          'invoices_date_formatted' := InvoicesDateFormatted,
          'paid_invoices' := PaidInvoices
        }) ->
    #{ 'invoices_id' => InvoicesId,
       'invoices_description' => InvoicesDescription,
       'invoices_amount' => InvoicesAmount,
       'invoices_date' => InvoicesDate,
       'invoices_paid' => InvoicesPaid,
       'invoices_due_date' => InvoicesDueDate,
       'invoices_currency' => InvoicesCurrency,
       'currency_symbol' => CurrencySymbol,
       'invoices_date_formatted' => InvoicesDateFormatted,
       'paid_invoices' => PaidInvoices
     }.
