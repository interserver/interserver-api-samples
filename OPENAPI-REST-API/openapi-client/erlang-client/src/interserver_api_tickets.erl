-module(interserver_api_tickets).

-export([encode/1]).

-export_type([interserver_api_tickets/0]).

-type interserver_api_tickets() ::
    #{ 'ima' := binary(),
       'custid' := binary(),
       'view' := binary(),
       'currentPage' := integer(),
       'limit' := integer(),
       'sortcol' := integer(),
       'sortdir' := integer(),
       'rowsOffset' := integer(),
       'tickets' := list(),
       'pages' := integer(),
       'rowsTotal' := integer(),
       'inboxCount' := integer(),
       'countArray' := interserver_api_tickets_count_array:interserver_api_tickets_count_array(),
       'viewText' := binary()
     }.

encode(#{ 'ima' := Ima,
          'custid' := Custid,
          'view' := View,
          'currentPage' := CurrentPage,
          'limit' := Limit,
          'sortcol' := Sortcol,
          'sortdir' := Sortdir,
          'rowsOffset' := RowsOffset,
          'tickets' := Tickets,
          'pages' := Pages,
          'rowsTotal' := RowsTotal,
          'inboxCount' := InboxCount,
          'countArray' := CountArray,
          'viewText' := ViewText
        }) ->
    #{ 'ima' => Ima,
       'custid' => Custid,
       'view' => View,
       'currentPage' => CurrentPage,
       'limit' => Limit,
       'sortcol' => Sortcol,
       'sortdir' => Sortdir,
       'rowsOffset' => RowsOffset,
       'tickets' => Tickets,
       'pages' => Pages,
       'rowsTotal' => RowsTotal,
       'inboxCount' => InboxCount,
       'countArray' => CountArray,
       'viewText' => ViewText
     }.
