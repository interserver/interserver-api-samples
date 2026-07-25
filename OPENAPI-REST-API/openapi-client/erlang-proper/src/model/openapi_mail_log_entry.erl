-module(openapi_mail_log_entry).

-include("openapi.hrl").

-export([openapi_mail_log_entry/0]).

-export([openapi_mail_log_entry/1]).

-export_type([openapi_mail_log_entry/0]).

-type openapi_mail_log_entry() ::
  [ {'_id', integer() }
  | {'id', binary() }
  | {'from', binary() }
  | {'to', binary() }
  | {'created', binary() }
  | {'time', integer() }
  | {'user', binary() }
  | {'transtype', binary() }
  | {'origin', binary() }
  | {'interface', binary() }
  | {'subject', binary() }
  | {'messageId', binary() }
  | {'sendingZone', binary() }
  | {'bodySize', integer() }
  | {'seq', integer() }
  | {'delivered', integer() }
  | {'code', integer() }
  | {'recipient', binary() }
  | {'response', binary() }
  | {'domain', binary() }
  | {'locked', integer() }
  | {'lockTime', binary() }
  | {'assigned', binary() }
  | {'queued', binary() }
  | {'mxHostname', binary() }
  ].


openapi_mail_log_entry() ->
    openapi_mail_log_entry([]).

openapi_mail_log_entry(Fields) ->
  Default = [ {'_id', integer() }
            , {'id', binary() }
            , {'from', binary() }
            , {'to', binary() }
            , {'created', binary() }
            , {'time', integer() }
            , {'user', binary() }
            , {'transtype', binary() }
            , {'origin', binary() }
            , {'interface', binary() }
            , {'subject', binary() }
            , {'messageId', binary() }
            , {'sendingZone', binary() }
            , {'bodySize', integer() }
            , {'seq', integer() }
            , {'delivered', integer() }
            , {'code', integer() }
            , {'recipient', binary() }
            , {'response', binary() }
            , {'domain', binary() }
            , {'locked', integer() }
            , {'lockTime', binary() }
            , {'assigned', binary() }
            , {'queued', binary() }
            , {'mxHostname', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

