-module(interserver_api_account_info_limits_inner).

-export([encode/1]).

-export_type([interserver_api_account_info_limits_inner/0]).

-type interserver_api_account_info_limits_inner() ::
    #{ 'start' => binary(),
       'End_' => binary()
     }.

encode(#{ 'start' := Start,
          'End_' := End
        }) ->
    #{ 'start' => Start,
       'end' => End
     }.
