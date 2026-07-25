-module(interserver_api_mail_tutorials_table).

-export([encode/1]).

-export_type([interserver_api_mail_tutorials_table/0]).

-type interserver_api_mail_tutorials_table() ::
    #{ 'title' => binary(),
       'rows' => list()
     }.

encode(#{ 'title' := Title,
          'rows' := Rows
        }) ->
    #{ 'title' => Title,
       'rows' => Rows
     }.
