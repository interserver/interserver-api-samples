-module(interserver_api_billing_verify_cc_request).

-export([encode/1]).

-export_type([interserver_api_billing_verify_cc_request/0]).

-type interserver_api_billing_verify_cc_request() ::
    #{ 'idx' => integer(),
       'cc_ccv2' => binary(),
       'cc_amount1' => binary(),
       'cc_amount2' => binary(),
       'terms' => boolean()
     }.

encode(#{ 'idx' := Idx,
          'cc_ccv2' := CcCcv2,
          'cc_amount1' := CcAmount1,
          'cc_amount2' := CcAmount2,
          'terms' := Terms
        }) ->
    #{ 'idx' => Idx,
       'cc_ccv2' => CcCcv2,
       'cc_amount1' => CcAmount1,
       'cc_amount2' => CcAmount2,
       'terms' => Terms
     }.
