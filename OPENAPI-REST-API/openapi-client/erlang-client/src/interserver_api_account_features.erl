-module(interserver_api_account_features).

-export([encode/1]).

-export_type([interserver_api_account_features/0]).

-type interserver_api_account_features() ::
    #{ 'disable_reset' => integer(),
       'disable_reinstall' => integer()
     }.

encode(#{ 'disable_reset' := DisableReset,
          'disable_reinstall' := DisableReinstall
        }) ->
    #{ 'disable_reset' => DisableReset,
       'disable_reinstall' => DisableReinstall
     }.
