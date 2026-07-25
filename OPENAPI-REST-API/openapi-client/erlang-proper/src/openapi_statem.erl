-module(openapi_statem).

-behaviour(proper_statem).

-include("openapi.hrl").
-include_lib("proper/include/proper_common.hrl").
-include_lib("stdlib/include/assert.hrl").

-compile(export_all).
-compile(nowarn_export_all).

-include("openapi_statem.hrl").

%%==============================================================================
%% The statem's property
%%==============================================================================

prop_main() ->
  setup(),
  ?FORALL( Cmds
         , proper_statem:commands(?MODULE)
         , begin
             cleanup(),
             { History
             , State
             , Result
             } = proper_statem:run_commands(?MODULE, Cmds),
             ?WHENFAIL(
                io:format("History: ~p\nState: ~p\nResult: ~p\nCmds: ~p\n",
                          [ History
                          , State
                          , Result
                          , proper_statem:command_names(Cmds)
                          ]),
                proper:aggregate( proper_statem:command_names(Cmds)
                                , Result =:= ok
                                )
               )
           end
         ).

%%==============================================================================
%% Setup
%%==============================================================================

setup() -> ok.

%%==============================================================================
%% Cleanup
%%==============================================================================

cleanup() -> ok.

%%==============================================================================
%% Initial State
%%==============================================================================

initial_state() -> #{}.

%%==============================================================================
%% add_website
%%==============================================================================

add_website(OpenapiWebsiteOrderPostRequest) ->
  openapi_api:add_website(OpenapiWebsiteOrderPostRequest).

add_website_args(_S) ->
  [openapi_website_order_post_request:openapi_website_order_post_request()].

%%==============================================================================
%% get_new_website
%%==============================================================================

get_new_website() ->
  openapi_api:get_new_website().

get_new_website_args(_S) ->
  [].

%%==============================================================================
%% get_website_buy_ip
%%==============================================================================

get_website_buy_ip(Id) ->
  openapi_api:get_website_buy_ip(Id).

get_website_buy_ip_args(_S) ->
  [integer()].

%%==============================================================================
%% get_website_info
%%==============================================================================

get_website_info(Id) ->
  openapi_api:get_website_info(Id).

get_website_info_args(_S) ->
  [integer()].

%%==============================================================================
%% get_website_invoices
%%==============================================================================

get_website_invoices(Id) ->
  openapi_api:get_website_invoices(Id).

get_website_invoices_args(_S) ->
  [integer()].

%%==============================================================================
%% get_website_list
%%==============================================================================

get_website_list() ->
  openapi_api:get_website_list().

get_website_list_args(_S) ->
  [].

%%==============================================================================
%% get_websites_backups
%%==============================================================================

get_websites_backups(Id) ->
  openapi_api:get_websites_backups(Id).

get_websites_backups_args(_S) ->
  [integer()].

%%==============================================================================
%% get_websites_login
%%==============================================================================

get_websites_login(Id) ->
  openapi_api:get_websites_login(Id).

get_websites_login_args(_S) ->
  [integer()].

%%==============================================================================
%% get_websites_welcome_email
%%==============================================================================

get_websites_welcome_email(Id) ->
  openapi_api:get_websites_welcome_email(Id).

get_websites_welcome_email_args(_S) ->
  [integer()].

%%==============================================================================
%% gett_website_reverse_dns
%%==============================================================================

gett_website_reverse_dns(Id) ->
  openapi_api:gett_website_reverse_dns(Id).

gett_website_reverse_dns_args(_S) ->
  [integer()].

%%==============================================================================
%% post_website_buy_ip
%%==============================================================================

post_website_buy_ip(Id, OpenapiPostWebsiteBuyIpRequest) ->
  openapi_api:post_website_buy_ip(Id, OpenapiPostWebsiteBuyIpRequest).

post_website_buy_ip_args(_S) ->
  [integer(), openapi_post_website_buy_ip_request:openapi_post_website_buy_ip_request()].

%%==============================================================================
%% post_website_migration
%%==============================================================================

post_website_migration(Id, OpenapiPostWebsiteMigrationRequest) ->
  openapi_api:post_website_migration(Id, OpenapiPostWebsiteMigrationRequest).

post_website_migration_args(_S) ->
  [integer(), openapi_post_website_migration_request:openapi_post_website_migration_request()].

%%==============================================================================
%% post_websites_reverse_dns
%%==============================================================================

post_websites_reverse_dns(Id, OpenapiReverseDnsEntries) ->
  openapi_api:post_websites_reverse_dns(Id, OpenapiReverseDnsEntries).

post_websites_reverse_dns_args(_S) ->
  [integer(), openapi_reverse_dns_entries:openapi_reverse_dns_entries()].

%%==============================================================================
%% put_websites
%%==============================================================================

put_websites(OpenapiWebsiteOrderPutRequest) ->
  openapi_api:put_websites(OpenapiWebsiteOrderPutRequest).

put_websites_args(_S) ->
  [openapi_website_order_put_request:openapi_website_order_put_request()].

%%==============================================================================
%% update_website_info
%%==============================================================================

update_website_info(Id) ->
  openapi_api:update_website_info(Id).

update_website_info_args(_S) ->
  [binary()].

%%==============================================================================
%% webhosting_cancel
%%==============================================================================

webhosting_cancel(Id) ->
  openapi_api:webhosting_cancel(Id).

webhosting_cancel_args(_S) ->
  [binary()].

