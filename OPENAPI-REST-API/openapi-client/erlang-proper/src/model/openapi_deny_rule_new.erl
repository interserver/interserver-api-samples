-module(openapi_deny_rule_new).

-include("openapi.hrl").

-export([openapi_deny_rule_new/0]).

-export([openapi_deny_rule_new/1]).

-export_type([openapi_deny_rule_new/0]).

-type openapi_deny_rule_new() ::
  [ {'type', binary() }
  | {'data', binary() }
  | {'user', binary() }
  ].


openapi_deny_rule_new() ->
    openapi_deny_rule_new([]).

openapi_deny_rule_new(Fields) ->
  Default = [ {'type', elements([<<"domain">>, <<"email">>, <<"startswith">>, <<"destination">>]) }
            , {'data', binary() }
            , {'user', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

