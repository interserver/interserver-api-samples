-module(interserver_api_quickserver_extra_info_tables).

-export([encode/1]).

-export_type([interserver_api_quickserver_extra_info_tables/0]).

-type interserver_api_quickserver_extra_info_tables() ::
    #{ 'ip_info' => interserver_api_quickserver_ip_info:interserver_api_quickserver_ip_info(),
       'addons' => interserver_api_quickserver_addons:interserver_api_quickserver_addons()
     }.

encode(#{ 'ip_info' := IpInfo,
          'addons' := Addons
        }) ->
    #{ 'ip_info' => IpInfo,
       'addons' => Addons
     }.
