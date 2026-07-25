-module(interserver_api_ticket_details).

-export([encode/1]).

-export_type([interserver_api_ticket_details/0]).

-type interserver_api_ticket_details() ::
    #{ 'ticketid' => integer(),
       'ticketmaskid' => binary(),
       'department' => binary(),
       'status' => binary(),
       'priority' => binary(),
       'subject' => binary(),
       'created_on' => binary(),
       'updated_on' => binary()
     }.

encode(#{ 'ticketid' := Ticketid,
          'ticketmaskid' := Ticketmaskid,
          'department' := Department,
          'status' := Status,
          'priority' := Priority,
          'subject' := Subject,
          'created_on' := CreatedOn,
          'updated_on' := UpdatedOn
        }) ->
    #{ 'ticketid' => Ticketid,
       'ticketmaskid' => Ticketmaskid,
       'department' => Department,
       'status' => Status,
       'priority' => Priority,
       'subject' => Subject,
       'created_on' => CreatedOn,
       'updated_on' => UpdatedOn
     }.
