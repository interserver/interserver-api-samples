-module(openapi_vps).

-include("openapi.hrl").

-export([openapi_vps/0]).

-export([openapi_vps/1]).

-export_type([openapi_vps/0]).

-type openapi_vps() ::
  [ {'serviceInfo', openapi_vps_service_info:openapi_vps_service_info() }
  | {'client_links', list(openapi_vps_client_link:openapi_vps_client_link()) }
  | {'billingDetails', openapi_vps_billing_details:openapi_vps_billing_details() }
  | {'custCurrency', binary() }
  | {'custCurrencySymbol', binary() }
  | {'serviceMaster', openapi_vps_service_master:openapi_vps_service_master() }
  | {'package', binary() }
  | {'serviceExtra', openapi_vps_service_extra:openapi_vps_service_extra() }
  | {'extraInfoTables', openapi_vps_extra_info_tables:openapi_vps_extra_info_tables() }
  | {'module', binary() }
  | {'token', binary() }
  | {'da_link', integer() }
  | {'sr_link', integer() }
  | {'cp_data', openapi_vps_cp_data:openapi_vps_cp_data() }
  | {'da_data', openapi_vps_da_data:openapi_vps_da_data() }
  | {'plesk12_data', openapi_vps_plesk12_data:openapi_vps_plesk12_data() }
  | {'serviceAddons', openapi_vps_service_addons:openapi_vps_service_addons() }
  | {'os_template', binary() }
  | {'cpu_graph_data', openapi_any_type:openapi_any_type() }
  ].


openapi_vps() ->
    openapi_vps([]).

openapi_vps(Fields) ->
  Default = [ {'serviceInfo', openapi_vps_service_info:openapi_vps_service_info() }
            , {'client_links', list(openapi_vps_client_link:openapi_vps_client_link()) }
            , {'billingDetails', openapi_vps_billing_details:openapi_vps_billing_details() }
            , {'custCurrency', binary() }
            , {'custCurrencySymbol', binary() }
            , {'serviceMaster', openapi_vps_service_master:openapi_vps_service_master() }
            , {'package', binary() }
            , {'serviceExtra', openapi_vps_service_extra:openapi_vps_service_extra() }
            , {'extraInfoTables', openapi_vps_extra_info_tables:openapi_vps_extra_info_tables() }
            , {'module', binary() }
            , {'token', binary() }
            , {'da_link', integer() }
            , {'sr_link', integer() }
            , {'cp_data', openapi_vps_cp_data:openapi_vps_cp_data() }
            , {'da_data', openapi_vps_da_data:openapi_vps_da_data() }
            , {'plesk12_data', openapi_vps_plesk12_data:openapi_vps_plesk12_data() }
            , {'serviceAddons', openapi_vps_service_addons:openapi_vps_service_addons() }
            , {'os_template', binary() }
            , {'cpu_graph_data', openapi_any_type:openapi_any_type() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

