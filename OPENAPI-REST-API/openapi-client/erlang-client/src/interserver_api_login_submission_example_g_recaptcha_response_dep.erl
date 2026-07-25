-module(interserver_api_login_submission_example_g_recaptcha_response_dep).

-export([encode/1]).

-export_type([interserver_api_login_submission_example_g_recaptcha_response_dep/0]).

-type interserver_api_login_submission_example_g_recaptcha_response_dep() ::
    #{ 'w' => integer(),
       'n' => integer()
     }.

encode(#{ 'w' := W,
          'n' := N
        }) ->
    #{ 'w' => W,
       'n' => N
     }.
