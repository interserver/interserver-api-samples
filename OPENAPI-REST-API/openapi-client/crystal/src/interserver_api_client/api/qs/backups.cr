require "json"

module InterserverApiClient
  module Api
  class Qs::Backups
    def initialize(@conn : Connection); end

    # Permanently delete a QuickServer backup file from object storage Removes the backup from its storage backend. Irreversible — the backup cannot be recovered. Path param: &#x60;id&#x60;. Required: &#x60;file&#x60; (the backup &#x60;name&#x60; from &#x60;getQsBackups&#x60;, in query or form body). Works for &#x60;swift&#x60; and &#x60;minio&#x60; backups; &#x60;zfs&#x60; snapshots cannot be deleted via this endpoint (returns an error pointing to support). Returns: &#x60;SuccessTextResponse&#x60; with the removed name. Errors: 401, 404 if not owned, error message if backup type is unsupported or the storage operation fails. Siblings: &#x60;getQsBackups&#x60; (list), &#x60;downloadQsBackup&#x60; (PATCH), &#x60;postQuickServerRestore&#x60;.
    def bulk_destroy(id : Int32, *, all : String? = nil, file : String? = nil) : Response(InterserverApiClient::SuccessTextResponse)
      @conn.request(InterserverApiClient::SuccessTextResponse,
        method: :DELETE,
        path: "/qs/{id}/backups".sub("{id}", InterserverApiClient.enc(id)),
        query: { "all" => all, "file" => file },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Generate a 24-hour pre-signed download URL for a QuickServer backup Returns a temporary signed URL to fetch the backup directly from object storage. Path param: &#x60;id&#x60;. Body (JSON or form): &#x60;file&#x60; (the backup &#x60;name&#x60; from &#x60;getQsBackups&#x60;). Only available for &#x60;minio&#x60;-type backups; &#x60;swift&#x60; and &#x60;zfs&#x60; backups return an error directing the caller to contact support. URL expires in 24 hours. Returns: &#x60;{ text, url }&#x60;. Errors: 401, 404 if not owned, error message for unsupported backup type or sharing failure. Siblings: &#x60;getQsBackups&#x60; (list, get &#x60;name&#x60;), &#x60;deleteQsBackup&#x60;, &#x60;postQuickServerRestore&#x60;.
    def bulk_partial_update(id : Int32, download_qs_backup_request : InterserverApiClient::DownloadQsBackupRequest, *, all : String? = nil) : Response(InterserverApiClient::DownloadQsBackup200Response)
      @conn.request(InterserverApiClient::DownloadQsBackup200Response,
        method: :PATCH,
        path: "/qs/{id}/backups".sub("{id}", InterserverApiClient.enc(id)),
        body: download_qs_backup_request,
        query: { "all" => all },
        accept: %w[application/json],
        content_type: %w[application/json multipart/form-data],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # List available QuickServer backups across Swift, MinIO, and ZFS storage Returns all backups visible to the caller for this QuickServer across the three backup backends. Path param: &#x60;id&#x60; (integer). Optional query &#x60;all&#x3D;1&#x60; lists every backup the customer owns, not just this server&#39;s. Returns: &#x60;VpsBackupRows&#x60; array — each row has &#x60;name&#x60;, &#x60;type&#x60; (swift/minio/zfs), &#x60;size&#x60;, &#x60;service&#x60;, &#x60;path&#x60;. Use &#x60;name&#x60; (not a numeric ID) with &#x60;downloadQsBackup&#x60; (PATCH), &#x60;deleteQsBackup&#x60; (DELETE), or &#x60;postQuickServerRestore&#x60;. Errors: 401, 404 if not owned by caller. Siblings: &#x60;getQsBackup&#x60; (create), &#x60;postQuickServerRestore&#x60;.
    def list(id : Int32, *, all : String? = nil) : Response(InterserverApiClient::VpsBackupRows)
      @conn.request(InterserverApiClient::VpsBackupRows,
        method: :GET,
        path: "/qs/{id}/backups".sub("{id}", InterserverApiClient.enc(id)),
        query: { "all" => all },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
