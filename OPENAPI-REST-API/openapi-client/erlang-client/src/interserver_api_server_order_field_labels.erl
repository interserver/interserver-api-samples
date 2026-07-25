-module(interserver_api_server_order_field_labels).

-export([encode/1]).

-export_type([interserver_api_server_order_field_labels/0]).

-type interserver_api_server_order_field_labels() ::
    #{ 'bandwidth' => interserver_api_server_order_field_label:interserver_api_server_order_field_label(),
       'ips' => interserver_api_server_order_field_label:interserver_api_server_order_field_label(),
       'os' => interserver_api_server_order_field_label:interserver_api_server_order_field_label(),
       'cp' => interserver_api_server_order_field_label:interserver_api_server_order_field_label(),
       'raid' => interserver_api_server_order_field_label:interserver_api_server_order_field_label(),
       'memory' => interserver_api_server_order_field_label:interserver_api_server_order_field_label(),
       'hd' => interserver_api_server_order_field_label:interserver_api_server_order_field_label()
     }.

encode(#{ 'bandwidth' := Bandwidth,
          'ips' := Ips,
          'os' := Os,
          'cp' := Cp,
          'raid' := Raid,
          'memory' := Memory,
          'hd' := Hd
        }) ->
    #{ 'bandwidth' => Bandwidth,
       'ips' => Ips,
       'os' => Os,
       'cp' => Cp,
       'raid' => Raid,
       'memory' => Memory,
       'hd' => Hd
     }.
