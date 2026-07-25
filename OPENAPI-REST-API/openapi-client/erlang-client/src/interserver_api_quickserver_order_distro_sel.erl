-module(interserver_api_quickserver_order_distro_sel).

-export([encode/1]).

-export_type([interserver_api_quickserver_order_distro_sel/0]).

-type interserver_api_quickserver_order_distro_sel() ::
    #{ 'Ubuntu' => interserver_api_quickserver_order_distro_sel_ubuntu:interserver_api_quickserver_order_distro_sel_ubuntu()
     }.

encode(#{ 'Ubuntu' := Ubuntu
        }) ->
    #{ 'Ubuntu' => Ubuntu
     }.
