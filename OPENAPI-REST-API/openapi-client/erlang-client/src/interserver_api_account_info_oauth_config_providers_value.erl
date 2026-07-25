-module(interserver_api_account_info_oauth_config_providers_value).

-export([encode/1]).

-export_type([interserver_api_account_info_oauth_config_providers_value/0]).

-type interserver_api_account_info_oauth_config_providers_value() ::
    #{ 'enabled' => boolean(),
       'linked' => boolean(),
       'account' => binary(),
       'url' => binary()
     }.

encode(#{ 'enabled' := Enabled,
          'linked' := Linked,
          'account' := Account,
          'url' := Url
        }) ->
    #{ 'enabled' => Enabled,
       'linked' => Linked,
       'account' => Account,
       'url' => Url
     }.
