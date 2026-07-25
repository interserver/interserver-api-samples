-module(interserver_api_account_info).

-export([encode/1]).

-export_type([interserver_api_account_info/0]).

-type interserver_api_account_info() ::
    #{ 'custid' => binary(),
       'ima' => binary(),
       'data' => interserver_api_account_info_data:interserver_api_account_info_data(),
       'ip' => binary(),
       'oauthproviders' => interserver_api_account_info_oauthproviders:interserver_api_account_info_oauthproviders(),
       'oauthconfig' => interserver_api_account_info_oauth_config:interserver_api_account_info_oauth_config(),
       'oauthadapters' => list(),
       'limits' => interserver_api_account_info_limits:interserver_api_account_info_limits(),
       'language' => binary(),
       'countryCurrencies' => interserver_api_account_info_country_currencies:interserver_api_account_info_country_currencies(),
       'enableLocales' => boolean(),
       'enableCurrencies' => boolean(),
       'gravatar' => binary()
     }.

encode(#{ 'custid' := Custid,
          'ima' := Ima,
          'data' := Data,
          'ip' := Ip,
          'oauthproviders' := Oauthproviders,
          'oauthconfig' := Oauthconfig,
          'oauthadapters' := Oauthadapters,
          'limits' := Limits,
          'language' := Language,
          'countryCurrencies' := CountryCurrencies,
          'enableLocales' := EnableLocales,
          'enableCurrencies' := EnableCurrencies,
          'gravatar' := Gravatar
        }) ->
    #{ 'custid' => Custid,
       'ima' => Ima,
       'data' => Data,
       'ip' => Ip,
       'oauthproviders' => Oauthproviders,
       'oauthconfig' => Oauthconfig,
       'oauthadapters' => Oauthadapters,
       'limits' => Limits,
       'language' => Language,
       'countryCurrencies' => CountryCurrencies,
       'enableLocales' => EnableLocales,
       'enableCurrencies' => EnableCurrencies,
       'gravatar' => Gravatar
     }.
