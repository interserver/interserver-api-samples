-module(interserver_api_vps_order_templates_hyperv).

-export([encode/1]).

-export_type([interserver_api_vps_order_templates_hyperv/0]).

-type interserver_api_vps_order_templates_hyperv() ::
    #{ 'windows' => interserver_api_vps_order_templates_hyperv_windows:interserver_api_vps_order_templates_hyperv_windows()
     }.

encode(#{ 'windows' := Windows
        }) ->
    #{ 'windows' => Windows
     }.
