-module(openapi_delete_mail_alert_request).

-include("openapi.hrl").

-export([openapi_delete_mail_alert_request/0]).

-export([openapi_delete_mail_alert_request/1]).

-export_type([openapi_delete_mail_alert_request/0]).

-type openapi_delete_mail_alert_request() ::
  [ {'alert_id', integer() }
  ].


openapi_delete_mail_alert_request() ->
    openapi_delete_mail_alert_request([]).

openapi_delete_mail_alert_request(Fields) ->
  Default = [ {'alert_id', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

