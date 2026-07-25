-module(openapi_account_info_post).

-include("openapi.hrl").

-export([openapi_account_info_post/0]).

-export([openapi_account_info_post/1]).

-export_type([openapi_account_info_post/0]).

-type openapi_account_info_post() ::
  [ {'name', binary() }
  | {'address', binary() }
  | {'city', binary() }
  | {'state', binary() }
  | {'zip', binary() }
  | {'country', binary() }
  | {'phone', binary() }
  | {'company', binary() }
  | {'address2', binary() }
  | {'locale', binary() }
  | {'email_invoices', binary() }
  | {'email_abuse', binary() }
  | {'disable_reset', boolean() }
  | {'disable_reinstall', boolean() }
  | {'disable_server_notifications', boolean() }
  | {'disable_email_notifications', boolean() }
  | {'gstin', binary() }
  ].


openapi_account_info_post() ->
    openapi_account_info_post([]).

openapi_account_info_post(Fields) ->
  Default = [ {'name', binary() }
            , {'address', binary() }
            , {'city', binary() }
            , {'state', binary() }
            , {'zip', binary() }
            , {'country', binary() }
            , {'phone', binary() }
            , {'company', binary() }
            , {'address2', binary() }
            , {'locale', binary() }
            , {'email_invoices', binary() }
            , {'email_abuse', binary() }
            , {'disable_reset', boolean() }
            , {'disable_reinstall', boolean() }
            , {'disable_server_notifications', boolean() }
            , {'disable_email_notifications', boolean() }
            , {'gstin', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

