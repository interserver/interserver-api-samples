-module(interserver_api_buy_it_now_server_order_200_response).

-export([encode/1]).

-export_type([interserver_api_buy_it_now_server_order_200_response/0]).

-type interserver_api_buy_it_now_server_order_200_response() ::
    #{ 'bandwidth' => list(),
       'ips' => list(),
       'os' => list(),
       'cp' => list(),
       'raid' => list()
     }.

encode(#{ 'bandwidth' := Bandwidth,
          'ips' := Ips,
          'os' := Os,
          'cp' := Cp,
          'raid' := Raid
        }) ->
    #{ 'bandwidth' => Bandwidth,
       'ips' => Ips,
       'os' => Os,
       'cp' => Cp,
       'raid' => Raid
     }.
