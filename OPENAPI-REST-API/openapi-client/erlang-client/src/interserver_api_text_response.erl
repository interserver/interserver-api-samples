-module(interserver_api_text_response).

-export([encode/1]).

-export_type([interserver_api_text_response/0]).

-type interserver_api_text_response() ::
    #{ 'text' => binary(),
       'message' => binary()
     }.

encode(#{ 'text' := Text,
          'message' := Message
        }) ->
    #{ 'text' => Text,
       'message' => Message
     }.
