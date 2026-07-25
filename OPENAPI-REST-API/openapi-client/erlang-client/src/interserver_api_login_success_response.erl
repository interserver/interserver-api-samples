-module(interserver_api_login_success_response).

-export([encode/1]).

-export_type([interserver_api_login_success_response/0]).

-type interserver_api_login_success_response() ::
    #{ 'sessionId' => binary(),
       'account_id' => integer(),
       'account_lid' => binary(),
       'ima' => binary(),
       'gravatar' => binary()
     }.

encode(#{ 'sessionId' := SessionId,
          'account_id' := AccountId,
          'account_lid' := AccountLid,
          'ima' := Ima,
          'gravatar' := Gravatar
        }) ->
    #{ 'sessionId' => SessionId,
       'account_id' => AccountId,
       'account_lid' => AccountLid,
       'ima' => Ima,
       'gravatar' => Gravatar
     }.
