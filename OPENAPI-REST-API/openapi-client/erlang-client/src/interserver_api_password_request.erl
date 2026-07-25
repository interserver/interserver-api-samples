-module(interserver_api_password_request).

-export([encode/1]).

-export_type([interserver_api_password_request/0]).

-type interserver_api_password_request() ::
    #{ 'password' := binary()
     }.

encode(#{ 'password' := Password
        }) ->
    #{ 'password' => Password
     }.
