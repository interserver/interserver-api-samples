-module(interserver_api_website_table_row).

-export([encode/1]).

-export_type([interserver_api_website_table_row/0]).

-type interserver_api_website_table_row() ::
    #{ 'desc' => binary(),
       'value' => binary()
     }.

encode(#{ 'desc' := Desc,
          'value' := Value
        }) ->
    #{ 'desc' => Desc,
       'value' => Value
     }.
