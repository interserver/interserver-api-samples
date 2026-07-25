-module(openapi_mail_service_info).

-include("openapi.hrl").

-export([openapi_mail_service_info/0]).

-export([openapi_mail_service_info/1]).

-export_type([openapi_mail_service_info/0]).

-type openapi_mail_service_info() ::
  [ {'mail_id', binary() }
  | {'mail_type', binary() }
  | {'mail_currency', binary() }
  | {'mail_order_date', binary() }
  | {'mail_custid', binary() }
  | {'mail_quota', binary() }
  | {'mail_status', binary() }
  | {'mail_invoice', binary() }
  | {'mail_username', binary() }
  | {'mail_ip', binary() }
  | {'mail_coupon', binary() }
  | {'mail_extra', binary() }
  | {'mail_server_status', binary() }
  | {'mail_comment', binary() }
  ].


openapi_mail_service_info() ->
    openapi_mail_service_info([]).

openapi_mail_service_info(Fields) ->
  Default = [ {'mail_id', binary() }
            , {'mail_type', binary() }
            , {'mail_currency', binary() }
            , {'mail_order_date', binary() }
            , {'mail_custid', binary() }
            , {'mail_quota', binary() }
            , {'mail_status', binary() }
            , {'mail_invoice', binary() }
            , {'mail_username', binary() }
            , {'mail_ip', binary() }
            , {'mail_coupon', binary() }
            , {'mail_extra', binary() }
            , {'mail_server_status', binary() }
            , {'mail_comment', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

