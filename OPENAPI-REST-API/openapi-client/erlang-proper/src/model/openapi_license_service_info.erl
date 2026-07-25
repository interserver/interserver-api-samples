-module(openapi_license_service_info).

-include("openapi.hrl").

-export([openapi_license_service_info/0]).

-export([openapi_license_service_info/1]).

-export_type([openapi_license_service_info/0]).

-type openapi_license_service_info() ::
  [ {'license_id', binary() }
  | {'license_type', binary() }
  | {'license_currency', binary() }
  | {'license_order_date', datetime() }
  | {'license_custid', binary() }
  | {'license_ip', binary() }
  | {'license_status', binary() }
  | {'license_invoice', binary() }
  | {'license_coupon', binary() }
  | {'license_hostname', binary() }
  | {'license_key', binary() }
  | {'license_extra', binary() }
  ].


openapi_license_service_info() ->
    openapi_license_service_info([]).

openapi_license_service_info(Fields) ->
  Default = [ {'license_id', binary() }
            , {'license_type', binary() }
            , {'license_currency', binary() }
            , {'license_order_date', datetime() }
            , {'license_custid', binary() }
            , {'license_ip', binary() }
            , {'license_status', binary() }
            , {'license_invoice', binary() }
            , {'license_coupon', binary() }
            , {'license_hostname', binary() }
            , {'license_key', binary() }
            , {'license_extra', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

