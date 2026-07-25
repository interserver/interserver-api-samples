-module(interserver_api_quickserver_order_distro_sel_ubuntu).

-export([encode/1]).

-export_type([interserver_api_quickserver_order_distro_sel_ubuntu/0]).

-type interserver_api_quickserver_order_distro_sel_ubuntu() ::
    #{ 'Ubuntu' => binary()
     }.

encode(#{ 'Ubuntu' := Ubuntu
        }) ->
    #{ 'Ubuntu' => Ubuntu
     }.
