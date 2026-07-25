-module(interserver_api_website_billing_details).

-export([encode/1]).

-export_type([interserver_api_website_billing_details/0]).

-type interserver_api_website_billing_details() ::
    #{ 'service_last_invoice_date' => binary(),
       'service_payment_status' => binary(),
       'service_frequency' => binary(),
       'next_date' => binary(),
       'service_next_invoice_date' => binary(),
       'service_currency' => binary(),
       'service_currency_symbol' => binary(),
       'service_coupon' => binary(),
       'service_cost_info' => binary(),
       'service_extra' => maps:map(),
       'service_extra_json' => binary()
     }.

encode(#{ 'service_last_invoice_date' := ServiceLastInvoiceDate,
          'service_payment_status' := ServicePaymentStatus,
          'service_frequency' := ServiceFrequency,
          'next_date' := NextDate,
          'service_next_invoice_date' := ServiceNextInvoiceDate,
          'service_currency' := ServiceCurrency,
          'service_currency_symbol' := ServiceCurrencySymbol,
          'service_coupon' := ServiceCoupon,
          'service_cost_info' := ServiceCostInfo,
          'service_extra' := ServiceExtra,
          'service_extra_json' := ServiceExtraJson
        }) ->
    #{ 'service_last_invoice_date' => ServiceLastInvoiceDate,
       'service_payment_status' => ServicePaymentStatus,
       'service_frequency' => ServiceFrequency,
       'next_date' => NextDate,
       'service_next_invoice_date' => ServiceNextInvoiceDate,
       'service_currency' => ServiceCurrency,
       'service_currency_symbol' => ServiceCurrencySymbol,
       'service_coupon' => ServiceCoupon,
       'service_cost_info' => ServiceCostInfo,
       'service_extra' => ServiceExtra,
       'service_extra_json' => ServiceExtraJson
     }.
