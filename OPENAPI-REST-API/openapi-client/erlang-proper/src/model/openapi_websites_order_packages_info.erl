-module(openapi_websites_order_packages_info).

-include("openapi.hrl").

-export([openapi_websites_order_packages_info/0]).

-export([openapi_websites_order_packages_info/1]).

-export_type([openapi_websites_order_packages_info/0]).

-type openapi_websites_order_packages_info() ::
  [ {'services_id', binary() }
  | {'services_name', binary() }
  | {'services_cost', binary() }
  | {'services_category', binary() }
  | {'services_buyable', binary() }
  | {'services_type', binary() }
  | {'services_module', binary() }
  | {'services_description', binary() }
  | {'services_field1', binary() }
  | {'services_field2', binary() }
  | {'services_html', binary() }
  | {'services_moreinfo_url', binary() }
  | {'services_hidden', binary() }
  ].


openapi_websites_order_packages_info() ->
    openapi_websites_order_packages_info([]).

openapi_websites_order_packages_info(Fields) ->
  Default = [ {'services_id', binary() }
            , {'services_name', binary() }
            , {'services_cost', binary() }
            , {'services_category', binary() }
            , {'services_buyable', binary() }
            , {'services_type', binary() }
            , {'services_module', binary() }
            , {'services_description', binary() }
            , {'services_field1', binary() }
            , {'services_field2', binary() }
            , {'services_html', binary() }
            , {'services_moreinfo_url', binary() }
            , {'services_hidden', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

