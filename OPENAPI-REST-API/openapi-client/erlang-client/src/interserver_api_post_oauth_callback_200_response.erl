-module(interserver_api_post_oauth_callback_200_response).

-export([encode/1]).

-export_type([interserver_api_post_oauth_callback_200_response/0]).

-type interserver_api_post_oauth_callback_200_response() ::
    #{ 'login' => boolean(),
       'signup' => boolean(),
       'linked' => boolean(),
       'account_id' => integer(),
       'error_code' => binary()
     }.

encode(#{ 'login' := Login,
          'signup' := Signup,
          'linked' := Linked,
          'account_id' := AccountId,
          'error_code' := ErrorCode
        }) ->
    #{ 'login' => Login,
       'signup' => Signup,
       'linked' => Linked,
       'account_id' => AccountId,
       'error_code' => ErrorCode
     }.
