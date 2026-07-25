-module(interserver_api_domain_search_response).

-export([encode/1]).

-export_type([interserver_api_domain_search_response/0]).

-type interserver_api_domain_search_response() ::
    #{ 'success' => boolean(),
       'response_text' => binary(),
       'response_time' => binary(),
       'lookup' => list(),
       'suggest' => list(),
       'tlds' => list()
     }.

encode(#{ 'success' := Success,
          'response_text' := ResponseText,
          'response_time' := ResponseTime,
          'lookup' := Lookup,
          'suggest' := Suggest,
          'tlds' := Tlds
        }) ->
    #{ 'success' => Success,
       'response_text' => ResponseText,
       'response_time' => ResponseTime,
       'lookup' => Lookup,
       'suggest' => Suggest,
       'tlds' => Tlds
     }.
