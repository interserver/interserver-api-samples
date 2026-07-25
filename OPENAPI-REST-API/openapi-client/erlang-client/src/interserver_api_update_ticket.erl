-module(interserver_api_update_ticket).

-export([encode/1]).

-export_type([interserver_api_update_ticket/0]).

-type interserver_api_update_ticket() ::
    #{ 'ip' => binary(),
       'ip_address' => binary(),
       'customer_server_access' => binary(),
       'root_password' => binary(),
       'sudo_username' => binary(),
       'sudo_password' => binary(),
       'port' => integer()
     }.

encode(#{ 'ip' := Ip,
          'ip_address' := IpAddress,
          'customer_server_access' := CustomerServerAccess,
          'root_password' := RootPassword,
          'sudo_username' := SudoUsername,
          'sudo_password' := SudoPassword,
          'port' := Port
        }) ->
    #{ 'ip' => Ip,
       'ip_address' => IpAddress,
       'customer_server_access' => CustomerServerAccess,
       'root_password' => RootPassword,
       'sudo_username' => SudoUsername,
       'sudo_password' => SudoPassword,
       'port' => Port
     }.
