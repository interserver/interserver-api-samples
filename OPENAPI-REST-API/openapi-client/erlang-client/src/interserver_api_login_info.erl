-module(interserver_api_login_info).

-export([encode/1]).

-export_type([interserver_api_login_info/0]).

-type interserver_api_login_info() ::
    #{ 'logo' => binary(),
       'captcha' := binary(),
       'language' => binary(),
       'counts' := interserver_api_login_service_counts:interserver_api_login_service_counts()
     }.

encode(#{ 'logo' := Logo,
          'captcha' := Captcha,
          'language' := Language,
          'counts' := Counts
        }) ->
    #{ 'logo' => Logo,
       'captcha' => Captcha,
       'language' => Language,
       'counts' => Counts
     }.
