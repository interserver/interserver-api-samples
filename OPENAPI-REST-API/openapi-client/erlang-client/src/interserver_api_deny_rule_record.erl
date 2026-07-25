-module(interserver_api_deny_rule_record).

-export([encode/1]).

-export_type([interserver_api_deny_rule_record/0]).

-type interserver_api_deny_rule_record() ::
    #{ 'type' := binary(),
       'data' := binary(),
       'id' := integer(),
       'created' := binary(),
       'user' => binary()
     }.

encode(#{ 'type' := Type,
          'data' := Data,
          'id' := Id,
          'created' := Created,
          'user' := User
        }) ->
    #{ 'type' => Type,
       'data' => Data,
       'id' => Id,
       'created' => Created,
       'user' => User
     }.
