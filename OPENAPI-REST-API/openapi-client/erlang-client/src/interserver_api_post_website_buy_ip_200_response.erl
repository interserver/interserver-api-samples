-module(interserver_api_post_website_buy_ip_200_response).

-export([encode/1]).

-export_type([interserver_api_post_website_buy_ip_200_response/0]).

-type interserver_api_post_website_buy_ip_200_response() ::
    #{ 'message' => binary(),
       'success' => boolean()
     }.

encode(#{ 'message' := Message,
          'success' := Success
        }) ->
    #{ 'message' => Message,
       'success' => Success
     }.
