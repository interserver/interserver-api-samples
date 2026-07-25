-module(interserver_api_servers_buy_now_error).

-export([encode/1]).

-export_type([interserver_api_servers_buy_now_error/0]).

-type interserver_api_servers_buy_now_error() ::
    #{ 'success' => boolean(),
       'text' => binary(),
       'errors' => list()
     }.

encode(#{ 'success' := Success,
          'text' := Text,
          'errors' := Errors
        }) ->
    #{ 'success' => Success,
       'text' => Text,
       'errors' => Errors
     }.
