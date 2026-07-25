-module(interserver_api_generic_response).

-export([encode/1]).

-export_type([interserver_api_generic_response/0]).

-type interserver_api_generic_response() ::
    #{ 'status' := binary(),
       'text' := binary()
     }.

encode(#{ 'status' := Status,
          'text' := Text
        }) ->
    #{ 'status' => Status,
       'text' => Text
     }.
