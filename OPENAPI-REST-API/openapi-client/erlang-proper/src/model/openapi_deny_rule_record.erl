-module(openapi_deny_rule_record).

-include("openapi.hrl").

-export([openapi_deny_rule_record/0]).

-export([openapi_deny_rule_record/1]).

-export_type([openapi_deny_rule_record/0]).

-type openapi_deny_rule_record() ::
  [ {'type', binary() }
  | {'data', binary() }
  | {'id', integer() }
  | {'created', binary() }
  | {'user', binary() }
  ].


openapi_deny_rule_record() ->
    openapi_deny_rule_record([]).

openapi_deny_rule_record(Fields) ->
  Default = [ {'type', elements([<<"domain">>, <<"email">>, <<"startswith">>, <<"destination">>]) }
            , {'data', binary() }
            , {'id', integer() }
            , {'created', binary() }
            , {'user', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

