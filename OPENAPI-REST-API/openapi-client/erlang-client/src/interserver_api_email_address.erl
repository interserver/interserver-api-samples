-module(interserver_api_email_address).

-export([encode/1]).

-export_type([interserver_api_email_address/0]).

-type interserver_api_email_address() ::
    #{ 'email' => binary()
     }.

encode(#{ 'email' := Email
        }) ->
    #{ 'email' => Email
     }.
