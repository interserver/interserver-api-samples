-module(interserver_api_billing_payment_method_request).

-export([encode/1]).

-export_type([interserver_api_billing_payment_method_request/0]).

-type interserver_api_billing_payment_method_request() ::
    #{ 'payment_method' => binary(),
       'cc_auto' => binary()
     }.

encode(#{ 'payment_method' := PaymentMethod,
          'cc_auto' := CcAuto
        }) ->
    #{ 'payment_method' => PaymentMethod,
       'cc_auto' => CcAuto
     }.
