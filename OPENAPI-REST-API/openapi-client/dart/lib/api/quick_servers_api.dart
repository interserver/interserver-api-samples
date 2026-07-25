//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;


class QuickServersApi {
  QuickServersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Place a QuickServer order, generating a real invoice and queuing provisioning
  ///
  /// Commits the validated order: creates the service row, generates a real invoice, and queues provisioning. Body fields match `putQs` (`server`, `password`, `os`, `comment`, `tos`) — call `putQs` first to catch errors. On `validation.continue=false`, returns the joined error string with no charge. Returns: `ServiceOrderPostResponse` with the new service ID and invoice info. Pay via `getBillingInvoice`/`initiatePayment`. Errors: 401 if unauthenticated, 4xx with message on validation failure. Siblings: `putQs` (validate first), `getNewQs`, `addVps` (VPS equivalent).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [QsOrderRequest] qsOrderRequest (required):
  Future<Response> addQsWithHttpInfo(QsOrderRequest qsOrderRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/order';

    // ignore: prefer_final_locals
    Object? postBody = qsOrderRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Place a QuickServer order, generating a real invoice and queuing provisioning
  ///
  /// Commits the validated order: creates the service row, generates a real invoice, and queues provisioning. Body fields match `putQs` (`server`, `password`, `os`, `comment`, `tos`) — call `putQs` first to catch errors. On `validation.continue=false`, returns the joined error string with no charge. Returns: `ServiceOrderPostResponse` with the new service ID and invoice info. Pay via `getBillingInvoice`/`initiatePayment`. Errors: 401 if unauthenticated, 4xx with message on validation failure. Siblings: `putQs` (validate first), `getNewQs`, `addVps` (VPS equivalent).
  ///
  /// Parameters:
  ///
  /// * [QsOrderRequest] qsOrderRequest (required):
  Future<ServiceOrderPostResponse?> addQs(QsOrderRequest qsOrderRequest, { Future<void>? abortTrigger, }) async {
    final response = await addQsWithHttpInfo(qsOrderRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ServiceOrderPostResponse',) as ServiceOrderPostResponse;
    
    }
    return null;
  }

  /// Permanently delete a QuickServer backup file from object storage
  ///
  /// Removes the backup from its storage backend. Irreversible — the backup cannot be recovered. Path param: `id`. Required: `file` (the backup `name` from `getQsBackups`, in query or form body). Works for `swift` and `minio` backups; `zfs` snapshots cannot be deleted via this endpoint (returns an error pointing to support). Returns: `SuccessTextResponse` with the removed name. Errors: 401, 404 if not owned, error message if backup type is unsupported or the storage operation fails. Siblings: `getQsBackups` (list), `downloadQsBackup` (PATCH), `postQuickServerRestore`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  ///
  /// * [String] file (required):
  ///   The backup filename to delete.
  ///
  /// * [String] all:
  ///   Set to `1` to list all backups across all services, not just the ones for the given QuickServer.
  Future<Response> deleteQsBackupWithHttpInfo(int id, String file, { String? all, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/backups'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (all != null) {
      queryParams.addAll(_queryParams('', 'all', all));
    }
      queryParams.addAll(_queryParams('', 'file', file));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Permanently delete a QuickServer backup file from object storage
  ///
  /// Removes the backup from its storage backend. Irreversible — the backup cannot be recovered. Path param: `id`. Required: `file` (the backup `name` from `getQsBackups`, in query or form body). Works for `swift` and `minio` backups; `zfs` snapshots cannot be deleted via this endpoint (returns an error pointing to support). Returns: `SuccessTextResponse` with the removed name. Errors: 401, 404 if not owned, error message if backup type is unsupported or the storage operation fails. Siblings: `getQsBackups` (list), `downloadQsBackup` (PATCH), `postQuickServerRestore`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  ///
  /// * [String] file (required):
  ///   The backup filename to delete.
  ///
  /// * [String] all:
  ///   Set to `1` to list all backups across all services, not just the ones for the given QuickServer.
  Future<SuccessTextResponse?> deleteQsBackup(int id, String file, { String? all, Future<void>? abortTrigger, }) async {
    final response = await deleteQsBackupWithHttpInfo(id, file, all: all, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessTextResponse',) as SuccessTextResponse;
    
    }
    return null;
  }

  /// Block outbound SMTP traffic on a QuickServer to halt mail abuse
  ///
  /// Queues a firewall rule that drops outbound port 25 traffic, used to halt spam/abuse without taking the server offline. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes via the queue worker, which also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Reversible only by support — there is no `unblock_smtp` endpoint. Siblings: `doVpsBlockSmtp`, `getQsInfo`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<Response> doQsBlockSmtpWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/block_smtp'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Block outbound SMTP traffic on a QuickServer to halt mail abuse
  ///
  /// Queues a firewall rule that drops outbound port 25 traffic, used to halt spam/abuse without taking the server offline. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes via the queue worker, which also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Reversible only by support — there is no `unblock_smtp` endpoint. Siblings: `doVpsBlockSmtp`, `getQsInfo`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<QueueResponse?> doQsBlockSmtp(int id, { Future<void>? abortTrigger, }) async {
    final response = await doQsBlockSmtpWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Disable the virtual CD/DVD drive device on a QuickServer
  ///
  /// Queues removal of the virtual CD/DVD device from the QuickServer (full disable, not just eject). Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `doQsEjectCd` (eject the ISO but keep drive), `postQsInsertCd` (mount an ISO), `getQsInsertCd` (list available ISOs).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<Response> doQsDisableCdWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/disable_cd'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Disable the virtual CD/DVD drive device on a QuickServer
  ///
  /// Queues removal of the virtual CD/DVD device from the QuickServer (full disable, not just eject). Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `doQsEjectCd` (eject the ISO but keep drive), `postQsInsertCd` (mount an ISO), `getQsInsertCd` (list available ISOs).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<QueueResponse?> doQsDisableCd(int id, { Future<void>? abortTrigger, }) async {
    final response = await doQsDisableCdWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Disable disk-quota enforcement at OS level on a QuickServer
  ///
  /// Queues a job to turn off disk-quota enforcement at the OS level. Use when quota errors block legitimate writes or before resizing disk space. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Re-enable later with `doQsEnableQuota`. Siblings: `doQsEnableQuota` (re-enable), `doVpsDisableQuota` (VPS equivalent).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<Response> doQsDisableQuotaWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/disable_quota'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Disable disk-quota enforcement at OS level on a QuickServer
  ///
  /// Queues a job to turn off disk-quota enforcement at the OS level. Use when quota errors block legitimate writes or before resizing disk space. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Re-enable later with `doQsEnableQuota`. Siblings: `doQsEnableQuota` (re-enable), `doVpsDisableQuota` (VPS equivalent).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<QueueResponse?> doQsDisableQuota(int id, { Future<void>? abortTrigger, }) async {
    final response = await doQsDisableQuotaWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Eject the currently mounted ISO from a QuickServer's virtual CD drive
  ///
  /// Queues an eject — drive remains attached but no media. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes. The queue worker also re-runs VNC setup so the console reflects the change. Errors: 401, 404 if `id` is not owned by caller. Note: this handler does not validate `active` status. Siblings: `postQsInsertCd` (mount an ISO), `getQsInsertCd` (list ISOs), `doQsDisableCd` (remove the drive itself).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<Response> doQsEjectCdWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/eject_cd'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Eject the currently mounted ISO from a QuickServer's virtual CD drive
  ///
  /// Queues an eject — drive remains attached but no media. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes. The queue worker also re-runs VNC setup so the console reflects the change. Errors: 401, 404 if `id` is not owned by caller. Note: this handler does not validate `active` status. Siblings: `postQsInsertCd` (mount an ISO), `getQsInsertCd` (list ISOs), `doQsDisableCd` (remove the drive itself).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<QueueResponse?> doQsEjectCd(int id, { Future<void>? abortTrigger, }) async {
    final response = await doQsEjectCdWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Enable disk-quota enforcement at OS level on a QuickServer
  ///
  /// Queues a job to turn on disk-quota enforcement at the OS level. Pair with `doQsDisableQuota` when re-enabling after maintenance, disk resizing, or restoring a backup. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `doQsDisableQuota` (turn off), `doVpsEnableQuota` (VPS equivalent).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<Response> doQsEnableQuotaWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/enable_quota'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Enable disk-quota enforcement at OS level on a QuickServer
  ///
  /// Queues a job to turn on disk-quota enforcement at the OS level. Pair with `doQsDisableQuota` when re-enabling after maintenance, disk resizing, or restoring a backup. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `doQsDisableQuota` (turn off), `doVpsEnableQuota` (VPS equivalent).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<QueueResponse?> doQsEnableQuota(int id, { Future<void>? abortTrigger, }) async {
    final response = await doQsEnableQuotaWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Reboot a QuickServer with a graceful OS-level restart
  ///
  /// Queues a graceful restart — equivalent to `reboot` inside the OS. Path param: `id` (integer). No body. Use to recover from a hung service or apply pending kernel/config changes. Returns: `{ text, queueId }`. Async — server is back online within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on `active` status — restarts work even on suspended services. Siblings: `doQsStart`, `doQsStop`, `doVpsRestart`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<Response> doQsRestartWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/restart'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Reboot a QuickServer with a graceful OS-level restart
  ///
  /// Queues a graceful restart — equivalent to `reboot` inside the OS. Path param: `id` (integer). No body. Use to recover from a hung service or apply pending kernel/config changes. Returns: `{ text, queueId }`. Async — server is back online within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on `active` status — restarts work even on suspended services. Siblings: `doQsStart`, `doQsStop`, `doVpsRestart`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<QueueResponse?> doQsRestart(int id, { Future<void>? abortTrigger, }) async {
    final response = await doQsRestartWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Power on a QuickServer that is currently stopped or pending boot
  ///
  /// Queues a `start` command to bring the QuickServer online. Path param: `id` (integer). No body. Idempotent in practice — re-running on an already-on server is a no-op at the worker. Returns: `{ text, queueId }`. Async — typically online within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status, so it can be issued even for non-active services. Siblings: `doQsStop`, `doQsRestart`, `getQsInfo`, `doVpsStart`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<Response> doQsStartWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/start'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Power on a QuickServer that is currently stopped or pending boot
  ///
  /// Queues a `start` command to bring the QuickServer online. Path param: `id` (integer). No body. Idempotent in practice — re-running on an already-on server is a no-op at the worker. Returns: `{ text, queueId }`. Async — typically online within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status, so it can be issued even for non-active services. Siblings: `doQsStop`, `doQsRestart`, `getQsInfo`, `doVpsStart`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<QueueResponse?> doQsStart(int id, { Future<void>? abortTrigger, }) async {
    final response = await doQsStartWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Power off a QuickServer with a graceful shutdown command
  ///
  /// Queues a `stop` command. Path param: `id` (integer). No body. Use before maintenance, snapshot, or to halt traffic — billing continues regardless of power state, so use `quickserversCancel` to also stop charges. Returns: `{ text, queueId }`. Async — typically off within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status. Siblings: `doQsStart`, `doQsRestart`, `doVpsStop`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<Response> doQsStopWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/stop'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Power off a QuickServer with a graceful shutdown command
  ///
  /// Queues a `stop` command. Path param: `id` (integer). No body. Use before maintenance, snapshot, or to halt traffic — billing continues regardless of power state, so use `quickserversCancel` to also stop charges. Returns: `{ text, queueId }`. Async — typically off within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status. Siblings: `doQsStart`, `doQsRestart`, `doVpsStop`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<QueueResponse?> doQsStop(int id, { Future<void>? abortTrigger, }) async {
    final response = await doQsStopWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Generate a 24-hour pre-signed download URL for a QuickServer backup
  ///
  /// Returns a temporary signed URL to fetch the backup directly from object storage. Path param: `id`. Body (JSON or form): `file` (the backup `name` from `getQsBackups`). Only available for `minio`-type backups; `swift` and `zfs` backups return an error directing the caller to contact support. URL expires in 24 hours. Returns: `{ text, url }`. Errors: 401, 404 if not owned, error message for unsupported backup type or sharing failure. Siblings: `getQsBackups` (list, get `name`), `deleteQsBackup`, `postQuickServerRestore`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  ///
  /// * [DownloadQsBackupRequest] downloadQsBackupRequest (required):
  ///
  /// * [String] all:
  ///   Set to `1` to list all backups across all services, not just the ones for the given QuickServer.
  Future<Response> downloadQsBackupWithHttpInfo(int id, DownloadQsBackupRequest downloadQsBackupRequest, { String? all, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/backups'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = downloadQsBackupRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (all != null) {
      queryParams.addAll(_queryParams('', 'all', all));
    }

    const contentTypes = <String>['application/json', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Generate a 24-hour pre-signed download URL for a QuickServer backup
  ///
  /// Returns a temporary signed URL to fetch the backup directly from object storage. Path param: `id`. Body (JSON or form): `file` (the backup `name` from `getQsBackups`). Only available for `minio`-type backups; `swift` and `zfs` backups return an error directing the caller to contact support. URL expires in 24 hours. Returns: `{ text, url }`. Errors: 401, 404 if not owned, error message for unsupported backup type or sharing failure. Siblings: `getQsBackups` (list, get `name`), `deleteQsBackup`, `postQuickServerRestore`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  ///
  /// * [DownloadQsBackupRequest] downloadQsBackupRequest (required):
  ///
  /// * [String] all:
  ///   Set to `1` to list all backups across all services, not just the ones for the given QuickServer.
  Future<DownloadQsBackup200Response?> downloadQsBackup(int id, DownloadQsBackupRequest downloadQsBackupRequest, { String? all, Future<void>? abortTrigger, }) async {
    final response = await downloadQsBackupWithHttpInfo(id, downloadQsBackupRequest, all: all, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DownloadQsBackup200Response',) as DownloadQsBackup200Response;
    
    }
    return null;
  }

  /// Get QuickServer order form metadata and available plans/templates
  ///
  /// Use before placing or validating a QuickServer order to retrieve pricing, available servers, OS templates, and form fields. Read-only — no params, no body, no charge. Returns: `QuickserverOrder` schema with plan/template/server options used to build the order payload for `putQs` (validate) or `addQs` (place). Errors: 401 if unauthenticated. Siblings: `putQs` (dry-run validation), `addQs` (commits and invoices), `getNewVps` (virtual VPS ordering surface).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getNewQsWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/order';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get QuickServer order form metadata and available plans/templates
  ///
  /// Use before placing or validating a QuickServer order to retrieve pricing, available servers, OS templates, and form fields. Read-only — no params, no body, no charge. Returns: `QuickserverOrder` schema with plan/template/server options used to build the order payload for `putQs` (validate) or `addQs` (place). Errors: 401 if unauthenticated. Siblings: `putQs` (dry-run validation), `addQs` (commits and invoices), `getNewVps` (virtual VPS ordering surface).
  Future<QuickserverOrder?> getNewQs({ Future<void>? abortTrigger, }) async {
    final response = await getNewQsWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuickserverOrder',) as QuickserverOrder;
    
    }
    return null;
  }

  /// Queue creation of a new QuickServer backup snapshot (note: GET triggers job)
  ///
  /// Note: GET on `/qs/{id}/backup` triggers a backup job — despite the verb, this is a state-changing action. Queues a `backup` operation; backup name is auto-generated. Path param: `id` (integer). Returns: `{ text, queueId }`. Async — backup completes in minutes to hours depending on disk size. Poll `getQsBackups` to see when it appears. Errors: 401 if unauthenticated, 404 if not owned by caller, 409 if status != `active`. Siblings: `getQsBackups` (list), `postQuickServerRestore`, `downloadQsBackup`, `deleteQsBackup`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> getQsBackupWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/backup'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Queue creation of a new QuickServer backup snapshot (note: GET triggers job)
  ///
  /// Note: GET on `/qs/{id}/backup` triggers a backup job — despite the verb, this is a state-changing action. Queues a `backup` operation; backup name is auto-generated. Path param: `id` (integer). Returns: `{ text, queueId }`. Async — backup completes in minutes to hours depending on disk size. Poll `getQsBackups` to see when it appears. Errors: 401 if unauthenticated, 404 if not owned by caller, 409 if status != `active`. Siblings: `getQsBackups` (list), `postQuickServerRestore`, `downloadQsBackup`, `deleteQsBackup`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<QueueResponse?> getQsBackup(int id, { Future<void>? abortTrigger, }) async {
    final response = await getQsBackupWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// List available QuickServer backups across Swift, MinIO, and ZFS storage
  ///
  /// Returns all backups visible to the caller for this QuickServer across the three backup backends. Path param: `id` (integer). Optional query `all=1` lists every backup the customer owns, not just this server's. Returns: `VpsBackupRows` array — each row has `name`, `type` (swift/minio/zfs), `size`, `service`, `path`. Use `name` (not a numeric ID) with `downloadQsBackup` (PATCH), `deleteQsBackup` (DELETE), or `postQuickServerRestore`. Errors: 401, 404 if not owned by caller. Siblings: `getQsBackup` (create), `postQuickServerRestore`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  ///
  /// * [String] all:
  ///   Set to `1` to list all backups across all services, not just the ones for the given QuickServer.
  Future<Response> getQsBackupsWithHttpInfo(int id, { String? all, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/backups'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (all != null) {
      queryParams.addAll(_queryParams('', 'all', all));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// List available QuickServer backups across Swift, MinIO, and ZFS storage
  ///
  /// Returns all backups visible to the caller for this QuickServer across the three backup backends. Path param: `id` (integer). Optional query `all=1` lists every backup the customer owns, not just this server's. Returns: `VpsBackupRows` array — each row has `name`, `type` (swift/minio/zfs), `size`, `service`, `path`. Use `name` (not a numeric ID) with `downloadQsBackup` (PATCH), `deleteQsBackup` (DELETE), or `postQuickServerRestore`. Errors: 401, 404 if not owned by caller. Siblings: `getQsBackup` (create), `postQuickServerRestore`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  ///
  /// * [String] all:
  ///   Set to `1` to list all backups across all services, not just the ones for the given QuickServer.
  Future<VpsBackupRows?> getQsBackups(int id, { String? all, Future<void>? abortTrigger, }) async {
    final response = await getQsBackupsWithHttpInfo(id, all: all, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VpsBackupRows',) as VpsBackupRows;
    
    }
    return null;
  }

  /// Get current QuickServer hostname plus change rules and platform support
  ///
  /// Read-only probe before calling `postQsChangeHostname`. Path param: `id` (integer). Returns the current hostname and the validation rules the new hostname must satisfy. Returns: object with hostname metadata. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: hostname changes are only supported on OpenVZ/Virtuozzo platforms — `postQsChangeHostname` rejects KVM/dedicated types with an explanatory error. Siblings: `postQsChangeHostname`, `getVpsChangeHostname`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> getQsChangeHostnameWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/change_hostname'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get current QuickServer hostname plus change rules and platform support
  ///
  /// Read-only probe before calling `postQsChangeHostname`. Path param: `id` (integer). Returns the current hostname and the validation rules the new hostname must satisfy. Returns: object with hostname metadata. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: hostname changes are only supported on OpenVZ/Virtuozzo platforms — `postQsChangeHostname` rejects KVM/dedicated types with an explanatory error. Siblings: `postQsChangeHostname`, `getVpsChangeHostname`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<void> getQsChangeHostname(int id, { Future<void>? abortTrigger, }) async {
    final response = await getQsChangeHostnameWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get metadata for QuickServer root/OS password change requirements
  ///
  /// Read-only probe before calling `postQsChangeRootPassword`. Path param: `id` (integer). Use to surface password complexity rules and confirm the QuickServer accepts root password changes. Returns: object with reset metadata. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: this changes the OS root password (Linux) — for the Webuzo control panel password use `postQsChangeWebuzoPassword`. Siblings: `postQsChangeRootPassword`, `postQsResetPassword` (random password), `getVpsChangeRootPassword`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> getQsChangeRootPasswordWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/change_root_password'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get metadata for QuickServer root/OS password change requirements
  ///
  /// Read-only probe before calling `postQsChangeRootPassword`. Path param: `id` (integer). Use to surface password complexity rules and confirm the QuickServer accepts root password changes. Returns: object with reset metadata. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: this changes the OS root password (Linux) — for the Webuzo control panel password use `postQsChangeWebuzoPassword`. Siblings: `postQsChangeRootPassword`, `postQsResetPassword` (random password), `getVpsChangeRootPassword`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<void> getQsChangeRootPassword(int id, { Future<void>? abortTrigger, }) async {
    final response = await getQsChangeRootPasswordWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List timezones the QuickServer can be set to via change_timezone
  ///
  /// Returns the system timezone catalog (parsed from `/usr/share/zoneinfo/zone.tab`) for use with `postQsChangeTimezone`. Path param: `id` (integer). Read-only — no queue, no charge. Returns: array of timezone strings (e.g. `America/New_York`, `Europe/London`). Errors: 401, 404 if not owned by caller, 409 if status != `active` (handler labels these errors as `Invalid VPS Passed` / `VPS is not active` due to shared code). Siblings: `postQsChangeTimezone` (commit), `getVpsChangeTimezone`, `getQsChangeHostname` (also informational).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> getQsChangeTimezoneWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/change_timezone'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// List timezones the QuickServer can be set to via change_timezone
  ///
  /// Returns the system timezone catalog (parsed from `/usr/share/zoneinfo/zone.tab`) for use with `postQsChangeTimezone`. Path param: `id` (integer). Read-only — no queue, no charge. Returns: array of timezone strings (e.g. `America/New_York`, `Europe/London`). Errors: 401, 404 if not owned by caller, 409 if status != `active` (handler labels these errors as `Invalid VPS Passed` / `VPS is not active` due to shared code). Siblings: `postQsChangeTimezone` (commit), `getVpsChangeTimezone`, `getQsChangeHostname` (also informational).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<List<String>?> getQsChangeTimezone(int id, { Future<void>? abortTrigger, }) async {
    final response = await getQsChangeTimezoneWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get metadata for changing the Webuzo control panel admin password
  ///
  /// Read-only probe before `postQsChangeWebuzoPassword`. Path param: `id` (integer). Webuzo is a control panel optionally installed on QuickServers — its admin password is separate from the OS root password. Returns: object with change instructions. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `postQsChangeWebuzoPassword`, `postQsChangeRootPassword` (OS root password), `postQsResetPassword`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> getQsChangeWebuzoPasswordWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/change_webuzo_password'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get metadata for changing the Webuzo control panel admin password
  ///
  /// Read-only probe before `postQsChangeWebuzoPassword`. Path param: `id` (integer). Webuzo is a control panel optionally installed on QuickServers — its admin password is separate from the OS root password. Returns: object with change instructions. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `postQsChangeWebuzoPassword`, `postQsChangeRootPassword` (OS root password), `postQsResetPassword`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<void> getQsChangeWebuzoPassword(int id, { Future<void>? abortTrigger, }) async {
    final response = await getQsChangeWebuzoPasswordWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get full details for one QuickServer including credentials and links
  ///
  /// Returns the QuickServer dashboard payload — service info, IPs, hostname, OS, status, billing, and the list of available `client_links` (action endpoints the caller is allowed to invoke). Path param: `id` (integer QuickServer ID). Returns: `Quickserver` schema. Use response links to drive `doQsStart`, `doQsStop`, `doQsRestart`, `getQsBackups`, `getQsReinstallOs`, `getQsReverseDns`, `getQsInvoices`. Errors: 401 if unauthenticated, 404 if `id` is not owned by caller. Siblings: `updateQsInfo` (mutate), `quickserversCancel` (delete), `getVpsInfo` (VPS equivalent).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<Response> getQsInfoWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get full details for one QuickServer including credentials and links
  ///
  /// Returns the QuickServer dashboard payload — service info, IPs, hostname, OS, status, billing, and the list of available `client_links` (action endpoints the caller is allowed to invoke). Path param: `id` (integer QuickServer ID). Returns: `Quickserver` schema. Use response links to drive `doQsStart`, `doQsStop`, `doQsRestart`, `getQsBackups`, `getQsReinstallOs`, `getQsReverseDns`, `getQsInvoices`. Errors: 401 if unauthenticated, 404 if `id` is not owned by caller. Siblings: `updateQsInfo` (mutate), `quickserversCancel` (delete), `getVpsInfo` (VPS equivalent).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number.
  Future<Quickserver?> getQsInfo(int id, { Future<void>? abortTrigger, }) async {
    final response = await getQsInfoWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Quickserver',) as Quickserver;
    
    }
    return null;
  }

  /// List ISO images available to mount on a QuickServer's virtual CD
  ///
  /// Returns the catalog of bootable ISOs the caller can mount via `postQsInsertCd`. Path param: `id` (integer). Read-only — no queue, no charge. Returns: object with available ISO entries (URLs/labels) keyed for the QuickServer's hardware type. Errors: 401 if unauthenticated. Note: this handler does not validate ownership or active status — pair with `getQsInfo` first if you need those checks before presenting options to a user. Siblings: `postQsInsertCd` (mount the chosen URL), `doQsEjectCd`, `doQsDisableCd`, `getVpsInsertCd`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> getQsInsertCdWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/insert_cd'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// List ISO images available to mount on a QuickServer's virtual CD
  ///
  /// Returns the catalog of bootable ISOs the caller can mount via `postQsInsertCd`. Path param: `id` (integer). Read-only — no queue, no charge. Returns: object with available ISO entries (URLs/labels) keyed for the QuickServer's hardware type. Errors: 401 if unauthenticated. Note: this handler does not validate ownership or active status — pair with `getQsInfo` first if you need those checks before presenting options to a user. Siblings: `postQsInsertCd` (mount the chosen URL), `doQsEjectCd`, `doQsDisableCd`, `getVpsInsertCd`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<void> getQsInsertCd(int id, { Future<void>? abortTrigger, }) async {
    final response = await getQsInsertCdWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List billing invoices charged for one QuickServer service
  ///
  /// Returns invoices charged for this QuickServer (initial setup + recurring). Path param: `id` (integer). Returns: `ChargeInvoiceRows` — each row has invoice ID, amount, status (paid/unpaid), date. Use the invoice ID with `getBillingInvoice` for full detail or `initiatePayment` to settle. Errors: 401 if unauthenticated, 404 if not owned by caller. Siblings: `getQsInfo`, `getVpsInvoices`, `getBillingInvoice`, `quickserversCancel` (check next-invoice date before canceling).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> getQsInvoicesWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/invoices'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// List billing invoices charged for one QuickServer service
  ///
  /// Returns invoices charged for this QuickServer (initial setup + recurring). Path param: `id` (integer). Returns: `ChargeInvoiceRows` — each row has invoice ID, amount, status (paid/unpaid), date. Use the invoice ID with `getBillingInvoice` for full detail or `initiatePayment` to settle. Errors: 401 if unauthenticated, 404 if not owned by caller. Siblings: `getQsInfo`, `getVpsInvoices`, `getBillingInvoice`, `quickserversCancel` (check next-invoice date before canceling).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<ChargeInvoiceRows?> getQsInvoices(int id, { Future<void>? abortTrigger, }) async {
    final response = await getQsInvoicesWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChargeInvoiceRows',) as ChargeInvoiceRows;
    
    }
    return null;
  }

  /// List QuickServer rapid-deploy dedicated servers on the account
  ///
  /// Use to enumerate the caller's QuickServers (quick-provision physical dedicated boxes that share the VPS billing model). No params, no body. Each row has `qs_id`, `qs_name`, `qs_hostname`, `qs_status`, `qs_comment`, and `cost`. Feed `qs_id` into `getQsInfo` for full details, or any per-server action (`doQsStart`, `doQsStop`, `doQsRestart`, `getQsBackups`, etc.). Returns: array of QuickServer rows. Errors: 401 if unauthenticated. Siblings: `getVpsList` (virtual VPS surface), `getQsInfo`, `getNewQs` for ordering metadata.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getQsListWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// List QuickServer rapid-deploy dedicated servers on the account
  ///
  /// Use to enumerate the caller's QuickServers (quick-provision physical dedicated boxes that share the VPS billing model). No params, no body. Each row has `qs_id`, `qs_name`, `qs_hostname`, `qs_status`, `qs_comment`, and `cost`. Feed `qs_id` into `getQsInfo` for full details, or any per-server action (`doQsStart`, `doQsStop`, `doQsRestart`, `getQsBackups`, etc.). Returns: array of QuickServer rows. Errors: 401 if unauthenticated. Siblings: `getVpsList` (virtual VPS surface), `getQsInfo`, `getNewQs` for ordering metadata.
  Future<List<QuickserverRow>?> getQsList({ Future<void>? abortTrigger, }) async {
    final response = await getQsListWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<QuickserverRow>') as List)
        .cast<QuickserverRow>()
        .toList(growable: false);

    }
    return null;
  }

  /// List OS templates available for a QuickServer reinstall
  ///
  /// Returns the OS template catalog filtered to the QuickServer's hardware/template type. Path param: `id` (integer). Read-only — no provisioning happens. Returns: `{ templates: [...] }` — each template has `template_file`, `template_name`, `template_version`. Use `template_file` with `postQsReinstallOs`. Non-admin callers only see templates with `template_available=1`. Errors: 401 if unauthenticated. Siblings: `postQsReinstallOs` (commit, destructive), `getVpsReinstallOs`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> getQsReinstallOsWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/reinstall_os'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// List OS templates available for a QuickServer reinstall
  ///
  /// Returns the OS template catalog filtered to the QuickServer's hardware/template type. Path param: `id` (integer). Read-only — no provisioning happens. Returns: `{ templates: [...] }` — each template has `template_file`, `template_name`, `template_version`. Use `template_file` with `postQsReinstallOs`. Non-admin callers only see templates with `template_available=1`. Errors: 401 if unauthenticated. Siblings: `postQsReinstallOs` (commit, destructive), `getVpsReinstallOs`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<VpsTemplatesList?> getQsReinstallOs(int id, { Future<void>? abortTrigger, }) async {
    final response = await getQsReinstallOsWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VpsTemplatesList',) as VpsTemplatesList;
    
    }
    return null;
  }

  /// Get options for QuickServer randomized root password reset
  ///
  /// Read-only probe before `postQsResetPassword`. Path param: `id` (integer). Use to confirm the QuickServer is in a state that allows password resets. Returns: object with reset configuration. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: `postQsResetPassword` generates a random password — for a chosen value use `postQsChangeRootPassword`. Siblings: `postQsResetPassword`, `postQsChangeRootPassword`, `getVpsResetPassword`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> getQsResetPasswordWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/reset_password'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get options for QuickServer randomized root password reset
  ///
  /// Read-only probe before `postQsResetPassword`. Path param: `id` (integer). Use to confirm the QuickServer is in a state that allows password resets. Returns: object with reset configuration. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: `postQsResetPassword` generates a random password — for a chosen value use `postQsChangeRootPassword`. Siblings: `postQsResetPassword`, `postQsChangeRootPassword`, `getVpsResetPassword`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<void> getQsResetPassword(int id, { Future<void>? abortTrigger, }) async {
    final response = await getQsResetPasswordWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get reverse DNS (PTR) records for all of a QuickServer's IPs
  ///
  /// Returns the current PTR record for the primary IP and any additional IPs assigned to the QuickServer. Path param: `id` (integer). Read-only — looks up live DNS, no queue. Returns: `{ ips: { \"<ip>\": \"<hostname>\", ... } }`. Use the keys with `postQsReverseDns` to update entries. Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: `postQsReverseDns`, `getVpsReverseDns`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> getQsReverseDnsWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/reverse_dns'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get reverse DNS (PTR) records for all of a QuickServer's IPs
  ///
  /// Returns the current PTR record for the primary IP and any additional IPs assigned to the QuickServer. Path param: `id` (integer). Read-only — looks up live DNS, no queue. Returns: `{ ips: { \"<ip>\": \"<hostname>\", ... } }`. Use the keys with `postQsReverseDns` to update entries. Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: `postQsReverseDns`, `getVpsReverseDns`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<ReverseDnsEntries?> getQsReverseDns(int id, { Future<void>? abortTrigger, }) async {
    final response = await getQsReverseDnsWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReverseDnsEntries',) as ReverseDnsEntries;
    
    }
    return null;
  }

  /// Get current VNC console connection details for a QuickServer
  ///
  /// Read-only probe for the VNC tunnel that exposes the server's console (host, port, credentials). Path param: `id` (integer). Returns: object with VNC connection info. Errors: 401 if unauthenticated, 404 if `id` is not owned by caller, 409 if service is not `active`. Note: this endpoint is currently a stub — the `// todo: return vnc info` line indicates the response body may be empty until completed. Siblings: `postQsSetupVnc` (configure access IP), `getVpsSetupVnc`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> getQsSetupVncWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/setup_vnc'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get current VNC console connection details for a QuickServer
  ///
  /// Read-only probe for the VNC tunnel that exposes the server's console (host, port, credentials). Path param: `id` (integer). Returns: object with VNC connection info. Errors: 401 if unauthenticated, 404 if `id` is not owned by caller, 409 if service is not `active`. Note: this endpoint is currently a stub — the `// todo: return vnc info` line indicates the response body may be empty until completed. Siblings: `postQsSetupVnc` (configure access IP), `getVpsSetupVnc`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<void> getQsSetupVnc(int id, { Future<void>? abortTrigger, }) async {
    final response = await getQsSetupVncWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get bandwidth usage for the QuickServer's current billing period
  ///
  /// Returns the inbound/outbound bandwidth totals and time-series points for the QuickServer's current cycle. Path param: `id` (integer). Read-only. Returns: bandwidth-data object from `qs_bandwidth_data` (totals, daily/hourly points, overage flag). Errors: 401 if unauthenticated. Note: handler does not gate on ownership or active status. Siblings: `postQsTrafficUsage` (same data, accessible via POST for filtered queries), `getVpsTrafficUsage`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> getQsTrafficUsageWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/traffic_usage'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get bandwidth usage for the QuickServer's current billing period
  ///
  /// Returns the inbound/outbound bandwidth totals and time-series points for the QuickServer's current cycle. Path param: `id` (integer). Read-only. Returns: bandwidth-data object from `qs_bandwidth_data` (totals, daily/hourly points, overage flag). Errors: 401 if unauthenticated. Note: handler does not gate on ownership or active status. Siblings: `postQsTrafficUsage` (same data, accessible via POST for filtered queries), `getVpsTrafficUsage`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<void> getQsTrafficUsage(int id, { Future<void>? abortTrigger, }) async {
    final response = await getQsTrafficUsageWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get the full QuickServer dashboard view payload (rich format)
  ///
  /// Returns the same rich payload the AdminLTE UI uses — service info, billing, available client_links, resource graphs. Heavier than `getQsInfo` and intended for desktop dashboards. Path param: `id` (integer). Returns: object with `serviceInfo`, `client_links`, etc. (admin-only fields stripped). Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: `getQsInfo` (lighter), `postQsViewDesktop` (mutate variant), `getVpsViewDesktop`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> getQsViewDesktopWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/view_desktop'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get the full QuickServer dashboard view payload (rich format)
  ///
  /// Returns the same rich payload the AdminLTE UI uses — service info, billing, available client_links, resource graphs. Heavier than `getQsInfo` and intended for desktop dashboards. Path param: `id` (integer). Returns: object with `serviceInfo`, `client_links`, etc. (admin-only fields stripped). Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: `getQsInfo` (lighter), `postQsViewDesktop` (mutate variant), `getVpsViewDesktop`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<void> getQsViewDesktop(int id, { Future<void>? abortTrigger, }) async {
    final response = await getQsViewDesktopWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Resend the QuickServer welcome email with login credentials
  ///
  /// Re-runs the `qs_welcome_email` function which composes and sends the welcome email containing connection details, root password, and management URLs to the account owner. Path param: `id` (integer). Returns: `{ text: \"Welcome Email has been resent.\" }`. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Use when the original welcome email was lost or the customer needs credentials again. Siblings: `getVpsWelcomeEmail`, `getQsInfo` (also exposes connection info).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Quickserver ID
  Future<Response> getQsWelcomeEmailWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/welcome_email'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Resend the QuickServer welcome email with login credentials
  ///
  /// Re-runs the `qs_welcome_email` function which composes and sends the welcome email containing connection details, root password, and management URLs to the account owner. Path param: `id` (integer). Returns: `{ text: \"Welcome Email has been resent.\" }`. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Use when the original welcome email was lost or the customer needs credentials again. Siblings: `getVpsWelcomeEmail`, `getQsInfo` (also exposes connection info).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Quickserver ID
  Future<TextResponse?> getQsWelcomeEmail(String id, { Future<void>? abortTrigger, }) async {
    final response = await getQsWelcomeEmailWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TextResponse',) as TextResponse;
    
    }
    return null;
  }

  /// Change a QuickServer's system hostname (OpenVZ/Virtuozzo only)
  ///
  /// Updates the hostname and the matching reverse DNS entry. Path param: `id`. Body (JSON or form): `hostname` (must pass `valid_hostname`, must differ from current). Only supported on OpenVZ/Virtuozzo platforms — KVM/dedicated returns a 4xx with a contact-support message. Pending services update the DB row directly (`{ text }`); active services queue the change (`{ text, queueId }`, ~2 min). Errors: 401, 404 if not owned, 409 if status != `active`, validation error for bad hostname or no change. Siblings: `getQsChangeHostname`, `postVpsChangeHostname`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> postQsChangeHostnameWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/change_hostname'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Change a QuickServer's system hostname (OpenVZ/Virtuozzo only)
  ///
  /// Updates the hostname and the matching reverse DNS entry. Path param: `id`. Body (JSON or form): `hostname` (must pass `valid_hostname`, must differ from current). Only supported on OpenVZ/Virtuozzo platforms — KVM/dedicated returns a 4xx with a contact-support message. Pending services update the DB row directly (`{ text }`); active services queue the change (`{ text, queueId }`, ~2 min). Errors: 401, 404 if not owned, 409 if status != `active`, validation error for bad hostname or no change. Siblings: `getQsChangeHostname`, `postVpsChangeHostname`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<QueueResponse?> postQsChangeHostname(int id, { Future<void>? abortTrigger, }) async {
    final response = await postQsChangeHostnameWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Change QuickServer root/administrator password to a chosen value
  ///
  /// Queues a root password change. Path param: `id`. Body (JSON or form): `password` (the new password — required, no server-side complexity validation here). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Both queue and history entries are written. Errors: 401, 404 if not owned, 409 if status != `active`, 400 if `password` is missing. For a randomly generated password use `postQsResetPassword` instead. For Webuzo panel password use `postQsChangeWebuzoPassword`. Siblings: `getQsChangeRootPassword`, `postVpsChangeRootPassword`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> postQsChangeRootPasswordWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/change_root_password'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Change QuickServer root/administrator password to a chosen value
  ///
  /// Queues a root password change. Path param: `id`. Body (JSON or form): `password` (the new password — required, no server-side complexity validation here). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Both queue and history entries are written. Errors: 401, 404 if not owned, 409 if status != `active`, 400 if `password` is missing. For a randomly generated password use `postQsResetPassword` instead. For Webuzo panel password use `postQsChangeWebuzoPassword`. Siblings: `getQsChangeRootPassword`, `postVpsChangeRootPassword`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<QueueResponse?> postQsChangeRootPassword(int id, { Future<void>? abortTrigger, }) async {
    final response = await postQsChangeRootPasswordWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Change the system timezone on a QuickServer to a catalog entry
  ///
  /// Queues a timezone change. Path param: `id`. Body (JSON or form): `timezone` (must be one of the strings returned by `getQsChangeTimezone`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes by the queue worker. Errors: 401, 404 if not owned, 409 if status != `active`, 422 if `timezone` is not in the catalog. Siblings: `getQsChangeTimezone` (call first to get valid options), `postVpsChangeTimezone`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  ///
  /// * [String] timezone (required):
  ///   The time zone
  Future<Response> postQsChangeTimezoneWithHttpInfo(int id, String timezone, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/change_timezone'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data', 'application/json'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (timezone != null) {
      hasFields = true;
      mp.fields[r'timezone'] = parameterToString(timezone);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Change the system timezone on a QuickServer to a catalog entry
  ///
  /// Queues a timezone change. Path param: `id`. Body (JSON or form): `timezone` (must be one of the strings returned by `getQsChangeTimezone`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes by the queue worker. Errors: 401, 404 if not owned, 409 if status != `active`, 422 if `timezone` is not in the catalog. Siblings: `getQsChangeTimezone` (call first to get valid options), `postVpsChangeTimezone`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  ///
  /// * [String] timezone (required):
  ///   The time zone
  Future<QueueResponse?> postQsChangeTimezone(int id, String timezone, { Future<void>? abortTrigger, }) async {
    final response = await postQsChangeTimezoneWithHttpInfo(id, timezone, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Change Webuzo control panel admin password live (synchronous, not queued)
  ///
  /// Calls the Webuzo SDK directly on the server to change the panel `admin` password, then emails the new credentials. Path param: `id`. Body: `password` (new Webuzo password, must pass `valid_password`), `login_password` (caller's account login password — verified via md5 hash). Synchronous — no queue ID. Requires a prior Webuzo-Details history entry. Returns: success message string. Errors: 401, 404 if not owned, 409 if status != `active`, validation errors for missing fields, wrong login password, weak new password, or SDK failure. Siblings: `getQsChangeWebuzoPassword`, `postQsChangeRootPassword` (OS root).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> postQsChangeWebuzoPasswordWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/change_webuzo_password'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Change Webuzo control panel admin password live (synchronous, not queued)
  ///
  /// Calls the Webuzo SDK directly on the server to change the panel `admin` password, then emails the new credentials. Path param: `id`. Body: `password` (new Webuzo password, must pass `valid_password`), `login_password` (caller's account login password — verified via md5 hash). Synchronous — no queue ID. Requires a prior Webuzo-Details history entry. Returns: success message string. Errors: 401, 404 if not owned, 409 if status != `active`, validation errors for missing fields, wrong login password, weak new password, or SDK failure. Siblings: `getQsChangeWebuzoPassword`, `postQsChangeRootPassword` (OS root).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<QueueResponse?> postQsChangeWebuzoPassword(int id, { Future<void>? abortTrigger, }) async {
    final response = await postQsChangeWebuzoPasswordWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Mount an ISO image as the QuickServer's virtual CD via URL
  ///
  /// Queues an `insert_cd` job that attaches the given ISO URL to the QuickServer's virtual CD drive (typically for OS reinstalls or rescue boots). Path param: `id`. Body (JSON or form): `url` (the ISO URL — pick one from `getQsInsertCd`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller. The action is idempotent in effect (latest mount wins). Siblings: `getQsInsertCd` (list options), `doQsEjectCd` (unmount), `doQsDisableCd`, `postQsReinstallOs` (template-based).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> postQsInsertCdWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/insert_cd'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Mount an ISO image as the QuickServer's virtual CD via URL
  ///
  /// Queues an `insert_cd` job that attaches the given ISO URL to the QuickServer's virtual CD drive (typically for OS reinstalls or rescue boots). Path param: `id`. Body (JSON or form): `url` (the ISO URL — pick one from `getQsInsertCd`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller. The action is idempotent in effect (latest mount wins). Siblings: `getQsInsertCd` (list options), `doQsEjectCd` (unmount), `doQsDisableCd`, `postQsReinstallOs` (template-based).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<QueueResponse?> postQsInsertCd(int id, { Future<void>? abortTrigger, }) async {
    final response = await postQsInsertCdWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)
  ///
  /// Wipes the disk and reinstalls the chosen OS template. All data, configs, and snapshots are erased. Path param: `id`. Body: `template` (a `template_file` from `getQsReinstallOs`), `password` (new root password — required for non-Windows templates). For active services, queues `reinstall_os` (~2 min). For inactive services, just stores the OS preference for next activation. Updates `qs_status` to `Reinstalling` and clears screenshots. Returns flash messages — typical envelope. Errors: 401, invalid template name returns error flash. Siblings: `getQsReinstallOs` (list options), `postVpsReinstallOs`, `postQuickServerRestore` (recover from backup instead).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> postQsReinstallOsWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/reinstall_os'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)
  ///
  /// Wipes the disk and reinstalls the chosen OS template. All data, configs, and snapshots are erased. Path param: `id`. Body: `template` (a `template_file` from `getQsReinstallOs`), `password` (new root password — required for non-Windows templates). For active services, queues `reinstall_os` (~2 min). For inactive services, just stores the OS preference for next activation. Updates `qs_status` to `Reinstalling` and clears screenshots. Returns flash messages — typical envelope. Errors: 401, invalid template name returns error flash. Siblings: `getQsReinstallOs` (list options), `postVpsReinstallOs`, `postQuickServerRestore` (recover from backup instead).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<QueueResponse?> postQsReinstallOs(int id, { Future<void>? abortTrigger, }) async {
    final response = await postQsReinstallOsWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Reset QuickServer root password to a server-generated random value
  ///
  /// Queues a `reset_password` job that generates a new root password and emails it to the account owner. Path param: `id` (integer). No body — password is generated server-side. Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller, 409 if status != `active`. For a chosen password use `postQsChangeRootPassword` instead; for the Webuzo panel password use `postQsChangeWebuzoPassword`. Siblings: `getQsResetPassword`, `postVpsResetPassword`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> postQsResetPasswordWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/reset_password'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Reset QuickServer root password to a server-generated random value
  ///
  /// Queues a `reset_password` job that generates a new root password and emails it to the account owner. Path param: `id` (integer). No body — password is generated server-side. Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller, 409 if status != `active`. For a chosen password use `postQsChangeRootPassword` instead; for the Webuzo panel password use `postQsChangeWebuzoPassword`. Siblings: `getQsResetPassword`, `postVpsResetPassword`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<QueueResponse?> postQsResetPassword(int id, { Future<void>? abortTrigger, }) async {
    final response = await postQsResetPasswordWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Update reverse DNS (PTR) records for a QuickServer's IPs
  ///
  /// Sets PTR records for one or more of the QuickServer's IPs. Path param: `id`. Body (form): `ips` — keyed by IP, value is the desired hostname (must be valid). Returns: `{ message: \"DNS Updated\", success: true }`. Caveat: in the current implementation the body is parsed but the per-IP update loop is a no-op shell — verify with `getQsReverseDns` after calling, and use the support channel if changes don't propagate. Errors: 401 if unauthenticated. Siblings: `getQsReverseDns`, `postVpsReverseDns`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  ///
  /// * [ReverseDnsEntries] reverseDnsEntries (required):
  Future<Response> postQsReverseDnsWithHttpInfo(int id, ReverseDnsEntries reverseDnsEntries, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/reverse_dns'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = reverseDnsEntries;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Update reverse DNS (PTR) records for a QuickServer's IPs
  ///
  /// Sets PTR records for one or more of the QuickServer's IPs. Path param: `id`. Body (form): `ips` — keyed by IP, value is the desired hostname (must be valid). Returns: `{ message: \"DNS Updated\", success: true }`. Caveat: in the current implementation the body is parsed but the per-IP update loop is a no-op shell — verify with `getQsReverseDns` after calling, and use the support channel if changes don't propagate. Errors: 401 if unauthenticated. Siblings: `getQsReverseDns`, `postVpsReverseDns`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  ///
  /// * [ReverseDnsEntries] reverseDnsEntries (required):
  Future<TextResponse?> postQsReverseDns(int id, ReverseDnsEntries reverseDnsEntries, { Future<void>? abortTrigger, }) async {
    final response = await postQsReverseDnsWithHttpInfo(id, reverseDnsEntries, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TextResponse',) as TextResponse;
    
    }
    return null;
  }

  /// Configure the source IP allowed to reach a QuickServer's VNC console
  ///
  /// Sets the IP allowed to reach the VNC tunnel and queues a `setup_vnc` to apply it. Path param: `id`. Body (JSON or form): `vnc` (a valid IPv4 address — only this address can reach the console). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned, 409 if status != `active`. Returns an inline `Invalid IP` message when `vnc` fails `validIp`. The VPS-style helper also runs after the DB update. Siblings: `getQsSetupVnc` (read), `postVpsSetupVnc`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> postQsSetupVncWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/setup_vnc'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Configure the source IP allowed to reach a QuickServer's VNC console
  ///
  /// Sets the IP allowed to reach the VNC tunnel and queues a `setup_vnc` to apply it. Path param: `id`. Body (JSON or form): `vnc` (a valid IPv4 address — only this address can reach the console). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned, 409 if status != `active`. Returns an inline `Invalid IP` message when `vnc` fails `validIp`. The VPS-style helper also runs after the DB update. Siblings: `getQsSetupVnc` (read), `postVpsSetupVnc`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<QueueResponse?> postQsSetupVnc(int id, { Future<void>? abortTrigger, }) async {
    final response = await postQsSetupVncWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Query QuickServer bandwidth usage via POST (filtered variant)
  ///
  /// Functional duplicate of `getQsTrafficUsage` exposed under POST so clients can pass a filter body. Path param: `id` (integer). Body fields are accepted but the current handler ignores them and returns the full current-cycle dataset. Returns: same bandwidth-data object as `getQsTrafficUsage`. Errors: 401 if unauthenticated. No active-status or ownership gate. Siblings: `getQsTrafficUsage`, `postVpsTrafficUsage`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> postQsTrafficUsageWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/traffic_usage'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Query QuickServer bandwidth usage via POST (filtered variant)
  ///
  /// Functional duplicate of `getQsTrafficUsage` exposed under POST so clients can pass a filter body. Path param: `id` (integer). Body fields are accepted but the current handler ignores them and returns the full current-cycle dataset. Returns: same bandwidth-data object as `getQsTrafficUsage`. Errors: 401 if unauthenticated. No active-status or ownership gate. Siblings: `getQsTrafficUsage`, `postVpsTrafficUsage`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<void> postQsTrafficUsage(int id, { Future<void>? abortTrigger, }) async {
    final response = await postQsTrafficUsageWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Submit changes and re-fetch the QuickServer dashboard view payload
  ///
  /// Same handler as `getQsViewDesktop` but accessible via POST so callers can pass body fields alongside re-fetching the view. Path param: `id`. Body fields are accepted by the underlying View handler. Returns: refreshed dashboard object — `serviceInfo`, `client_links`, etc. Errors: 401 if unauthenticated. For structured updates prefer the dedicated endpoints (`postQsChangeHostname`, `postQsReverseDns`, `postQsSetupVnc`, etc.) which return queue IDs. Siblings: `getQsViewDesktop`, `postVpsViewDesktop`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> postQsViewDesktopWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/view_desktop'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Submit changes and re-fetch the QuickServer dashboard view payload
  ///
  /// Same handler as `getQsViewDesktop` but accessible via POST so callers can pass body fields alongside re-fetching the view. Path param: `id`. Body fields are accepted by the underlying View handler. Returns: refreshed dashboard object — `serviceInfo`, `client_links`, etc. Errors: 401 if unauthenticated. For structured updates prefer the dedicated endpoints (`postQsChangeHostname`, `postQsReverseDns`, `postQsSetupVnc`, etc.) which return queue IDs. Siblings: `getQsViewDesktop`, `postVpsViewDesktop`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<void> postQsViewDesktop(int id, { Future<void>? abortTrigger, }) async {
    final response = await postQsViewDesktopWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
  ///
  /// Overwrites the live disk with a backup. Path param: `id`. Body (form): `backup` (composite key `<type>:<service>:<name>` from `getQsBackups`), `password` (caller's account login password — required for non-admin to confirm). Validates backup exists, caller's password (when applicable), and that the QuickServer disk is large enough (size check skipped for ZFS). Queues `snapshot_restore` for ZFS or `restore` for swift/minio; allow up to 10 minutes. Returns: `{ text, queueId }`. Errors: 401, 404 if not owned, 409 if status != `active`, errors for invalid password, missing backup, or insufficient disk space. Siblings: `getQsBackups`, `getQsBackup` (create), `postVpsRestore`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  ///
  /// * [RestoreRequest] restoreRequest (required):
  ///   QuickServer Restore request
  Future<Response> postQuickServerRestoreWithHttpInfo(int id, RestoreRequest restoreRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}/restore'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = restoreRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
  ///
  /// Overwrites the live disk with a backup. Path param: `id`. Body (form): `backup` (composite key `<type>:<service>:<name>` from `getQsBackups`), `password` (caller's account login password — required for non-admin to confirm). Validates backup exists, caller's password (when applicable), and that the QuickServer disk is large enough (size check skipped for ZFS). Queues `snapshot_restore` for ZFS or `restore` for swift/minio; allow up to 10 minutes. Returns: `{ text, queueId }`. Errors: 401, 404 if not owned, 409 if status != `active`, errors for invalid password, missing backup, or insufficient disk space. Siblings: `getQsBackups`, `getQsBackup` (create), `postVpsRestore`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  ///
  /// * [RestoreRequest] restoreRequest (required):
  ///   QuickServer Restore request
  Future<QueueResponse?> postQuickServerRestore(int id, RestoreRequest restoreRequest, { Future<void>? abortTrigger, }) async {
    final response = await postQuickServerRestoreWithHttpInfo(id, restoreRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponse',) as QueueResponse;
    
    }
    return null;
  }

  /// Validate a QuickServer order without charging or provisioning
  ///
  /// Dry-run the order payload before calling `addQs`. No invoice is created and no service is provisioned. Use to surface form errors, compute the price, and resolve the chosen `server`/`os`/`distro` against the master pool. Body (form): `server` (master ID), `password`, `os` (template), `comment`, `tos`. Returns the `validate_buy_qs` result with `continue` flag, normalized fields, `service_cost`, and `errors` array. Errors: 401 if unauthenticated; validation errors are returned in the body, not as 4xx. Siblings: `addQs` (commits the order), `getNewQs` (form metadata), `putVps` (VPS equivalent).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [QsOrderRequest] qsOrderRequest (required):
  Future<Response> putQsWithHttpInfo(QsOrderRequest qsOrderRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/order';

    // ignore: prefer_final_locals
    Object? postBody = qsOrderRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Validate a QuickServer order without charging or provisioning
  ///
  /// Dry-run the order payload before calling `addQs`. No invoice is created and no service is provisioned. Use to surface form errors, compute the price, and resolve the chosen `server`/`os`/`distro` against the master pool. Body (form): `server` (master ID), `password`, `os` (template), `comment`, `tos`. Returns the `validate_buy_qs` result with `continue` flag, normalized fields, `service_cost`, and `errors` array. Errors: 401 if unauthenticated; validation errors are returned in the body, not as 4xx. Siblings: `addQs` (commits the order), `getNewQs` (form metadata), `putVps` (VPS equivalent).
  ///
  /// Parameters:
  ///
  /// * [QsOrderRequest] qsOrderRequest (required):
  Future<void> putQs(QsOrderRequest qsOrderRequest, { Future<void>? abortTrigger, }) async {
    final response = await putQsWithHttpInfo(qsOrderRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Cancel a QuickServer service at the end of the current billing cycle
  ///
  /// Schedules deprovisioning. The server keeps running until the current billing period ends, then is canceled and the recurring invoice stops. Path param: `id` (integer). Returns: `{ success: bool, text: string }`. Errors: 401 if unauthenticated, 404 if not owned by caller. Reversible only by support before the cycle closes — use `getQsInvoices` to check the next invoice date first. Siblings: `getQsInfo`, `VPSCancel` (VPS equivalent), `serversCancel` (dedicated equivalent).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<Response> quickserversCancelWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Cancel a QuickServer service at the end of the current billing cycle
  ///
  /// Schedules deprovisioning. The server keeps running until the current billing period ends, then is canceled and the recurring invoice stops. Path param: `id` (integer). Returns: `{ success: bool, text: string }`. Errors: 401 if unauthenticated, 404 if not owned by caller. Reversible only by support before the cycle closes — use `getQsInvoices` to check the next invoice date first. Siblings: `getQsInfo`, `VPSCancel` (VPS equivalent), `serversCancel` (dedicated equivalent).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   QuickServer ID number
  Future<QuickserversCancel200Response?> quickserversCancel(int id, { Future<void>? abortTrigger, }) async {
    final response = await quickserversCancelWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuickserversCancel200Response',) as QuickserversCancel200Response;
    
    }
    return null;
  }

  /// Update QuickServer order metadata or stored settings without OS impact
  ///
  /// Mutates QuickServer-level settings (comment, stored notes) without affecting the running OS. Path param: `id`. Body fields are module-specific and processed by the shared `View::go` handler. Returns: `SuccessTextResponse`. Errors: 401 if unauthenticated, 404 if not owned by caller. For server-side actions use the dedicated endpoints — hostname via `postQsChangeHostname`, password via `postQsChangeRootPassword`, OS via `postQsReinstallOs`. Siblings: `getQsInfo` (read), `quickserversCancel` (delete).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   QuickServer ID number.
  Future<Response> updateQsInfoWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/qs/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Update QuickServer order metadata or stored settings without OS impact
  ///
  /// Mutates QuickServer-level settings (comment, stored notes) without affecting the running OS. Path param: `id`. Body fields are module-specific and processed by the shared `View::go` handler. Returns: `SuccessTextResponse`. Errors: 401 if unauthenticated, 404 if not owned by caller. For server-side actions use the dedicated endpoints — hostname via `postQsChangeHostname`, password via `postQsChangeRootPassword`, OS via `postQsReinstallOs`. Siblings: `getQsInfo` (read), `quickserversCancel` (delete).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   QuickServer ID number.
  Future<SuccessTextResponse?> updateQsInfo(String id, { Future<void>? abortTrigger, }) async {
    final response = await updateQsInfoWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessTextResponse',) as SuccessTextResponse;
    
    }
    return null;
  }
}
