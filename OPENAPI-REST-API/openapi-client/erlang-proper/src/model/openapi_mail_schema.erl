-module(openapi_mail_schema).

-include("openapi.hrl").

-export([openapi_mail_schema/0]).

-export([openapi_mail_schema/1]).

-export_type([openapi_mail_schema/0]).

-type openapi_mail_schema() ::
  [ {'serviceInfo', openapi_mail_service_info:openapi_mail_service_info() }
  | {'client_links', list(openapi_mail_client_link:openapi_mail_client_link()) }
  | {'billingDetails', openapi_mail_billing_details:openapi_mail_billing_details() }
  | {'custCurrency', binary() }
  | {'custCurrencySymbol', binary() }
  | {'package', binary() }
  | {'extraInfoTables', openapi_mail_schema_extra_info_tables:openapi_mail_schema_extra_info_tables() }
  | {'serviceType', openapi_mail_service_type:openapi_mail_service_type() }
  | {'usage_count', binary() }
  | {'serviceExtra', list(binary()) }
  ].


openapi_mail_schema() ->
    openapi_mail_schema([]).

openapi_mail_schema(Fields) ->
  Default = [ {'serviceInfo', openapi_mail_service_info:openapi_mail_service_info() }
            , {'client_links', list(openapi_mail_client_link:openapi_mail_client_link()) }
            , {'billingDetails', openapi_mail_billing_details:openapi_mail_billing_details() }
            , {'custCurrency', binary() }
            , {'custCurrencySymbol', binary() }
            , {'package', binary() }
            , {'extraInfoTables', openapi_mail_schema_extra_info_tables:openapi_mail_schema_extra_info_tables() }
            , {'serviceType', openapi_mail_service_type:openapi_mail_service_type() }
            , {'usage_count', binary() }
            , {'serviceExtra', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

