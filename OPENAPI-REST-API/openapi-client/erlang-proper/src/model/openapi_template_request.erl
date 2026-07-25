-module(openapi_template_request).

-include("openapi.hrl").

-export([openapi_template_request/0]).

-export([openapi_template_request/1]).

-export_type([openapi_template_request/0]).

-type openapi_template_request() ::
  [ {'template', binary() }
  | {'localPassword', binary() }
  | {'password', binary() }
  ].


openapi_template_request() ->
    openapi_template_request([]).

openapi_template_request(Fields) ->
  Default = [ {'template', binary() }
            , {'localPassword', binary() }
            , {'password', binary(6) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

