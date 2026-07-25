-module(openapi_ticket_new_response).

-include("openapi.hrl").

-export([openapi_ticket_new_response/0]).

-export([openapi_ticket_new_response/1]).

-export_type([openapi_ticket_new_response/0]).

-type openapi_ticket_new_response() ::
  [ {'text', binary() }
  | {'success', boolean() }
  | {'ticket_id', integer() }
  ].


openapi_ticket_new_response() ->
    openapi_ticket_new_response([]).

openapi_ticket_new_response(Fields) ->
  Default = [ {'text', binary() }
            , {'success', boolean() }
            , {'ticket_id', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

