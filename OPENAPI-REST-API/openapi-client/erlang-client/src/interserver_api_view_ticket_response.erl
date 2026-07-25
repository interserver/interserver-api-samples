-module(interserver_api_view_ticket_response).

-export([encode/1]).

-export_type([interserver_api_view_ticket_response/0]).

-type interserver_api_view_ticket_response() ::
    #{ 'success' := boolean(),
       'ticket' := interserver_api_ticket_details:interserver_api_ticket_details(),
       'ticket_custom_fields' => interserver_api_ticket_custom_field_details:interserver_api_ticket_custom_field_details(),
       'ticket_posts' => interserver_api_ticket_post_details:interserver_api_ticket_post_details()
     }.

encode(#{ 'success' := Success,
          'ticket' := Ticket,
          'ticket_custom_fields' := TicketCustomFields,
          'ticket_posts' := TicketPosts
        }) ->
    #{ 'success' => Success,
       'ticket' => Ticket,
       'ticket_custom_fields' => TicketCustomFields,
       'ticket_posts' => TicketPosts
     }.
