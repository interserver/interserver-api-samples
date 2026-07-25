-module(interserver_api_website_table).

-export([encode/1]).

-export_type([interserver_api_website_table/0]).

-type interserver_api_website_table() ::
    #{ 'title' => binary(),
       'rows' => list()
     }.

encode(#{ 'title' := Title,
          'rows' := Rows
        }) ->
    #{ 'title' => Title,
       'rows' => Rows
     }.
