-module(interserver_api_login_submission_example_g_recaptcha_response).

-export([encode/1]).

-export_type([interserver_api_login_submission_example_g_recaptcha_response/0]).

-type interserver_api_login_submission_example_g_recaptcha_response() ::
    #{ '__v_isShallow' => boolean(),
       'dep' => interserver_api_login_submission_example_g_recaptcha_response_dep:interserver_api_login_submission_example_g_recaptcha_response_dep(),
       '__v_isRef' => boolean(),
       '_rawValue' => binary(),
       '_value' => binary()
     }.

encode(#{ '__v_isShallow' := VIsShallow,
          'dep' := Dep,
          '__v_isRef' := VIsRef,
          '_rawValue' := RawValue,
          '_value' := Value
        }) ->
    #{ '__v_isShallow' => VIsShallow,
       'dep' => Dep,
       '__v_isRef' => VIsRef,
       '_rawValue' => RawValue,
       '_value' => Value
     }.
