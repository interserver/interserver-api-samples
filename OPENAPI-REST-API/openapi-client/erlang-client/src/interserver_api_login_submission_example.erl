-module(interserver_api_login_submission_example).

-export([encode/1]).

-export_type([interserver_api_login_submission_example/0]).

-type interserver_api_login_submission_example() ::
    #{ 'login' := binary(),
       'passwd' := binary(),
       'remember' => binary(),
       'g_recaptcha_response' => interserver_api_login_submission_example_g_recaptcha_response:interserver_api_login_submission_example_g_recaptcha_response(),
       'tfa' => binary()
     }.

encode(#{ 'login' := Login,
          'passwd' := Passwd,
          'remember' := Remember,
          'g_recaptcha_response' := GRecaptchaResponse,
          'tfa' := Tfa
        }) ->
    #{ 'login' => Login,
       'passwd' => Passwd,
       'remember' => Remember,
       'g-recaptcha-response' => GRecaptchaResponse,
       'tfa' => Tfa
     }.
