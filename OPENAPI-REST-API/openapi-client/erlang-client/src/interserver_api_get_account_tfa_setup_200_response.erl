-module(interserver_api_get_account_tfa_setup_200_response).

-export([encode/1]).

-export_type([interserver_api_get_account_tfa_setup_200_response/0]).

-type interserver_api_get_account_tfa_setup_200_response() ::
    #{ '2fa_google_key' => binary(),
       '2fa_google_split' => binary()
     }.

encode(#{ '2fa_google_key' := 2faGoogleKey,
          '2fa_google_split' := 2faGoogleSplit
        }) ->
    #{ '2fa_google_key' => 2faGoogleKey,
       '2fa_google_split' => 2faGoogleSplit
     }.
