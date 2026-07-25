-module(interserver_api_reply_ticket_request).

-export([encode/1]).

-export_type([interserver_api_reply_ticket_request/0]).

-type interserver_api_reply_ticket_request() ::
    #{ 'content' => binary()
     }.

encode(#{ 'content' := Content
        }) ->
    #{ 'content' => Content
     }.
