-module(interserver_api_deny_rule_record).

-export([encode/1]).

-export_type([interserver_api_deny_rule_record/0]).

-type interserver_api_deny_rule_record() ::
    #{ 'user' => binary(),
       'type' := binary(),
       'data' := binary(),
       'id' := integer(),
       'created' := binary()
     }.

encode(#{ 'user' := User,
          'type' := Type,
          'data' := Data,
          'id' := Id,
          'created' := Created
        }) ->
    #{ 'user' => User,
       'type' => Type,
       'data' => Data,
       'id' => Id,
       'created' => Created
     }.
