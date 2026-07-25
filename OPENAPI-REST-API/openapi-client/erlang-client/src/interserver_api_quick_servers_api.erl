-module(interserver_api_quick_servers_api).

-export([add_qs/2, add_qs/3,
         delete_qs_backup/3, delete_qs_backup/4,
         do_qs_block_smtp/2, do_qs_block_smtp/3,
         do_qs_disable_cd/2, do_qs_disable_cd/3,
         do_qs_disable_quota/2, do_qs_disable_quota/3,
         do_qs_eject_cd/2, do_qs_eject_cd/3,
         do_qs_enable_quota/2, do_qs_enable_quota/3,
         do_qs_restart/2, do_qs_restart/3,
         do_qs_start/2, do_qs_start/3,
         do_qs_stop/2, do_qs_stop/3,
         download_qs_backup/3, download_qs_backup/4,
         get_new_qs/1, get_new_qs/2,
         get_qs_backup/2, get_qs_backup/3,
         get_qs_backups/2, get_qs_backups/3,
         get_qs_change_hostname/2, get_qs_change_hostname/3,
         get_qs_change_root_password/2, get_qs_change_root_password/3,
         get_qs_change_timezone/2, get_qs_change_timezone/3,
         get_qs_change_webuzo_password/2, get_qs_change_webuzo_password/3,
         get_qs_info/2, get_qs_info/3,
         get_qs_insert_cd/2, get_qs_insert_cd/3,
         get_qs_invoices/2, get_qs_invoices/3,
         get_qs_list/1, get_qs_list/2,
         get_qs_reinstall_os/2, get_qs_reinstall_os/3,
         get_qs_reset_password/2, get_qs_reset_password/3,
         get_qs_reverse_dns/2, get_qs_reverse_dns/3,
         get_qs_setup_vnc/2, get_qs_setup_vnc/3,
         get_qs_traffic_usage/2, get_qs_traffic_usage/3,
         get_qs_view_desktop/2, get_qs_view_desktop/3,
         get_qs_welcome_email/2, get_qs_welcome_email/3,
         post_qs_change_hostname/2, post_qs_change_hostname/3,
         post_qs_change_root_password/2, post_qs_change_root_password/3,
         post_qs_change_timezone/3, post_qs_change_timezone/4,
         post_qs_change_webuzo_password/2, post_qs_change_webuzo_password/3,
         post_qs_insert_cd/2, post_qs_insert_cd/3,
         post_qs_reinstall_os/2, post_qs_reinstall_os/3,
         post_qs_reset_password/2, post_qs_reset_password/3,
         post_qs_reverse_dns/3, post_qs_reverse_dns/4,
         post_qs_setup_vnc/2, post_qs_setup_vnc/3,
         post_qs_traffic_usage/2, post_qs_traffic_usage/3,
         post_qs_view_desktop/2, post_qs_view_desktop/3,
         post_quick_server_restore/3, post_quick_server_restore/4,
         put_qs/2, put_qs/3,
         quickservers_cancel/2, quickservers_cancel/3,
         update_qs_info/2, update_qs_info/3]).

-define(BASE_URL, <<"/apiv2">>).

