-module(interserver_api_get_scrub_ip_details_200_response_filter_firewall).

-export([encode/1]).

-export_type([interserver_api_get_scrub_ip_details_200_response_filter_firewall/0]).

-type interserver_api_get_scrub_ip_details_200_response_filter_firewall() ::
    #{ 'rules' => list(),
       'filters' => list(),
       'scrub_enabled' => integer()
     }.

encode(#{ 'rules' := Rules,
          'filters' := Filters,
          'scrub_enabled' := ScrubEnabled
        }) ->
    #{ 'rules' => Rules,
       'filters' => Filters,
       'scrub_enabled' => ScrubEnabled
     }.
