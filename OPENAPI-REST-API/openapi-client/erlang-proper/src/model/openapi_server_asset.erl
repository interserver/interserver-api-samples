-module(openapi_server_asset).

-include("openapi.hrl").

-export([openapi_server_asset/0]).

-export([openapi_server_asset/1]).

-export_type([openapi_server_asset/0]).

-type openapi_server_asset() ::
  [ {'id', integer() }
  | {'order_id', binary() }
  | {'hostname', binary() }
  | {'status', binary() }
  | {'primary_ipv4', binary() }
  | {'primary_ipv6', binary() }
  | {'datacenter', binary() }
  | {'type_id', binary() }
  | {'asset_tag', binary() }
  | {'rack', binary() }
  | {'row', binary() }
  | {'col', binary() }
  | {'unit_start', binary() }
  | {'unit_end', binary() }
  | {'unit_sub', binary() }
  | {'ipmi_mac', binary() }
  | {'ipmi_ip', binary() }
  | {'ipmi_working', binary() }
  | {'company', binary() }
  | {'comments', binary() }
  | {'make', binary() }
  | {'model', binary() }
  | {'description', binary() }
  | {'customer_id', binary() }
  | {'external_id', binary() }
  | {'billing_status', binary() }
  | {'overdue', binary() }
  | {'asset_id', binary() }
  | {'asset_name', binary() }
  | {'rack_id', binary() }
  | {'rack_name', binary() }
  | {'rack_location', binary() }
  | {'rack_size', binary() }
  | {'rack_x', binary() }
  | {'rack_y', binary() }
  | {'switchports', list(integer()) }
  | {'vlans', list(binary()) }
  | {'vlans6', list(binary()) }
  | {'lease', openapi_server_lease:openapi_server_lease() }
  | {'mac', binary() }
  | {'ipmi_admin_username', binary() }
  | {'ipmi_admin_password', binary() }
  | {'ipmi_client_username', binary() }
  | {'ipmi_client_password', binary() }
  | {'ipmi_updated', binary() }
  | {'create_timestamp', binary() }
  | {'update_timestamp', binary() }
  | {'comment', binary() }
  ].


openapi_server_asset() ->
    openapi_server_asset([]).

openapi_server_asset(Fields) ->
  Default = [ {'id', integer() }
            , {'order_id', binary() }
            , {'hostname', binary() }
            , {'status', binary() }
            , {'primary_ipv4', binary() }
            , {'primary_ipv6', binary() }
            , {'datacenter', binary() }
            , {'type_id', binary() }
            , {'asset_tag', binary() }
            , {'rack', binary() }
            , {'row', binary() }
            , {'col', binary() }
            , {'unit_start', binary() }
            , {'unit_end', binary() }
            , {'unit_sub', binary() }
            , {'ipmi_mac', binary() }
            , {'ipmi_ip', binary() }
            , {'ipmi_working', binary() }
            , {'company', binary() }
            , {'comments', binary() }
            , {'make', binary() }
            , {'model', binary() }
            , {'description', binary() }
            , {'customer_id', binary() }
            , {'external_id', binary() }
            , {'billing_status', binary() }
            , {'overdue', binary() }
            , {'asset_id', binary() }
            , {'asset_name', binary() }
            , {'rack_id', binary() }
            , {'rack_name', binary() }
            , {'rack_location', binary() }
            , {'rack_size', binary() }
            , {'rack_x', binary() }
            , {'rack_y', binary() }
            , {'switchports', list(integer()) }
            , {'vlans', list(binary()) }
            , {'vlans6', list(binary()) }
            , {'lease', openapi_server_lease:openapi_server_lease() }
            , {'mac', binary() }
            , {'ipmi_admin_username', binary() }
            , {'ipmi_admin_password', binary() }
            , {'ipmi_client_username', binary() }
            , {'ipmi_client_password', binary() }
            , {'ipmi_updated', binary() }
            , {'create_timestamp', binary() }
            , {'update_timestamp', binary() }
            , {'comment', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

