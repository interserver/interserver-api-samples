-module(interserver_api_get_scrub_ip_details_200_response_billing_details).

-export([encode/1]).

-export_type([interserver_api_get_scrub_ip_details_200_response_billing_details/0]).

-type interserver_api_get_scrub_ip_details_200_response_billing_details() ::
    #{ 'service_last_invoice_date' => binary(),
       'service_payment_status' => binary(),
       'service_frequency' => binary(),
       'next_date' => binary(),
       'service_next_invoice_date' => binary(),
       'service_currency' => binary(),
       'service_currency_symbol' => binary(),
       'service_cost_info' => binary()
     }.

encode(#{ 'service_last_invoice_date' := ServiceLastInvoiceDate,
          'service_payment_status' := ServicePaymentStatus,
          'service_frequency' := ServiceFrequency,
          'next_date' := NextDate,
          'service_next_invoice_date' := ServiceNextInvoiceDate,
          'service_currency' := ServiceCurrency,
          'service_currency_symbol' := ServiceCurrencySymbol,
          'service_cost_info' := ServiceCostInfo
        }) ->
    #{ 'service_last_invoice_date' => ServiceLastInvoiceDate,
       'service_payment_status' => ServicePaymentStatus,
       'service_frequency' => ServiceFrequency,
       'next_date' => NextDate,
       'service_next_invoice_date' => ServiceNextInvoiceDate,
       'service_currency' => ServiceCurrency,
       'service_currency_symbol' => ServiceCurrencySymbol,
       'service_cost_info' => ServiceCostInfo
     }.
