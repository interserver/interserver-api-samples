-module(interserver_api_update_ticket_response_schema).

-export([encode/1]).

-export_type([interserver_api_update_ticket_response_schema/0]).

-type interserver_api_update_ticket_response_schema() ::
    #{ 'success' => boolean(),
       'message' => binary()
     }.

encode(#{ 'success' := Success,
          'message' := Message
        }) ->
    #{ 'success' => Success,
       'message' => Message
     }.
