-module(interserver_api_billing_prepay_request).

-export([encode/1]).

-export_type([interserver_api_billing_prepay_request/0]).

-type interserver_api_billing_prepay_request() ::
    #{ 'module' => binary(),
       'amount' => integer(),
       'automatic_use' => binary()
     }.

encode(#{ 'module' := Module,
          'amount' := Amount,
          'automatic_use' := AutomaticUse
        }) ->
    #{ 'module' => Module,
       'amount' => Amount,
       'automatic_use' => AutomaticUse
     }.
