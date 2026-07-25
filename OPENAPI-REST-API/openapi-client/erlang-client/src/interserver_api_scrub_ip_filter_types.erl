-module(interserver_api_scrub_ip_filter_types).

-export([encode/1]).

-export_type([interserver_api_scrub_ip_filter_types/0]).

-type interserver_api_scrub_ip_filter_types() ::
    #{ 'success' => boolean(),
       'filters' => maps:map()
     }.

encode(#{ 'success' := Success,
          'filters' := Filters
        }) ->
    #{ 'success' => Success,
       'filters' => Filters
     }.
