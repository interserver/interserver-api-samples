-module(interserver_api_server_order_post_request).

-export([encode/1]).

-export_type([interserver_api_server_order_post_request/0]).

-type interserver_api_server_order_post_request() ::
    #{ 'cpu' := integer(),
       'hd' := interserver_api_server_order_post_request_hd:interserver_api_server_order_post_request_hd(),
       'memory' := integer(),
       'bandwidth' := integer(),
       'ips' := integer(),
       'os' := integer(),
       'cp' := integer(),
       'raid' := integer(),
       'region' := integer(),
       'servername' := binary(),
       'rootpass' := binary(),
       'tos' := boolean(),
       'comment' => binary()
     }.

encode(#{ 'cpu' := Cpu,
          'hd' := Hd,
          'memory' := Memory,
          'bandwidth' := Bandwidth,
          'ips' := Ips,
          'os' := Os,
          'cp' := Cp,
          'raid' := Raid,
          'region' := Region,
          'servername' := Servername,
          'rootpass' := Rootpass,
          'tos' := Tos,
          'comment' := Comment
        }) ->
    #{ 'cpu' => Cpu,
       'hd' => Hd,
       'memory' => Memory,
       'bandwidth' => Bandwidth,
       'ips' => Ips,
       'os' => Os,
       'cp' => Cp,
       'raid' => Raid,
       'region' => Region,
       'servername' => Servername,
       'rootpass' => Rootpass,
       'tos' => Tos,
       'comment' => Comment
     }.
