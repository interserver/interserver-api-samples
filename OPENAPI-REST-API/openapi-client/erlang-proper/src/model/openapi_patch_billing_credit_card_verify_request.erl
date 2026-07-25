-module(openapi_patch_billing_credit_card_verify_request).

-include("openapi.hrl").

-export([openapi_patch_billing_credit_card_verify_request/0]).

-export([openapi_patch_billing_credit_card_verify_request/1]).

-export_type([openapi_patch_billing_credit_card_verify_request/0]).

-type openapi_patch_billing_credit_card_verify_request() ::
  [ {'cc_ccv2', binary() }
  ].


openapi_patch_billing_credit_card_verify_request() ->
    openapi_patch_billing_credit_card_verify_request([]).

openapi_patch_billing_credit_card_verify_request(Fields) ->
  Default = [ {'cc_ccv2', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

