-module(interserver_api_ticket_custom_field_details).

-export([encode/1]).

-export_type([interserver_api_ticket_custom_field_details/0]).

-type interserver_api_ticket_custom_field_details() ::
    #{ 'Customer_Server_Access' => binary(),
       'Ip_Address' => binary(),
       'Root_Password' => binary(),
       'Sudo_User' => binary(),
       'Sudo_Password' => integer(),
       'Port' => integer()
     }.

encode(#{ 'Customer_Server_Access' := CustomerServerAccess,
          'Ip_Address' := IpAddress,
          'Root_Password' := RootPassword,
          'Sudo_User' := SudoUser,
          'Sudo_Password' := SudoPassword,
          'Port' := Port
        }) ->
    #{ 'Customer Server Access' => CustomerServerAccess,
       'Ip Address' => IpAddress,
       'Root Password' => RootPassword,
       'Sudo User' => SudoUser,
       'Sudo Password' => SudoPassword,
       'Port' => Port
     }.
