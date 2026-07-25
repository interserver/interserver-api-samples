-module(interserver_api_server_row).

-export([encode/1]).

-export_type([interserver_api_server_row/0]).

-type interserver_api_server_row() ::
    #{ 'server_id' := binary(),
       'account_lid' := binary(),
       'server_hostname' := binary(),
       'server_status' := binary()
     }.

encode(#{ 'server_id' := ServerId,
          'account_lid' := AccountLid,
          'server_hostname' := ServerHostname,
          'server_status' := ServerStatus
        }) ->
    #{ 'server_id' => ServerId,
       'account_lid' => AccountLid,
       'server_hostname' => ServerHostname,
       'server_status' => ServerStatus
     }.
