-module(interserver_api_server_ipmi_live_info).

-export([encode/1]).

-export_type([interserver_api_server_ipmi_live_info/0]).

-type interserver_api_server_ipmi_live_info() ::
    #{ 'text' => binary(),
       'public_ip' => binary(),
       'allowed_ip' => binary(),
       'client_username' => binary(),
       'client_password' => binary()
     }.

encode(#{ 'text' := Text,
          'public_ip' := PublicIp,
          'allowed_ip' := AllowedIp,
          'client_username' := ClientUsername,
          'client_password' := ClientPassword
        }) ->
    #{ 'text' => Text,
       'public_ip' => PublicIp,
       'allowed_ip' => AllowedIp,
       'client_username' => ClientUsername,
       'client_password' => ClientPassword
     }.
