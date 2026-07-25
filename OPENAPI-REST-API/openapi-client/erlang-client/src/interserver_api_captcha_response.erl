-module(interserver_api_captcha_response).

-export([encode/1]).

-export_type([interserver_api_captcha_response/0]).

-type interserver_api_captcha_response() ::
    #{ 'captcha' := binary()
     }.

encode(#{ 'captcha' := Captcha
        }) ->
    #{ 'captcha' => Captcha
     }.
