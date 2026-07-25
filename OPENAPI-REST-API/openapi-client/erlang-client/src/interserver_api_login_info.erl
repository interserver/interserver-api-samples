-module(interserver_api_login_info).

-export([encode/1]).

-export_type([interserver_api_login_info/0]).

-type interserver_api_login_info() ::
    #{ 'captcha' := binary(),
       'counts' := interserver_api_login_service_counts:interserver_api_login_service_counts(),
       'logo' => binary(),
       'language' => binary()
     }.

encode(#{ 'captcha' := Captcha,
          'counts' := Counts,
          'logo' := Logo,
          'language' := Language
        }) ->
    #{ 'captcha' => Captcha,
       'counts' => Counts,
       'logo' => Logo,
       'language' => Language
     }.
