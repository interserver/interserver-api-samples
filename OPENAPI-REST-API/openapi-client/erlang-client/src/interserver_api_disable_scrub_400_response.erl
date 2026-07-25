-module(interserver_api_disable_scrub_400_response).

-export([encode/1]).

-export_type([interserver_api_disable_scrub_400_response/0]).

-type interserver_api_disable_scrub_400_response() ::
    #{ 'success' := boolean(),
       'text' := binary()
     }.

encode(#{ 'success' := Success,
          'text' := Text
        }) ->
    #{ 'success' => Success,
       'text' => Text
     }.
