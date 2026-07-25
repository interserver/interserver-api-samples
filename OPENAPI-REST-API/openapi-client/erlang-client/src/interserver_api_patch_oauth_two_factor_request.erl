-module(interserver_api_patch_oauth_two_factor_request).

-export([encode/1]).

-export_type([interserver_api_patch_oauth_two_factor_request/0]).

-type interserver_api_patch_oauth_two_factor_request() ::
    #{ 'account_id' := integer(),
       'code' := binary()
     }.

encode(#{ 'account_id' := AccountId,
          'code' := Code
        }) ->
    #{ 'account_id' => AccountId,
       'code' => Code
     }.
