-module(interserver_api_ticket_new_response).

-export([encode/1]).

-export_type([interserver_api_ticket_new_response/0]).

-type interserver_api_ticket_new_response() ::
    #{ 'ticket_id' => integer(),
       'text' := binary(),
       'success' := boolean()
     }.

encode(#{ 'ticket_id' := TicketId,
          'text' := Text,
          'success' := Success
        }) ->
    #{ 'ticket_id' => TicketId,
       'text' => Text,
       'success' => Success
     }.
