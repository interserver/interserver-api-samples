-module(interserver_api_account_info_data_extra).

-export([encode/1]).

-export_type([interserver_api_account_info_data_extra/0]).

-type interserver_api_account_info_data_extra() ::
    #{ 'private_whois' => binary()
     }.

encode(#{ 'private_whois' := PrivateWhois
        }) ->
    #{ 'private_whois' => PrivateWhois
     }.
