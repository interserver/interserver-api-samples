-module(interserver_api_get_scrub_ip_details_200_response_extra_info_tables_scrub_ips).

-export([encode/1]).

-export_type([interserver_api_get_scrub_ip_details_200_response_extra_info_tables_scrub_ips/0]).

-type interserver_api_get_scrub_ip_details_200_response_extra_info_tables_scrub_ips() ::
    #{ 'title' => binary(),
       'rows' => list()
     }.

encode(#{ 'title' := Title,
          'rows' := Rows
        }) ->
    #{ 'title' => Title,
       'rows' => Rows
     }.
