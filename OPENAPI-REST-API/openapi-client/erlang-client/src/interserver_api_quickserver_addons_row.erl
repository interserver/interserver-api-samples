-module(interserver_api_quickserver_addons_row).

-export([encode/1]).

-export_type([interserver_api_quickserver_addons_row/0]).

-type interserver_api_quickserver_addons_row() ::
    #{ 'desc' => binary(),
       'value' => binary()
     }.

encode(#{ 'desc' := Desc,
          'value' := Value
        }) ->
    #{ 'desc' => Desc,
       'value' => Value
     }.
