-module(interserver_api_create_filter).

-export([encode/1]).

-export_type([interserver_api_create_filter/0]).

-type interserver_api_create_filter() ::
    #{ 'filter_type' := binary(),
       'port' := integer()
     }.

encode(#{ 'filter_type' := FilterType,
          'port' := Port
        }) ->
    #{ 'filter_type' => FilterType,
       'port' => Port
     }.
