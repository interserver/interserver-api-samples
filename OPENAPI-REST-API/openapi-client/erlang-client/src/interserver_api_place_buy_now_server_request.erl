-module(interserver_api_place_buy_now_server_request).

-export([encode/1]).

-export_type([interserver_api_place_buy_now_server_request/0]).

-type interserver_api_place_buy_now_server_request() ::
    #{ 'server_id' => integer(),
       'server_hostname' => binary(),
       'server_root_password' => binary()
     }.

encode(#{ 'server_id' := ServerId,
          'server_hostname' := ServerHostname,
          'server_root_password' := ServerRootPassword
        }) ->
    #{ 'server_id' => ServerId,
       'server_hostname' => ServerHostname,
       'server_root_password' => ServerRootPassword
     }.
