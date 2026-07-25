-module(interserver_api_login_error_response).

-export([encode/1]).

-export_type([interserver_api_login_error_response/0]).

-type interserver_api_login_error_response() ::
    #{ 'message' => binary(),
       'field' => binary()
     }.

encode(#{ 'message' := Message,
          'field' := Field
        }) ->
    #{ 'message' => Message,
       'field' => Field
     }.
