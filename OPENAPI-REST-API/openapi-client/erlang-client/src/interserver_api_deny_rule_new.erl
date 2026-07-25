-module(interserver_api_deny_rule_new).

-export([encode/1]).

-export_type([interserver_api_deny_rule_new/0]).

-type interserver_api_deny_rule_new() ::
    #{ 'user' => binary(),
       'type' := binary(),
       'data' := binary()
     }.

encode(#{ 'user' := User,
          'type' := Type,
          'data' := Data
        }) ->
    #{ 'user' => User,
       'type' => Type,
       'data' => Data
     }.
