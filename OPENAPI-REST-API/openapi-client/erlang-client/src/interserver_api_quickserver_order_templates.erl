-module(interserver_api_quickserver_order_templates).

-export([encode/1]).

-export_type([interserver_api_quickserver_order_templates/0]).

-type interserver_api_quickserver_order_templates() ::
    #{ 'Ubuntu' => interserver_api_quickserver_order_templates_ubuntu64:interserver_api_quickserver_order_templates_ubuntu64()
     }.

encode(#{ 'Ubuntu' := Ubuntu
        }) ->
    #{ 'Ubuntu' => Ubuntu
     }.
