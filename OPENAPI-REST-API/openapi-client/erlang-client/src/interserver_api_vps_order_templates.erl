-module(interserver_api_vps_order_templates).

-export([encode/1]).

-export_type([interserver_api_vps_order_templates/0]).

-type interserver_api_vps_order_templates() ::
    #{ 'hyperv' => interserver_api_vps_order_templates_hyperv:interserver_api_vps_order_templates_hyperv()
     }.

encode(#{ 'hyperv' := Hyperv
        }) ->
    #{ 'hyperv' => Hyperv
     }.
