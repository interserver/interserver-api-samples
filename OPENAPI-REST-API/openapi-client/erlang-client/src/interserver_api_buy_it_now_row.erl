-module(interserver_api_buy_it_now_row).

-export([encode/1]).

-export_type([interserver_api_buy_it_now_row/0]).

-type interserver_api_buy_it_now_row() ::
    #{ 'server_id' => binary(),
       'cpu' => list(),
       'memory' => binary(),
       'disk' => maps:map(),
       'bandwidth' => binary(),
       'ips' => binary(),
       'location' => binary(),
       'price' => integer()
     }.

encode(#{ 'server_id' := ServerId,
          'cpu' := Cpu,
          'memory' := Memory,
          'disk' := Disk,
          'bandwidth' := Bandwidth,
          'ips' := Ips,
          'location' := Location,
          'price' := Price
        }) ->
    #{ 'server_id' => ServerId,
       'cpu' => Cpu,
       'memory' => Memory,
       'disk' => Disk,
       'bandwidth' => Bandwidth,
       'ips' => Ips,
       'location' => Location,
       'price' => Price
     }.
