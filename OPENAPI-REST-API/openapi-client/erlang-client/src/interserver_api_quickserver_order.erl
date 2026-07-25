-module(interserver_api_quickserver_order).

-export([encode/1]).

-export_type([interserver_api_quickserver_order/0]).

-type interserver_api_quickserver_order() ::
    #{ 'qs_id' => binary(),
       'server_details' => interserver_api_quickserver_order_server_details:interserver_api_quickserver_order_server_details(),
       'templates' => interserver_api_quickserver_order_templates:interserver_api_quickserver_order_templates(),
       'version' => interserver_api_quickserver_order_version:interserver_api_quickserver_order_version(),
       'distro_sel' => interserver_api_quickserver_order_distro_sel:interserver_api_quickserver_order_distro_sel()
     }.

encode(#{ 'qs_id' := QsId,
          'server_details' := ServerDetails,
          'templates' := Templates,
          'version' := Version,
          'distro_sel' := DistroSel
        }) ->
    #{ 'qs_id' => QsId,
       'server_details' => ServerDetails,
       'templates' => Templates,
       'version' => Version,
       'distro_sel' => DistroSel
     }.
