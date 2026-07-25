-module(interserver_api_billing_add_cc_request).

-export([encode/1]).

-export_type([interserver_api_billing_add_cc_request/0]).

-type interserver_api_billing_add_cc_request() ::
    #{ 'name' => binary(),
       'address' => binary(),
       'city' => binary(),
       'state' => binary(),
       'country' => binary(),
       'zip' => binary(),
       'cc' => binary(),
       'cc_exp' => binary(),
       'cc_ccv2' => binary()
     }.

encode(#{ 'name' := Name,
          'address' := Address,
          'city' := City,
          'state' := State,
          'country' := Country,
          'zip' := Zip,
          'cc' := Cc,
          'cc_exp' := CcExp,
          'cc_ccv2' := CcCcv2
        }) ->
    #{ 'name' => Name,
       'address' => Address,
       'city' => City,
       'state' => State,
       'country' => Country,
       'zip' => Zip,
       'cc' => Cc,
       'cc_exp' => CcExp,
       'cc_ccv2' => CcCcv2
     }.
