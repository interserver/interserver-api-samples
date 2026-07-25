-module(openapi_login_info).

-include("openapi.hrl").

-export([openapi_login_info/0]).

-export([openapi_login_info/1]).

-export_type([openapi_login_info/0]).

-type openapi_login_info() ::
  [ {'captcha', binary() }
  | {'counts', openapi_login_service_counts:openapi_login_service_counts() }
  | {'logo', binary() }
  | {'language', binary() }
  ].


openapi_login_info() ->
    openapi_login_info([]).

openapi_login_info(Fields) ->
  Default = [ {'captcha', binary() }
            , {'counts', openapi_login_service_counts:openapi_login_service_counts() }
            , {'logo', binary() }
            , {'language', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

