-module(interserver_api_quickserver_addons).

-export([encode/1]).

-export_type([interserver_api_quickserver_addons/0]).

-type interserver_api_quickserver_addons() ::
    #{ 'title' => binary(),
       'rows' => list()
     }.

encode(#{ 'title' := Title,
          'rows' := Rows
        }) ->
    #{ 'title' => Title,
       'rows' => Rows
     }.
