-module(interserver_api_get_oauth_redirect_200_response).

-export([encode/1]).

-export_type([interserver_api_get_oauth_redirect_200_response/0]).

-type interserver_api_get_oauth_redirect_200_response() ::
    #{ 'redirect_url' => binary()
     }.

encode(#{ 'redirect_url' := RedirectUrl
        }) ->
    #{ 'redirect_url' => RedirectUrl
     }.
