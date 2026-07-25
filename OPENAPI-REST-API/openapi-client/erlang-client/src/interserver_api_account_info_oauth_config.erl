-module(interserver_api_account_info_oauth_config).

-export([encode/1]).

-export_type([interserver_api_account_info_oauth_config/0]).

-type interserver_api_account_info_oauth_config() ::
    #{ 'callback' := binary(),
       'providers' := interserver_api_account_info_oauth_config_providers:interserver_api_account_info_oauth_config_providers()
     }.

encode(#{ 'callback' := Callback,
          'providers' := Providers
        }) ->
    #{ 'callback' => Callback,
       'providers' => Providers
     }.
