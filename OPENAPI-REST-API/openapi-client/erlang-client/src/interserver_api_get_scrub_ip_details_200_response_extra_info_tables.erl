-module(interserver_api_get_scrub_ip_details_200_response_extra_info_tables).

-export([encode/1]).

-export_type([interserver_api_get_scrub_ip_details_200_response_extra_info_tables/0]).

-type interserver_api_get_scrub_ip_details_200_response_extra_info_tables() ::
    #{ 'scrub_ips' => interserver_api_get_scrub_ip_details_200_response_extra_info_tables_scrub_ips:interserver_api_get_scrub_ip_details_200_response_extra_info_tables_scrub_ips()
     }.

encode(#{ 'scrub_ips' := ScrubIps
        }) ->
    #{ 'scrub_ips' => ScrubIps
     }.
