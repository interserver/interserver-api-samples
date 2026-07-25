-module(interserver_api_patch_billing_credit_card_verify_request).

-export([encode/1]).

-export_type([interserver_api_patch_billing_credit_card_verify_request/0]).

-type interserver_api_patch_billing_credit_card_verify_request() ::
    #{ 'cc_ccv2' := binary()
     }.

encode(#{ 'cc_ccv2' := CcCcv2
        }) ->
    #{ 'cc_ccv2' => CcCcv2
     }.
