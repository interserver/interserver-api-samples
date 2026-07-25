require "json"

module InterserverApiClient
  module Api
  class Vps::Backups
    def initialize(@conn : Connection); end

    # Permanently delete a VPS backup file by name (irreversible) Removes a backup file from storage to free space. For &#x60;minio&#x60;-typed backups runs &#x60;mc rm --force --recursive&#x60; on the path; for &#x60;swift&#x60;-typed backups removes the storage object via the Swift API. ZFS-typed backups **cannot** be deleted through this endpoint — they return an error directing the caller to open a support ticket. **Irreversible** — once deleted the backup cannot be used with &#x60;postVpsRestore&#x60; or &#x60;downloadVpsBackup&#x60;. Sibling ops: &#x60;getVpsBackups&#x60; (list), &#x60;downloadVpsBackup&#x60; (download first), &#x60;getVpsBackup&#x60; (create new).  **Path param:** - &#x60;id&#x60; (integer, required) — VPS id from &#x60;getVpsList.vps_id&#x60;.  **Query params:** - &#x60;file&#x60; (string, required) — exact &#x60;name&#x60; from &#x60;getVpsBackups&#x60; (the canonical backup identifier).  **Returns:** &#x60;SuccessTextResponse&#x60; — &#x60;Backup &lt;name&gt; removed.&#x60; on success.  **Side effects:** - **minio**: &#x60;mc rm --force --recursive&#x60; removes the entire backup directory. - **swift**: deletes the listed object(s) plus any multi-part &#x60;extra&#x60; segments.  **Auth:** Session/API key. Ownership enforced via parent VPS.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;No file specified&#x60; — &#x60;file&#x60; query param missing. - **ZFS backup:** &#x60;This type of backup if not removable. Please contact support if you need this removed.&#x60; - **MinIO rm failure:** &#x60;Error removing file &lt;name&gt;&#x60;.  **Related calls:** - **List first to get &#x60;name&#x60;:** &#x60;getVpsBackups&#x60;. - **Download before deleting:** &#x60;downloadVpsBackup&#x60; (MinIO only; Swift/ZFS disabled). - **Restore (don&#39;t delete):** &#x60;postVpsRestore&#x60;. 
    def bulk_destroy(id : Int32, *, all : String? = nil, file : String? = nil) : Response(InterserverApiClient::SuccessTextResponse)
      @conn.request(InterserverApiClient::SuccessTextResponse,
        method: :DELETE,
        path: "/vps/{id}/backups".sub("{id}", InterserverApiClient.enc(id)),
        query: { "all" => all, "file" => file },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Issue a 24-hour pre-signed URL to download a MinIO-backed VPS backup Generates a time-limited download link for a MinIO/S3-backed VPS backup so the customer can fetch it off-platform. Runs &#x60;mc share download --expire&#x3D;24h&#x60; against the resolved backup path and returns the resulting public URL — valid for 24 hours from issue. Only &#x60;minio&#x60;-typed backups are downloadable; &#x60;swift&#x60; and &#x60;zfs&#x60; backups have direct download disabled (returns an error directing the customer to support). Sibling ops: &#x60;getVpsBackups&#x60; (list to find &#x60;name&#x60;), &#x60;postVpsRestore&#x60; (restore in place — no download needed), &#x60;deleteVpsBackup&#x60;, &#x60;getVpsBackup&#x60; (create new).  **Path param:** - &#x60;id&#x60; (integer, required) — VPS id from &#x60;getVpsList.vps_id&#x60;.  **Body (JSON or multipart, required):** - &#x60;file&#x60; (string, required) — exact &#x60;name&#x60; from &#x60;getVpsBackups&#x60;.  **Returns:** - &#x60;text&#x60; (string) — &#x60;URL available for the next 24 hours&#x60;. - &#x60;url&#x60; (string) — pre-signed download URL (HTTPS).  **Auth:** Session/API key. Ownership enforced via parent VPS.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;No file specified&#x60; — &#x60;file&#x60; body field missing. - **Swift backup:** &#x60;Downloads for this type have been disabled. Please contact support if you need this backup.&#x60; - **ZFS backup:** same disabled message. - **MinIO share failure:** &#x60;Error sharing file &lt;name&gt;&#x60;.  **Related calls:** - **Prerequisite:** &#x60;getVpsBackups&#x60; (find a backup with &#x60;type &#x3D;&#x3D; \&quot;minio\&quot;&#x60;). - **Alternative:** &#x60;postVpsRestore&#x60; (restore in place — no download). - **Cleanup after download:** &#x60;deleteVpsBackup&#x60;. 
    def bulk_partial_update(id : Int32, download_qs_backup_request : InterserverApiClient::DownloadQsBackupRequest, *, all : String? = nil) : Response(InterserverApiClient::DownloadQsBackup200Response)
      @conn.request(InterserverApiClient::DownloadQsBackup200Response,
        method: :PATCH,
        path: "/vps/{id}/backups".sub("{id}", InterserverApiClient.enc(id)),
        body: download_qs_backup_request,
        query: { "all" => all },
        accept: %w[application/json],
        content_type: %w[application/json multipart/form-data],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # List existing backups for the VPS across Swift, MinIO, and ZFS Enumerates the backup files available for the VPS across all backend storage systems (OpenStack Swift, MinIO/S3, and ZFS snapshots). Each entry&#39;s &#x60;name&#x60; is the canonical identifier the caller must pass to sibling endpoints (&#x60;downloadVpsBackup&#x60;, &#x60;deleteVpsBackup&#x60;, &#x60;postVpsRestore&#x60;) — there is no separate integer id. The list is filtered to the VPS&#39;s owner by default; admins can list all backups on the account by passing &#x60;all&#x3D;1&#x60;. Sibling ops: &#x60;getVpsBackup&#x60; (create new), &#x60;downloadVpsBackup&#x60;, &#x60;deleteVpsBackup&#x60;, &#x60;postVpsRestore&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — VPS id from &#x60;getVpsList.vps_id&#x60;.  **Query params:** - &#x60;all&#x60; (string, optional, enum &#x60;0&#x60;/&#x60;1&#x60;, default &#x60;0&#x60;) — set to &#x60;1&#x60; to list every backup across all services on the account, not just the ones for &#x60;{id}&#x60;.  **Returns:** &#x60;VpsBackupRows&#x60; — array of objects: - &#x60;name&#x60; (string) — canonical identifier, e.g. &#x60;vps-12345-2026-05-12.tar.gz&#x60;. - &#x60;type&#x60; (string enum) — &#x60;swift&#x60; / &#x60;minio&#x60; / &#x60;zfs&#x60;. Determines which operations are available (see Sibling notes). - &#x60;service&#x60; (integer) — VPS id the backup belongs to. - &#x60;path&#x60; (string) — storage path/URL. - &#x60;size&#x60; (integer) — bytes. - &#x60;repoIdx&#x60; (integer) — repository index (0 or 1 for Swift; selects which credentials/bucket). - &#x60;extra&#x60; (array, optional) — multi-part backup pieces.  **Auth:** Session/API key. Ownership enforced via &#x60;vps_custid&#x60; on the parent VPS.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; — &#x60;id&#x60; not owned by caller.  **Capability matrix by backup type:** - &#x60;swift&#x60;: list ✓, download ✗ (disabled — contact support), delete ✓. - &#x60;minio&#x60;: list ✓, download ✓ (24-hr pre-signed URL via &#x60;downloadVpsBackup&#x60;), delete ✓. - &#x60;zfs&#x60;: list ✓, download ✗ (disabled), delete ✗ (open a ticket).  **Related calls:** - **Create new:** &#x60;getVpsBackup&#x60;. - **Download:** &#x60;downloadVpsBackup&#x60; (PATCH). - **Delete:** &#x60;deleteVpsBackup&#x60; (DELETE). - **Restore:** &#x60;postVpsRestore&#x60; — pass &#x60;backup&#x60; as &#x60;&lt;type&gt;:&lt;service&gt;:&lt;name&gt;&#x60;. 
    def list(id : Int32, *, all : String? = nil) : Response(InterserverApiClient::VpsBackupRows)
      @conn.request(InterserverApiClient::VpsBackupRows,
        method: :GET,
        path: "/vps/{id}/backups".sub("{id}", InterserverApiClient.enc(id)),
        query: { "all" => all },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
