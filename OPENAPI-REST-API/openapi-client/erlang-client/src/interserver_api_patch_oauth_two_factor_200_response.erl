-module(interserver_api_patch_oauth_two_factor_200_response).

-export([encode/1]).

-export_type([interserver_api_patch_oauth_two_factor_200_response/0]).

-type interserver_api_patch_oauth_two_factor_200_response() ::
    #{ 'login' => boolean()
     }.

encode(#{ 'login' := Login
        }) ->
    #{ 'login' => Login
     }.
