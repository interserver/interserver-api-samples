-module(interserver_api_vps_order_os_names).

-export([encode/1]).

-export_type([interserver_api_vps_order_os_names/0]).

-type interserver_api_vps_order_os_names() ::
    #{ 'opensuse' => binary(),
       'ubuntu' => binary()
     }.

encode(#{ 'opensuse' := Opensuse,
          'ubuntu' := Ubuntu
        }) ->
    #{ 'opensuse' => Opensuse,
       'ubuntu' => Ubuntu
     }.
