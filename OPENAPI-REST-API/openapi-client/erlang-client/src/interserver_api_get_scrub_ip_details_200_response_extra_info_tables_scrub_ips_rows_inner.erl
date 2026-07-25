-module(interserver_api_get_scrub_ip_details_200_response_extra_info_tables_scrub_ips_rows_inner).

-export([encode/1]).

-export_type([interserver_api_get_scrub_ip_details_200_response_extra_info_tables_scrub_ips_rows_inner/0]).

-type interserver_api_get_scrub_ip_details_200_response_extra_info_tables_scrub_ips_rows_inner() ::
    #{ 'desc' => binary(),
       'value' => binary()
     }.

encode(#{ 'desc' := Desc,
          'value' := Value
        }) ->
    #{ 'desc' => Desc,
       'value' => Value
     }.
