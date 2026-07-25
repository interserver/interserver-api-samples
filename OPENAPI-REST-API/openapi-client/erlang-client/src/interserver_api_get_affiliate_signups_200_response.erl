-module(interserver_api_get_affiliate_signups_200_response).

-export([encode/1]).

-export_type([interserver_api_get_affiliate_signups_200_response/0]).

-type interserver_api_get_affiliate_signups_200_response() ::
    #{ 'data' => maps:map()
     }.

encode(#{ 'data' := Data
        }) ->
    #{ 'data' => Data
     }.
