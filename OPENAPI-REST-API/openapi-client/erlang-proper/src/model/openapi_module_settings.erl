-module(openapi_module_settings).

-include("openapi.hrl").

-export([openapi_module_settings/0]).

-export([openapi_module_settings/1]).

-export_type([openapi_module_settings/0]).

-type openapi_module_settings() ::
  [ {'SERVICE_ID_OFFSET', integer() }
  | {'USE_REPEAT_INVOICE', boolean() }
  | {'USE_PACKAGES', boolean() }
  | {'BILLING_DAYS_OFFSET', integer() }
  | {'IMGNAME', binary() }
  | {'REPEAT_BILLING_METHOD', integer() }
  | {'DELETE_PENDING_DAYS', integer() }
  | {'SUSPEND_DAYS', integer() }
  | {'SUSPEND_WARNING_DAYS', integer() }
  | {'TITLE', binary() }
  | {'MENUNAME', binary() }
  | {'EMAIL_FROM', binary() }
  | {'TBLNAME', binary() }
  | {'TABLE', binary() }
  | {'TITLE_FIELD', binary() }
  | {'PREFIX', binary() }
  | {'TITLE_FIELD2', binary() }
  | {'TITLE_FIELD3', binary() }
  ].


openapi_module_settings() ->
    openapi_module_settings([]).

openapi_module_settings(Fields) ->
  Default = [ {'SERVICE_ID_OFFSET', integer() }
            , {'USE_REPEAT_INVOICE', boolean() }
            , {'USE_PACKAGES', boolean() }
            , {'BILLING_DAYS_OFFSET', integer() }
            , {'IMGNAME', binary() }
            , {'REPEAT_BILLING_METHOD', integer() }
            , {'DELETE_PENDING_DAYS', integer() }
            , {'SUSPEND_DAYS', integer() }
            , {'SUSPEND_WARNING_DAYS', integer() }
            , {'TITLE', binary() }
            , {'MENUNAME', binary() }
            , {'EMAIL_FROM', binary() }
            , {'TBLNAME', binary() }
            , {'TABLE', binary() }
            , {'TITLE_FIELD', binary() }
            , {'PREFIX', binary() }
            , {'TITLE_FIELD2', binary() }
            , {'TITLE_FIELD3', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

