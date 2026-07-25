-module(interserver_api_tickets_count_array).

-export([encode/1]).

-export_type([interserver_api_tickets_count_array/0]).

-type interserver_api_tickets_count_array() ::
    #{ 'Open' => integer(),
       'On_Hold' => integer(),
       'Closed' => integer()
     }.

encode(#{ 'Open' := Open,
          'On_Hold' := OnHold,
          'Closed' := Closed
        }) ->
    #{ 'Open' => Open,
       'On Hold' => OnHold,
       'Closed' => Closed
     }.