%% @doc Place a QuickServer order, generating a real invoice and queuing provisioning
%% Commits the validated order: creates the service row, generates a real invoice, and queues provisioning. Body fields match `putQs` (`server`, `password`, `os`, `comment`, `tos`) — call `putQs` first to catch errors. On `validation.continue=false`, returns the joined error string with no charge. Returns: `ServiceOrderPostResponse` with the new service ID and invoice info. Pay via `getBillingInvoice`/`initiatePayment`. Errors: 401 if unauthenticated, 4xx with message on validation failure. Siblings: `putQs` (validate first), `getNewQs`, `addVps` (VPS equivalent).
-spec add_qs(ctx:ctx(), interserver_api_qs_order_request:interserver_api_qs_order_request()) -> {ok, interserver_api_service_order_post_response:interserver_api_service_order_post_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
add_qs(Ctx, InterserverApiQsOrderRequest) ->
    add_qs(Ctx, InterserverApiQsOrderRequest, #{}).

-spec add_qs(ctx:ctx(), interserver_api_qs_order_request:interserver_api_qs_order_request(), maps:map()) -> {ok, interserver_api_service_order_post_response:interserver_api_service_order_post_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
add_qs(Ctx, InterserverApiQsOrderRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/qs/order"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiQsOrderRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Permanently delete a QuickServer backup file from object storage
%% Removes the backup from its storage backend. Irreversible — the backup cannot be recovered. Path param: `id`. Required: `file` (the backup `name` from `getQsBackups`, in query or form body). Works for `swift` and `minio` backups; `zfs` snapshots cannot be deleted via this endpoint (returns an error pointing to support). Returns: `SuccessTextResponse` with the removed name. Errors: 401, 404 if not owned, error message if backup type is unsupported or the storage operation fails. Siblings: `getQsBackups` (list), `downloadQsBackup` (PATCH), `postQuickServerRestore`.
-spec delete_qs_backup(ctx:ctx(), integer(), binary()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
delete_qs_backup(Ctx, Id, File) ->
    delete_qs_backup(Ctx, Id, File, #{}).

-spec delete_qs_backup(ctx:ctx(), integer(), binary(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
delete_qs_backup(Ctx, Id, File, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/qs/", Id, "/backups"],
    QS = lists:flatten([{<<"file">>, File}])++interserver_api_utils:optional_params(['all'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Block outbound SMTP traffic on a QuickServer to halt mail abuse
%% Queues a firewall rule that drops outbound port 25 traffic, used to halt spam/abuse without taking the server offline. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes via the queue worker, which also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Reversible only by support — there is no `unblock_smtp` endpoint. Siblings: `doVpsBlockSmtp`, `getQsInfo`.
-spec do_qs_block_smtp(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_block_smtp(Ctx, Id) ->
    do_qs_block_smtp(Ctx, Id, #{}).

-spec do_qs_block_smtp(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_block_smtp(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/block_smtp"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Disable the virtual CD/DVD drive device on a QuickServer
%% Queues removal of the virtual CD/DVD device from the QuickServer (full disable, not just eject). Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `doQsEjectCd` (eject the ISO but keep drive), `postQsInsertCd` (mount an ISO), `getQsInsertCd` (list available ISOs).
-spec do_qs_disable_cd(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_disable_cd(Ctx, Id) ->
    do_qs_disable_cd(Ctx, Id, #{}).

-spec do_qs_disable_cd(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_disable_cd(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/disable_cd"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Disable disk-quota enforcement at OS level on a QuickServer
%% Queues a job to turn off disk-quota enforcement at the OS level. Use when quota errors block legitimate writes or before resizing disk space. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Re-enable later with `doQsEnableQuota`. Siblings: `doQsEnableQuota` (re-enable), `doVpsDisableQuota` (VPS equivalent).
-spec do_qs_disable_quota(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_disable_quota(Ctx, Id) ->
    do_qs_disable_quota(Ctx, Id, #{}).

-spec do_qs_disable_quota(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_disable_quota(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/disable_quota"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Eject the currently mounted ISO from a QuickServer's virtual CD drive
%% Queues an eject — drive remains attached but no media. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes. The queue worker also re-runs VNC setup so the console reflects the change. Errors: 401, 404 if `id` is not owned by caller. Note: this handler does not validate `active` status. Siblings: `postQsInsertCd` (mount an ISO), `getQsInsertCd` (list ISOs), `doQsDisableCd` (remove the drive itself).
-spec do_qs_eject_cd(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_eject_cd(Ctx, Id) ->
    do_qs_eject_cd(Ctx, Id, #{}).

-spec do_qs_eject_cd(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_eject_cd(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/eject_cd"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Enable disk-quota enforcement at OS level on a QuickServer
%% Queues a job to turn on disk-quota enforcement at the OS level. Pair with `doQsDisableQuota` when re-enabling after maintenance, disk resizing, or restoring a backup. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `doQsDisableQuota` (turn off), `doVpsEnableQuota` (VPS equivalent).
-spec do_qs_enable_quota(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_enable_quota(Ctx, Id) ->
    do_qs_enable_quota(Ctx, Id, #{}).

-spec do_qs_enable_quota(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_enable_quota(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/enable_quota"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Reboot a QuickServer with a graceful OS-level restart
%% Queues a graceful restart — equivalent to `reboot` inside the OS. Path param: `id` (integer). No body. Use to recover from a hung service or apply pending kernel/config changes. Returns: `{ text, queueId }`. Async — server is back online within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on `active` status — restarts work even on suspended services. Siblings: `doQsStart`, `doQsStop`, `doVpsRestart`.
-spec do_qs_restart(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_restart(Ctx, Id) ->
    do_qs_restart(Ctx, Id, #{}).

-spec do_qs_restart(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_restart(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/restart"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Power on a QuickServer that is currently stopped or pending boot
%% Queues a `start` command to bring the QuickServer online. Path param: `id` (integer). No body. Idempotent in practice — re-running on an already-on server is a no-op at the worker. Returns: `{ text, queueId }`. Async — typically online within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status, so it can be issued even for non-active services. Siblings: `doQsStop`, `doQsRestart`, `getQsInfo`, `doVpsStart`.
-spec do_qs_start(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_start(Ctx, Id) ->
    do_qs_start(Ctx, Id, #{}).

-spec do_qs_start(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_start(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/start"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Power off a QuickServer with a graceful shutdown command
%% Queues a `stop` command. Path param: `id` (integer). No body. Use before maintenance, snapshot, or to halt traffic — billing continues regardless of power state, so use `quickserversCancel` to also stop charges. Returns: `{ text, queueId }`. Async — typically off within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status. Siblings: `doQsStart`, `doQsRestart`, `doVpsStop`.
-spec do_qs_stop(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_stop(Ctx, Id) ->
    do_qs_stop(Ctx, Id, #{}).

-spec do_qs_stop(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
do_qs_stop(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/stop"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Generate a 24-hour pre-signed download URL for a QuickServer backup
%% Returns a temporary signed URL to fetch the backup directly from object storage. Path param: `id`. Body (JSON or form): `file` (the backup `name` from `getQsBackups`). Only available for `minio`-type backups; `swift` and `zfs` backups return an error directing the caller to contact support. URL expires in 24 hours. Returns: `{ text, url }`. Errors: 401, 404 if not owned, error message for unsupported backup type or sharing failure. Siblings: `getQsBackups` (list, get `name`), `deleteQsBackup`, `postQuickServerRestore`.
-spec download_qs_backup(ctx:ctx(), integer(), interserver_api_download_qs_backup_request:interserver_api_download_qs_backup_request()) -> {ok, interserver_api_download_qs_backup_200_response:interserver_api_download_qs_backup_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
download_qs_backup(Ctx, Id, InterserverApiDownloadQsBackupRequest) ->
    download_qs_backup(Ctx, Id, InterserverApiDownloadQsBackupRequest, #{}).

-spec download_qs_backup(ctx:ctx(), integer(), interserver_api_download_qs_backup_request:interserver_api_download_qs_backup_request(), maps:map()) -> {ok, interserver_api_download_qs_backup_200_response:interserver_api_download_qs_backup_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
download_qs_backup(Ctx, Id, InterserverApiDownloadQsBackupRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = patch,
    Path = [?BASE_URL, "/qs/", Id, "/backups"],
    QS = lists:flatten([])++interserver_api_utils:optional_params(['all'], _OptionalParams),
    Headers = [],
    Body1 = InterserverApiDownloadQsBackupRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get QuickServer order form metadata and available plans/templates
%% Use before placing or validating a QuickServer order to retrieve pricing, available servers, OS templates, and form fields. Read-only — no params, no body, no charge. Returns: `QuickserverOrder` schema with plan/template/server options used to build the order payload for `putQs` (validate) or `addQs` (place). Errors: 401 if unauthenticated. Siblings: `putQs` (dry-run validation), `addQs` (commits and invoices), `getNewVps` (virtual VPS ordering surface).
-spec get_new_qs(ctx:ctx()) -> {ok, interserver_api_quickserver_order:interserver_api_quickserver_order(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_new_qs(Ctx) ->
    get_new_qs(Ctx, #{}).

-spec get_new_qs(ctx:ctx(), maps:map()) -> {ok, interserver_api_quickserver_order:interserver_api_quickserver_order(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_new_qs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/order"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Queue creation of a new QuickServer backup snapshot (note: GET triggers job)
%% Note: GET on `/qs/{id}/backup` triggers a backup job — despite the verb, this is a state-changing action. Queues a `backup` operation; backup name is auto-generated. Path param: `id` (integer). Returns: `{ text, queueId }`. Async — backup completes in minutes to hours depending on disk size. Poll `getQsBackups` to see when it appears. Errors: 401 if unauthenticated, 404 if not owned by caller, 409 if status != `active`. Siblings: `getQsBackups` (list), `postQuickServerRestore`, `downloadQsBackup`, `deleteQsBackup`.
-spec get_qs_backup(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_backup(Ctx, Id) ->
    get_qs_backup(Ctx, Id, #{}).

-spec get_qs_backup(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_backup(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/backup"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List available QuickServer backups across Swift, MinIO, and ZFS storage
%% Returns all backups visible to the caller for this QuickServer across the three backup backends. Path param: `id` (integer). Optional query `all=1` lists every backup the customer owns, not just this server's. Returns: `VpsBackupRows` array — each row has `name`, `type` (swift/minio/zfs), `size`, `service`, `path`. Use `name` (not a numeric ID) with `downloadQsBackup` (PATCH), `deleteQsBackup` (DELETE), or `postQuickServerRestore`. Errors: 401, 404 if not owned by caller. Siblings: `getQsBackup` (create), `postQuickServerRestore`.
-spec get_qs_backups(ctx:ctx(), integer()) -> {ok, interserver_api_vps_backup_rows:interserver_api_vps_backup_rows(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_backups(Ctx, Id) ->
    get_qs_backups(Ctx, Id, #{}).

-spec get_qs_backups(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_vps_backup_rows:interserver_api_vps_backup_rows(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_backups(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/backups"],
    QS = lists:flatten([])++interserver_api_utils:optional_params(['all'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get current QuickServer hostname plus change rules and platform support
%% Read-only probe before calling `postQsChangeHostname`. Path param: `id` (integer). Returns the current hostname and the validation rules the new hostname must satisfy. Returns: object with hostname metadata. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: hostname changes are only supported on OpenVZ/Virtuozzo platforms — `postQsChangeHostname` rejects KVM/dedicated types with an explanatory error. Siblings: `postQsChangeHostname`, `getVpsChangeHostname`.
-spec get_qs_change_hostname(ctx:ctx(), integer()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_change_hostname(Ctx, Id) ->
    get_qs_change_hostname(Ctx, Id, #{}).

-spec get_qs_change_hostname(ctx:ctx(), integer(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_change_hostname(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/change_hostname"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get metadata for QuickServer root/OS password change requirements
%% Read-only probe before calling `postQsChangeRootPassword`. Path param: `id` (integer). Use to surface password complexity rules and confirm the QuickServer accepts root password changes. Returns: object with reset metadata. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: this changes the OS root password (Linux) — for the Webuzo control panel password use `postQsChangeWebuzoPassword`. Siblings: `postQsChangeRootPassword`, `postQsResetPassword` (random password), `getVpsChangeRootPassword`.
-spec get_qs_change_root_password(ctx:ctx(), integer()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_change_root_password(Ctx, Id) ->
    get_qs_change_root_password(Ctx, Id, #{}).

-spec get_qs_change_root_password(ctx:ctx(), integer(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_change_root_password(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/change_root_password"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List timezones the QuickServer can be set to via change_timezone
%% Returns the system timezone catalog (parsed from `/usr/share/zoneinfo/zone.tab`) for use with `postQsChangeTimezone`. Path param: `id` (integer). Read-only — no queue, no charge. Returns: array of timezone strings (e.g. `America/New_York`, `Europe/London`). Errors: 401, 404 if not owned by caller, 409 if status != `active` (handler labels these errors as `Invalid VPS Passed` / `VPS is not active` due to shared code). Siblings: `postQsChangeTimezone` (commit), `getVpsChangeTimezone`, `getQsChangeHostname` (also informational).
-spec get_qs_change_timezone(ctx:ctx(), integer()) -> {ok, [binary()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_change_timezone(Ctx, Id) ->
    get_qs_change_timezone(Ctx, Id, #{}).

-spec get_qs_change_timezone(ctx:ctx(), integer(), maps:map()) -> {ok, [binary()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_change_timezone(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/change_timezone"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get metadata for changing the Webuzo control panel admin password
%% Read-only probe before `postQsChangeWebuzoPassword`. Path param: `id` (integer). Webuzo is a control panel optionally installed on QuickServers — its admin password is separate from the OS root password. Returns: object with change instructions. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `postQsChangeWebuzoPassword`, `postQsChangeRootPassword` (OS root password), `postQsResetPassword`.
-spec get_qs_change_webuzo_password(ctx:ctx(), integer()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_change_webuzo_password(Ctx, Id) ->
    get_qs_change_webuzo_password(Ctx, Id, #{}).

-spec get_qs_change_webuzo_password(ctx:ctx(), integer(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_change_webuzo_password(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/change_webuzo_password"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get full details for one QuickServer including credentials and links
%% Returns the QuickServer dashboard payload — service info, IPs, hostname, OS, status, billing, and the list of available `client_links` (action endpoints the caller is allowed to invoke). Path param: `id` (integer QuickServer ID). Returns: `Quickserver` schema. Use response links to drive `doQsStart`, `doQsStop`, `doQsRestart`, `getQsBackups`, `getQsReinstallOs`, `getQsReverseDns`, `getQsInvoices`. Errors: 401 if unauthenticated, 404 if `id` is not owned by caller. Siblings: `updateQsInfo` (mutate), `quickserversCancel` (delete), `getVpsInfo` (VPS equivalent).
-spec get_qs_info(ctx:ctx(), integer()) -> {ok, interserver_api_quickserver:interserver_api_quickserver(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_info(Ctx, Id) ->
    get_qs_info(Ctx, Id, #{}).

-spec get_qs_info(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_quickserver:interserver_api_quickserver(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List ISO images available to mount on a QuickServer's virtual CD
%% Returns the catalog of bootable ISOs the caller can mount via `postQsInsertCd`. Path param: `id` (integer). Read-only — no queue, no charge. Returns: object with available ISO entries (URLs/labels) keyed for the QuickServer's hardware type. Errors: 401 if unauthenticated. Note: this handler does not validate ownership or active status — pair with `getQsInfo` first if you need those checks before presenting options to a user. Siblings: `postQsInsertCd` (mount the chosen URL), `doQsEjectCd`, `doQsDisableCd`, `getVpsInsertCd`.
-spec get_qs_insert_cd(ctx:ctx(), integer()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_insert_cd(Ctx, Id) ->
    get_qs_insert_cd(Ctx, Id, #{}).

-spec get_qs_insert_cd(ctx:ctx(), integer(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_insert_cd(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/insert_cd"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List billing invoices charged for one QuickServer service
%% Returns invoices charged for this QuickServer (initial setup + recurring). Path param: `id` (integer). Returns: `ChargeInvoiceRows` — each row has invoice ID, amount, status (paid/unpaid), date. Use the invoice ID with `getBillingInvoice` for full detail or `initiatePayment` to settle. Errors: 401 if unauthenticated, 404 if not owned by caller. Siblings: `getQsInfo`, `getVpsInvoices`, `getBillingInvoice`, `quickserversCancel` (check next-invoice date before canceling).
-spec get_qs_invoices(ctx:ctx(), integer()) -> {ok, interserver_api_charge_invoice_rows:interserver_api_charge_invoice_rows(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_invoices(Ctx, Id) ->
    get_qs_invoices(Ctx, Id, #{}).

-spec get_qs_invoices(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_charge_invoice_rows:interserver_api_charge_invoice_rows(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_invoices(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/invoices"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List QuickServer rapid-deploy dedicated servers on the account
%% Use to enumerate the caller's QuickServers (quick-provision physical dedicated boxes that share the VPS billing model). No params, no body. Each row has `qs_id`, `qs_name`, `qs_hostname`, `qs_status`, `qs_comment`, and `cost`. Feed `qs_id` into `getQsInfo` for full details, or any per-server action (`doQsStart`, `doQsStop`, `doQsRestart`, `getQsBackups`, etc.). Returns: array of QuickServer rows. Errors: 401 if unauthenticated. Siblings: `getVpsList` (virtual VPS surface), `getQsInfo`, `getNewQs` for ordering metadata.
-spec get_qs_list(ctx:ctx()) -> {ok, [interserver_api_quickserver_row:interserver_api_quickserver_row()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_list(Ctx) ->
    get_qs_list(Ctx, #{}).

-spec get_qs_list(ctx:ctx(), maps:map()) -> {ok, [interserver_api_quickserver_row:interserver_api_quickserver_row()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_list(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List OS templates available for a QuickServer reinstall
%% Returns the OS template catalog filtered to the QuickServer's hardware/template type. Path param: `id` (integer). Read-only — no provisioning happens. Returns: `{ templates: [...] }` — each template has `template_file`, `template_name`, `template_version`. Use `template_file` with `postQsReinstallOs`. Non-admin callers only see templates with `template_available=1`. Errors: 401 if unauthenticated. Siblings: `postQsReinstallOs` (commit, destructive), `getVpsReinstallOs`.
-spec get_qs_reinstall_os(ctx:ctx(), integer()) -> {ok, interserver_api_vps_templates_list:interserver_api_vps_templates_list(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_reinstall_os(Ctx, Id) ->
    get_qs_reinstall_os(Ctx, Id, #{}).

-spec get_qs_reinstall_os(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_vps_templates_list:interserver_api_vps_templates_list(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_reinstall_os(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/reinstall_os"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get options for QuickServer randomized root password reset
%% Read-only probe before `postQsResetPassword`. Path param: `id` (integer). Use to confirm the QuickServer is in a state that allows password resets. Returns: object with reset configuration. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: `postQsResetPassword` generates a random password — for a chosen value use `postQsChangeRootPassword`. Siblings: `postQsResetPassword`, `postQsChangeRootPassword`, `getVpsResetPassword`.
-spec get_qs_reset_password(ctx:ctx(), integer()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_reset_password(Ctx, Id) ->
    get_qs_reset_password(Ctx, Id, #{}).

-spec get_qs_reset_password(ctx:ctx(), integer(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_reset_password(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/reset_password"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get reverse DNS (PTR) records for all of a QuickServer's IPs
%% Returns the current PTR record for the primary IP and any additional IPs assigned to the QuickServer. Path param: `id` (integer). Read-only — looks up live DNS, no queue. Returns: `{ ips: { \"<ip>\": \"<hostname>\", ... } }`. Use the keys with `postQsReverseDns` to update entries. Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: `postQsReverseDns`, `getVpsReverseDns`.
-spec get_qs_reverse_dns(ctx:ctx(), integer()) -> {ok, interserver_api_reverse_dns_entries:interserver_api_reverse_dns_entries(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_reverse_dns(Ctx, Id) ->
    get_qs_reverse_dns(Ctx, Id, #{}).

-spec get_qs_reverse_dns(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_reverse_dns_entries:interserver_api_reverse_dns_entries(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_reverse_dns(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/reverse_dns"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get current VNC console connection details for a QuickServer
%% Read-only probe for the VNC tunnel that exposes the server's console (host, port, credentials). Path param: `id` (integer). Returns: object with VNC connection info. Errors: 401 if unauthenticated, 404 if `id` is not owned by caller, 409 if service is not `active`. Note: this endpoint is currently a stub — the `// todo: return vnc info` line indicates the response body may be empty until completed. Siblings: `postQsSetupVnc` (configure access IP), `getVpsSetupVnc`.
-spec get_qs_setup_vnc(ctx:ctx(), integer()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_setup_vnc(Ctx, Id) ->
    get_qs_setup_vnc(Ctx, Id, #{}).

-spec get_qs_setup_vnc(ctx:ctx(), integer(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_setup_vnc(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/setup_vnc"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get bandwidth usage for the QuickServer's current billing period
%% Returns the inbound/outbound bandwidth totals and time-series points for the QuickServer's current cycle. Path param: `id` (integer). Read-only. Returns: bandwidth-data object from `qs_bandwidth_data` (totals, daily/hourly points, overage flag). Errors: 401 if unauthenticated. Note: handler does not gate on ownership or active status. Siblings: `postQsTrafficUsage` (same data, accessible via POST for filtered queries), `getVpsTrafficUsage`.
-spec get_qs_traffic_usage(ctx:ctx(), integer()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_traffic_usage(Ctx, Id) ->
    get_qs_traffic_usage(Ctx, Id, #{}).

-spec get_qs_traffic_usage(ctx:ctx(), integer(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_traffic_usage(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/traffic_usage"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get the full QuickServer dashboard view payload (rich format)
%% Returns the same rich payload the AdminLTE UI uses — service info, billing, available client_links, resource graphs. Heavier than `getQsInfo` and intended for desktop dashboards. Path param: `id` (integer). Returns: object with `serviceInfo`, `client_links`, etc. (admin-only fields stripped). Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: `getQsInfo` (lighter), `postQsViewDesktop` (mutate variant), `getVpsViewDesktop`.
-spec get_qs_view_desktop(ctx:ctx(), integer()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_view_desktop(Ctx, Id) ->
    get_qs_view_desktop(Ctx, Id, #{}).

-spec get_qs_view_desktop(ctx:ctx(), integer(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_view_desktop(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/view_desktop"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Resend the QuickServer welcome email with login credentials
%% Re-runs the `qs_welcome_email` function which composes and sends the welcome email containing connection details, root password, and management URLs to the account owner. Path param: `id` (integer). Returns: `{ text: \"Welcome Email has been resent.\" }`. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Use when the original welcome email was lost or the customer needs credentials again. Siblings: `getVpsWelcomeEmail`, `getQsInfo` (also exposes connection info).
-spec get_qs_welcome_email(ctx:ctx(), binary()) -> {ok, interserver_api_text_response:interserver_api_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_welcome_email(Ctx, Id) ->
    get_qs_welcome_email(Ctx, Id, #{}).

-spec get_qs_welcome_email(ctx:ctx(), binary(), maps:map()) -> {ok, interserver_api_text_response:interserver_api_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_qs_welcome_email(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/qs/", Id, "/welcome_email"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Change a QuickServer's system hostname (OpenVZ/Virtuozzo only)
%% Updates the hostname and the matching reverse DNS entry. Path param: `id`. Body (JSON or form): `hostname` (must pass `valid_hostname`, must differ from current). Only supported on OpenVZ/Virtuozzo platforms — KVM/dedicated returns a 4xx with a contact-support message. Pending services update the DB row directly (`{ text }`); active services queue the change (`{ text, queueId }`, ~2 min). Errors: 401, 404 if not owned, 409 if status != `active`, validation error for bad hostname or no change. Siblings: `getQsChangeHostname`, `postVpsChangeHostname`.
-spec post_qs_change_hostname(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_change_hostname(Ctx, Id) ->
    post_qs_change_hostname(Ctx, Id, #{}).

-spec post_qs_change_hostname(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_change_hostname(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/qs/", Id, "/change_hostname"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Change QuickServer root/administrator password to a chosen value
%% Queues a root password change. Path param: `id`. Body (JSON or form): `password` (the new password — required, no server-side complexity validation here). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Both queue and history entries are written. Errors: 401, 404 if not owned, 409 if status != `active`, 400 if `password` is missing. For a randomly generated password use `postQsResetPassword` instead. For Webuzo panel password use `postQsChangeWebuzoPassword`. Siblings: `getQsChangeRootPassword`, `postVpsChangeRootPassword`.
-spec post_qs_change_root_password(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_change_root_password(Ctx, Id) ->
    post_qs_change_root_password(Ctx, Id, #{}).

-spec post_qs_change_root_password(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_change_root_password(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/qs/", Id, "/change_root_password"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Change the system timezone on a QuickServer to a catalog entry
%% Queues a timezone change. Path param: `id`. Body (JSON or form): `timezone` (must be one of the strings returned by `getQsChangeTimezone`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes by the queue worker. Errors: 401, 404 if not owned, 409 if status != `active`, 422 if `timezone` is not in the catalog. Siblings: `getQsChangeTimezone` (call first to get valid options), `postVpsChangeTimezone`.
-spec post_qs_change_timezone(ctx:ctx(), integer(), binary()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_change_timezone(Ctx, Id, Timezone) ->
    post_qs_change_timezone(Ctx, Id, Timezone, #{}).

-spec post_qs_change_timezone(ctx:ctx(), integer(), binary(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_change_timezone(Ctx, Id, Timezone, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/qs/", Id, "/change_timezone"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"timezone">>, Timezone}]++interserver_api_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"multipart/form-data">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Change Webuzo control panel admin password live (synchronous, not queued)
%% Calls the Webuzo SDK directly on the server to change the panel `admin` password, then emails the new credentials. Path param: `id`. Body: `password` (new Webuzo password, must pass `valid_password`), `login_password` (caller's account login password — verified via md5 hash). Synchronous — no queue ID. Requires a prior Webuzo-Details history entry. Returns: success message string. Errors: 401, 404 if not owned, 409 if status != `active`, validation errors for missing fields, wrong login password, weak new password, or SDK failure. Siblings: `getQsChangeWebuzoPassword`, `postQsChangeRootPassword` (OS root).
-spec post_qs_change_webuzo_password(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_change_webuzo_password(Ctx, Id) ->
    post_qs_change_webuzo_password(Ctx, Id, #{}).

-spec post_qs_change_webuzo_password(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_change_webuzo_password(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/qs/", Id, "/change_webuzo_password"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Mount an ISO image as the QuickServer's virtual CD via URL
%% Queues an `insert_cd` job that attaches the given ISO URL to the QuickServer's virtual CD drive (typically for OS reinstalls or rescue boots). Path param: `id`. Body (JSON or form): `url` (the ISO URL — pick one from `getQsInsertCd`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller. The action is idempotent in effect (latest mount wins). Siblings: `getQsInsertCd` (list options), `doQsEjectCd` (unmount), `doQsDisableCd`, `postQsReinstallOs` (template-based).
-spec post_qs_insert_cd(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_insert_cd(Ctx, Id) ->
    post_qs_insert_cd(Ctx, Id, #{}).

-spec post_qs_insert_cd(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_insert_cd(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/qs/", Id, "/insert_cd"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)
%% Wipes the disk and reinstalls the chosen OS template. All data, configs, and snapshots are erased. Path param: `id`. Body: `template` (a `template_file` from `getQsReinstallOs`), `password` (new root password — required for non-Windows templates). For active services, queues `reinstall_os` (~2 min). For inactive services, just stores the OS preference for next activation. Updates `qs_status` to `Reinstalling` and clears screenshots. Returns flash messages — typical envelope. Errors: 401, invalid template name returns error flash. Siblings: `getQsReinstallOs` (list options), `postVpsReinstallOs`, `postQuickServerRestore` (recover from backup instead).
-spec post_qs_reinstall_os(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_reinstall_os(Ctx, Id) ->
    post_qs_reinstall_os(Ctx, Id, #{}).

-spec post_qs_reinstall_os(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_reinstall_os(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/qs/", Id, "/reinstall_os"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Reset QuickServer root password to a server-generated random value
%% Queues a `reset_password` job that generates a new root password and emails it to the account owner. Path param: `id` (integer). No body — password is generated server-side. Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller, 409 if status != `active`. For a chosen password use `postQsChangeRootPassword` instead; for the Webuzo panel password use `postQsChangeWebuzoPassword`. Siblings: `getQsResetPassword`, `postVpsResetPassword`.
-spec post_qs_reset_password(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_reset_password(Ctx, Id) ->
    post_qs_reset_password(Ctx, Id, #{}).

-spec post_qs_reset_password(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_reset_password(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/qs/", Id, "/reset_password"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update reverse DNS (PTR) records for a QuickServer's IPs
%% Sets PTR records for one or more of the QuickServer's IPs. Path param: `id`. Body (form): `ips` — keyed by IP, value is the desired hostname (must be valid). Returns: `{ message: \"DNS Updated\", success: true }`. Caveat: in the current implementation the body is parsed but the per-IP update loop is a no-op shell — verify with `getQsReverseDns` after calling, and use the support channel if changes don't propagate. Errors: 401 if unauthenticated. Siblings: `getQsReverseDns`, `postVpsReverseDns`.
-spec post_qs_reverse_dns(ctx:ctx(), integer(), interserver_api_reverse_dns_entries:interserver_api_reverse_dns_entries()) -> {ok, interserver_api_text_response:interserver_api_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_reverse_dns(Ctx, Id, InterserverApiReverseDnsEntries) ->
    post_qs_reverse_dns(Ctx, Id, InterserverApiReverseDnsEntries, #{}).

-spec post_qs_reverse_dns(ctx:ctx(), integer(), interserver_api_reverse_dns_entries:interserver_api_reverse_dns_entries(), maps:map()) -> {ok, interserver_api_text_response:interserver_api_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_reverse_dns(Ctx, Id, InterserverApiReverseDnsEntries, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/qs/", Id, "/reverse_dns"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiReverseDnsEntries,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Configure the source IP allowed to reach a QuickServer's VNC console
%% Sets the IP allowed to reach the VNC tunnel and queues a `setup_vnc` to apply it. Path param: `id`. Body (JSON or form): `vnc` (a valid IPv4 address — only this address can reach the console). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned, 409 if status != `active`. Returns an inline `Invalid IP` message when `vnc` fails `validIp`. The VPS-style helper also runs after the DB update. Siblings: `getQsSetupVnc` (read), `postVpsSetupVnc`.
-spec post_qs_setup_vnc(ctx:ctx(), integer()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_setup_vnc(Ctx, Id) ->
    post_qs_setup_vnc(Ctx, Id, #{}).

-spec post_qs_setup_vnc(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_setup_vnc(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/qs/", Id, "/setup_vnc"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Query QuickServer bandwidth usage via POST (filtered variant)
%% Functional duplicate of `getQsTrafficUsage` exposed under POST so clients can pass a filter body. Path param: `id` (integer). Body fields are accepted but the current handler ignores them and returns the full current-cycle dataset. Returns: same bandwidth-data object as `getQsTrafficUsage`. Errors: 401 if unauthenticated. No active-status or ownership gate. Siblings: `getQsTrafficUsage`, `postVpsTrafficUsage`.
-spec post_qs_traffic_usage(ctx:ctx(), integer()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_traffic_usage(Ctx, Id) ->
    post_qs_traffic_usage(Ctx, Id, #{}).

-spec post_qs_traffic_usage(ctx:ctx(), integer(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_traffic_usage(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/qs/", Id, "/traffic_usage"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Submit changes and re-fetch the QuickServer dashboard view payload
%% Same handler as `getQsViewDesktop` but accessible via POST so callers can pass body fields alongside re-fetching the view. Path param: `id`. Body fields are accepted by the underlying View handler. Returns: refreshed dashboard object — `serviceInfo`, `client_links`, etc. Errors: 401 if unauthenticated. For structured updates prefer the dedicated endpoints (`postQsChangeHostname`, `postQsReverseDns`, `postQsSetupVnc`, etc.) which return queue IDs. Siblings: `getQsViewDesktop`, `postVpsViewDesktop`.
-spec post_qs_view_desktop(ctx:ctx(), integer()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_view_desktop(Ctx, Id) ->
    post_qs_view_desktop(Ctx, Id, #{}).

-spec post_qs_view_desktop(ctx:ctx(), integer(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_qs_view_desktop(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/qs/", Id, "/view_desktop"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
%% Overwrites the live disk with a backup. Path param: `id`. Body (form): `backup` (composite key `<type>:<service>:<name>` from `getQsBackups`), `password` (caller's account login password — required for non-admin to confirm). Validates backup exists, caller's password (when applicable), and that the QuickServer disk is large enough (size check skipped for ZFS). Queues `snapshot_restore` for ZFS or `restore` for swift/minio; allow up to 10 minutes. Returns: `{ text, queueId }`. Errors: 401, 404 if not owned, 409 if status != `active`, errors for invalid password, missing backup, or insufficient disk space. Siblings: `getQsBackups`, `getQsBackup` (create), `postVpsRestore`.
-spec post_quick_server_restore(ctx:ctx(), integer(), interserver_api_restore_request:interserver_api_restore_request()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_quick_server_restore(Ctx, Id, InterserverApiRestoreRequest) ->
    post_quick_server_restore(Ctx, Id, InterserverApiRestoreRequest, #{}).

-spec post_quick_server_restore(ctx:ctx(), integer(), interserver_api_restore_request:interserver_api_restore_request(), maps:map()) -> {ok, interserver_api_queue_response:interserver_api_queue_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_quick_server_restore(Ctx, Id, InterserverApiRestoreRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/qs/", Id, "/restore"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiRestoreRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Validate a QuickServer order without charging or provisioning
%% Dry-run the order payload before calling `addQs`. No invoice is created and no service is provisioned. Use to surface form errors, compute the price, and resolve the chosen `server`/`os`/`distro` against the master pool. Body (form): `server` (master ID), `password`, `os` (template), `comment`, `tos`. Returns the `validate_buy_qs` result with `continue` flag, normalized fields, `service_cost`, and `errors` array. Errors: 401 if unauthenticated; validation errors are returned in the body, not as 4xx. Siblings: `addQs` (commits the order), `getNewQs` (form metadata), `putVps` (VPS equivalent).
-spec put_qs(ctx:ctx(), interserver_api_qs_order_request:interserver_api_qs_order_request()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
put_qs(Ctx, InterserverApiQsOrderRequest) ->
    put_qs(Ctx, InterserverApiQsOrderRequest, #{}).

-spec put_qs(ctx:ctx(), interserver_api_qs_order_request:interserver_api_qs_order_request(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
put_qs(Ctx, InterserverApiQsOrderRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/qs/order"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiQsOrderRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Cancel a QuickServer service at the end of the current billing cycle
%% Schedules deprovisioning. The server keeps running until the current billing period ends, then is canceled and the recurring invoice stops. Path param: `id` (integer). Returns: `{ success: bool, text: string }`. Errors: 401 if unauthenticated, 404 if not owned by caller. Reversible only by support before the cycle closes — use `getQsInvoices` to check the next invoice date first. Siblings: `getQsInfo`, `VPSCancel` (VPS equivalent), `serversCancel` (dedicated equivalent).
-spec quickservers_cancel(ctx:ctx(), integer()) -> {ok, interserver_api_quickservers_cancel_200_response:interserver_api_quickservers_cancel_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
quickservers_cancel(Ctx, Id) ->
    quickservers_cancel(Ctx, Id, #{}).

-spec quickservers_cancel(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_quickservers_cancel_200_response:interserver_api_quickservers_cancel_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
quickservers_cancel(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/qs/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update QuickServer order metadata or stored settings without OS impact
%% Mutates QuickServer-level settings (comment, stored notes) without affecting the running OS. Path param: `id`. Body fields are module-specific and processed by the shared `View::go` handler. Returns: `SuccessTextResponse`. Errors: 401 if unauthenticated, 404 if not owned by caller. For server-side actions use the dedicated endpoints — hostname via `postQsChangeHostname`, password via `postQsChangeRootPassword`, OS via `postQsReinstallOs`. Siblings: `getQsInfo` (read), `quickserversCancel` (delete).
-spec update_qs_info(ctx:ctx(), binary()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_qs_info(Ctx, Id) ->
    update_qs_info(Ctx, Id, #{}).

-spec update_qs_info(ctx:ctx(), binary(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_qs_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/qs/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


