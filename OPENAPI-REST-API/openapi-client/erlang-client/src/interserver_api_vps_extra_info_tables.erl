-module(interserver_api_vps_extra_info_tables).

-export([encode/1]).

-export_type([interserver_api_vps_extra_info_tables/0]).

-type interserver_api_vps_extra_info_tables() ::
    #{ 'ip_info' => interserver_api_vps_ip_info:interserver_api_vps_ip_info()
     }.

encode(#{ 'ip_info' := IpInfo
        }) ->
    #{ 'ip_info' => IpInfo
     }.
