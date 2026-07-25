-module(interserver_api_get_scrub_ip_details_200_response_filter_firewall_filters_inner).

-export([encode/1]).

-export_type([interserver_api_get_scrub_ip_details_200_response_filter_firewall_filters_inner/0]).

-type interserver_api_get_scrub_ip_details_200_response_filter_firewall_filters_inner() ::
    #{ 'daddr' => binary(),
       'dest' => binary(),
       'filter_name' => binary(),
       'destination_ip' => binary(),
       'filter' => binary()
     }.

encode(#{ 'daddr' := Daddr,
          'dest' := Dest,
          'filter_name' := FilterName,
          'destination_ip' := DestinationIp,
          'filter' := Filter
        }) ->
    #{ 'daddr' => Daddr,
       'dest' => Dest,
       'filter_name' => FilterName,
       'destination_ip' => DestinationIp,
       'filter' => Filter
     }.
