-module(interserver_api_vps_ip_info_row).

-export([encode/1]).

-export_type([interserver_api_vps_ip_info_row/0]).

-type interserver_api_vps_ip_info_row() ::
    #{ 'desc' => binary(),
       'value' => binary()
     }.

encode(#{ 'desc' := Desc,
          'value' := Value
        }) ->
    #{ 'desc' => Desc,
       'value' => Value
     }.
