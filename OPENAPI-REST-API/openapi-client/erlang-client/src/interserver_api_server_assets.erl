-module(interserver_api_server_assets).

-export([encode/1]).

-export_type([interserver_api_server_assets/0]).

-type interserver_api_server_assets() ::
    #{ 'title' => binary(),
       'size' => integer(),
       'type' => binary(),
       'header' => list(),
       'rows' => list()
     }.

encode(#{ 'title' := Title,
          'size' := Size,
          'type' := Type,
          'header' := Header,
          'rows' := Rows
        }) ->
    #{ 'title' => Title,
       'size' => Size,
       'type' => Type,
       'header' => Header,
       'rows' => Rows
     }.
