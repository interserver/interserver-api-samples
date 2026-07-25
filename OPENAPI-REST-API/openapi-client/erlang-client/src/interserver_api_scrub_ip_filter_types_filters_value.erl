-module(interserver_api_scrub_ip_filter_types_filters_value).

-export([encode/1]).

-export_type([interserver_api_scrub_ip_filter_types_filters_value/0]).

-type interserver_api_scrub_ip_filter_types_filters_value() ::
    #{ 'name' => binary(),
       'desc' => binary()
     }.

encode(#{ 'name' := Name,
          'desc' := Desc
        }) ->
    #{ 'name' => Name,
       'desc' => Desc
     }.
