'use strict';


/**
 * Place a QuickServer order, generating a real invoice and queuing provisioning
 * Commits the validated order: creates the service row, generates a real invoice, and queues provisioning. Body fields match `putQs` (`server`, `password`, `os`, `comment`, `tos`) — call `putQs` first to catch errors. On `validation.continue=false`, returns the joined error string with no charge. Returns: `ServiceOrderPostResponse` with the new service ID and invoice info. Pay via `getBillingInvoice`/`initiatePayment`. Errors: 401 if unauthenticated, 4xx with message on validation failure. Siblings: `putQs` (validate first), `getNewQs`, `addVps` (VPS equivalent).
 *
 * body QsOrderRequest 
 * returns ServiceOrderPostResponse
 **/
exports.addQs = function(body) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "continue" : true,
  "errors" : [ ],
  "total_cost" : "5.00",
  "iid" : "25296600",
  "iids" : [ "SERVICE12345" ],
  "real_iids" : [ "25296600" ],
  "serviceId" : 12345,
  "invoice_description" : "New Service Order"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Permanently delete a QuickServer backup file from object storage
 * Removes the backup from its storage backend. Irreversible — the backup cannot be recovered. Path param: `id`. Required: `file` (the backup `name` from `getQsBackups`, in query or form body). Works for `swift` and `minio` backups; `zfs` snapshots cannot be deleted via this endpoint (returns an error pointing to support). Returns: `SuccessTextResponse` with the removed name. Errors: 401, 404 if not owned, error message if backup type is unsupported or the storage operation fails. Siblings: `getQsBackups` (list), `downloadQsBackup` (PATCH), `postQuickServerRestore`.
 *
 * id Integer QuickServer ID number
 * file String The backup filename to delete.
 * all String Set to `1` to list all backups across all services, not just the ones for the given QuickServer. (optional)
 * returns SuccessTextResponse
 **/
exports.deleteQsBackup = function(id,file,all) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Ok"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Block outbound SMTP traffic on a QuickServer to halt mail abuse
 * Queues a firewall rule that drops outbound port 25 traffic, used to halt spam/abuse without taking the server offline. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes via the queue worker, which also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Reversible only by support — there is no `unblock_smtp` endpoint. Siblings: `doVpsBlockSmtp`, `getQsInfo`.
 *
 * id Integer QuickServer ID number.
 * returns QueueResponse
 **/
exports.doQsBlockSmtp = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Disable the virtual CD/DVD drive device on a QuickServer
 * Queues removal of the virtual CD/DVD device from the QuickServer (full disable, not just eject). Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `doQsEjectCd` (eject the ISO but keep drive), `postQsInsertCd` (mount an ISO), `getQsInsertCd` (list available ISOs).
 *
 * id Integer QuickServer ID number.
 * returns QueueResponse
 **/
exports.doQsDisableCd = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Disable disk-quota enforcement at OS level on a QuickServer
 * Queues a job to turn off disk-quota enforcement at the OS level. Use when quota errors block legitimate writes or before resizing disk space. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Re-enable later with `doQsEnableQuota`. Siblings: `doQsEnableQuota` (re-enable), `doVpsDisableQuota` (VPS equivalent).
 *
 * id Integer QuickServer ID number.
 * returns QueueResponse
 **/
exports.doQsDisableQuota = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Eject the currently mounted ISO from a QuickServer's virtual CD drive
 * Queues an eject — drive remains attached but no media. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes. The queue worker also re-runs VNC setup so the console reflects the change. Errors: 401, 404 if `id` is not owned by caller. Note: this handler does not validate `active` status. Siblings: `postQsInsertCd` (mount an ISO), `getQsInsertCd` (list ISOs), `doQsDisableCd` (remove the drive itself).
 *
 * id Integer QuickServer ID number.
 * returns QueueResponse
 **/
exports.doQsEjectCd = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Enable disk-quota enforcement at OS level on a QuickServer
 * Queues a job to turn on disk-quota enforcement at the OS level. Pair with `doQsDisableQuota` when re-enabling after maintenance, disk resizing, or restoring a backup. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `doQsDisableQuota` (turn off), `doVpsEnableQuota` (VPS equivalent).
 *
 * id Integer QuickServer ID number.
 * returns QueueResponse
 **/
exports.doQsEnableQuota = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Reboot a QuickServer with a graceful OS-level restart
 * Queues a graceful restart — equivalent to `reboot` inside the OS. Path param: `id` (integer). No body. Use to recover from a hung service or apply pending kernel/config changes. Returns: `{ text, queueId }`. Async — server is back online within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on `active` status — restarts work even on suspended services. Siblings: `doQsStart`, `doQsStop`, `doVpsRestart`.
 *
 * id Integer QuickServer ID number.
 * returns QueueResponse
 **/
exports.doQsRestart = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Power on a QuickServer that is currently stopped or pending boot
 * Queues a `start` command to bring the QuickServer online. Path param: `id` (integer). No body. Idempotent in practice — re-running on an already-on server is a no-op at the worker. Returns: `{ text, queueId }`. Async — typically online within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status, so it can be issued even for non-active services. Siblings: `doQsStop`, `doQsRestart`, `getQsInfo`, `doVpsStart`.
 *
 * id Integer QuickServer ID number.
 * returns QueueResponse
 **/
exports.doQsStart = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Power off a QuickServer with a graceful shutdown command
 * Queues a `stop` command. Path param: `id` (integer). No body. Use before maintenance, snapshot, or to halt traffic — billing continues regardless of power state, so use `quickserversCancel` to also stop charges. Returns: `{ text, queueId }`. Async — typically off within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status. Siblings: `doQsStart`, `doQsRestart`, `doVpsStop`.
 *
 * id Integer QuickServer ID number.
 * returns QueueResponse
 **/
exports.doQsStop = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Generate a 24-hour pre-signed download URL for a QuickServer backup
 * Returns a temporary signed URL to fetch the backup directly from object storage. Path param: `id`. Body (JSON or form): `file` (the backup `name` from `getQsBackups`). Only available for `minio`-type backups; `swift` and `zfs` backups return an error directing the caller to contact support. URL expires in 24 hours. Returns: `{ text, url }`. Errors: 401, 404 if not owned, error message for unsupported backup type or sharing failure. Siblings: `getQsBackups` (list, get `name`), `deleteQsBackup`, `postQuickServerRestore`.
 *
 * body Id_backups_body 
 * all String Set to `1` to list all backups across all services, not just the ones for the given QuickServer. (optional)
 * id Integer QuickServer ID number
 * returns inline_response_200_12
 **/
exports.downloadQsBackup = function(body,all,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "text",
  "url" : "url"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Generate a 24-hour pre-signed download URL for a QuickServer backup
 * Returns a temporary signed URL to fetch the backup directly from object storage. Path param: `id`. Body (JSON or form): `file` (the backup `name` from `getQsBackups`). Only available for `minio`-type backups; `swift` and `zfs` backups return an error directing the caller to contact support. URL expires in 24 hours. Returns: `{ text, url }`. Errors: 401, 404 if not owned, error message for unsupported backup type or sharing failure. Siblings: `getQsBackups` (list, get `name`), `deleteQsBackup`, `postQuickServerRestore`.
 *
 * body Id_backups_body 
 * all String Set to `1` to list all backups across all services, not just the ones for the given QuickServer. (optional)
 * id Integer QuickServer ID number
 * returns inline_response_200_12
 **/
exports.downloadQsBackup = function(body,all,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "text",
  "url" : "url"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Get QuickServer order form metadata and available plans/templates
 * Use before placing or validating a QuickServer order to retrieve pricing, available servers, OS templates, and form fields. Read-only — no params, no body, no charge. Returns: `QuickserverOrder` schema with plan/template/server options used to build the order payload for `putQs` (validate) or `addQs` (place). Errors: 401 if unauthenticated. Siblings: `putQs` (dry-run validation), `addQs` (commits and invoices), `getNewVps` (virtual VPS ordering surface).
 *
 * returns QuickserverOrder
 **/
exports.getNewQs = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "server_details" : {
    "381" : {
      "cores" : 24,
      "cost" : "$140.00",
      "cpu" : "AMD Ryzen 9 5900X 12-Core Processor",
      "hd" : "1760GB",
      "ram" : "119GB"
    }
  },
  "distro_sel" : {
    "Ubuntu" : {
      "Ubuntu" : "Ubuntu"
    }
  },
  "qs_id" : "221",
  "templates" : {
    "Ubuntu" : [ [ "ubuntu24", "ubuntu24" ], [ "ubuntu24", "ubuntu24" ] ]
  },
  "version" : {
    "centosstream-8" : {
      "centosstream-8" : "8 Stream (64 bits)"
    }
  }
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Queue creation of a new QuickServer backup snapshot (note: GET triggers job)
 * Note: GET on `/qs/{id}/backup` triggers a backup job — despite the verb, this is a state-changing action. Queues a `backup` operation; backup name is auto-generated. Path param: `id` (integer). Returns: `{ text, queueId }`. Async — backup completes in minutes to hours depending on disk size. Poll `getQsBackups` to see when it appears. Errors: 401 if unauthenticated, 404 if not owned by caller, 409 if status != `active`. Siblings: `getQsBackups` (list), `postQuickServerRestore`, `downloadQsBackup`, `deleteQsBackup`.
 *
 * id Integer QuickServer ID number
 * returns QueueResponse
 **/
exports.getQsBackup = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * List available QuickServer backups across Swift, MinIO, and ZFS storage
 * Returns all backups visible to the caller for this QuickServer across the three backup backends. Path param: `id` (integer). Optional query `all=1` lists every backup the customer owns, not just this server's. Returns: `VpsBackupRows` array — each row has `name`, `type` (swift/minio/zfs), `size`, `service`, `path`. Use `name` (not a numeric ID) with `downloadQsBackup` (PATCH), `deleteQsBackup` (DELETE), or `postQuickServerRestore`. Errors: 401, 404 if not owned by caller. Siblings: `getQsBackup` (create), `postQuickServerRestore`.
 *
 * id Integer QuickServer ID number
 * all String Set to `1` to list all backups across all services, not just the ones for the given QuickServer. (optional)
 * returns VpsBackupRows
 **/
exports.getQsBackups = function(id,all) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = [ {
  "type" : "zfs",
  "service" : 2722890,
  "name" : "first",
  "size" : 3229615,
  "date" : 1694082660
}, {
  "type" : "swift",
  "service" : 100,
  "name" : "reset_shot_vps100_20210928.jpg",
  "size" : 40621,
  "date" : 1632842251
}, {
  "type" : "swift",
  "service" : 100,
  "name" : "reset_shot_vps100_20210929.jpg",
  "size" : 36319,
  "date" : 1632968243
} ];
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Get current QuickServer hostname plus change rules and platform support
 * Read-only probe before calling `postQsChangeHostname`. Path param: `id` (integer). Returns the current hostname and the validation rules the new hostname must satisfy. Returns: object with hostname metadata. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: hostname changes are only supported on OpenVZ/Virtuozzo platforms — `postQsChangeHostname` rejects KVM/dedicated types with an explanatory error. Siblings: `postQsChangeHostname`, `getVpsChangeHostname`.
 *
 * id Integer QuickServer ID number
 * no response value expected for this operation
 **/
exports.getQsChangeHostname = function(id) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Get metadata for QuickServer root/OS password change requirements
 * Read-only probe before calling `postQsChangeRootPassword`. Path param: `id` (integer). Use to surface password complexity rules and confirm the QuickServer accepts root password changes. Returns: object with reset metadata. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: this changes the OS root password (Linux) — for the Webuzo control panel password use `postQsChangeWebuzoPassword`. Siblings: `postQsChangeRootPassword`, `postQsResetPassword` (random password), `getVpsChangeRootPassword`.
 *
 * id Integer QuickServer ID number
 * no response value expected for this operation
 **/
exports.getQsChangeRootPassword = function(id) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * List timezones the QuickServer can be set to via change_timezone
 * Returns the system timezone catalog (parsed from `/usr/share/zoneinfo/zone.tab`) for use with `postQsChangeTimezone`. Path param: `id` (integer). Read-only — no queue, no charge. Returns: array of timezone strings (e.g. `America/New_York`, `Europe/London`). Errors: 401, 404 if not owned by caller, 409 if status != `active` (handler labels these errors as `Invalid VPS Passed` / `VPS is not active` due to shared code). Siblings: `postQsChangeTimezone` (commit), `getVpsChangeTimezone`, `getQsChangeHostname` (also informational).
 *
 * id Integer QuickServer ID number
 * returns List
 **/
exports.getQsChangeTimezone = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = [ "", "" ];
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Get metadata for changing the Webuzo control panel admin password
 * Read-only probe before `postQsChangeWebuzoPassword`. Path param: `id` (integer). Webuzo is a control panel optionally installed on QuickServers — its admin password is separate from the OS root password. Returns: object with change instructions. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `postQsChangeWebuzoPassword`, `postQsChangeRootPassword` (OS root password), `postQsResetPassword`.
 *
 * id Integer QuickServer ID number
 * no response value expected for this operation
 **/
exports.getQsChangeWebuzoPassword = function(id) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Get full details for one QuickServer including credentials and links
 * Returns the QuickServer dashboard payload — service info, IPs, hostname, OS, status, billing, and the list of available `client_links` (action endpoints the caller is allowed to invoke). Path param: `id` (integer QuickServer ID). Returns: `Quickserver` schema. Use response links to drive `doQsStart`, `doQsStop`, `doQsRestart`, `getQsBackups`, `getQsReinstallOs`, `getQsReverseDns`, `getQsInvoices`. Errors: 401 if unauthenticated, 404 if `id` is not owned by caller. Siblings: `updateQsInfo` (mutate), `quickserversCancel` (delete), `getVpsInfo` (VPS equivalent).
 *
 * id Integer QuickServer ID number.
 * returns Quickserver
 **/
exports.getQsInfo = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "package" : "Rapid Deploy Server",
  "memory" : "0GB",
  "client_links" : [ {
    "link" : "invoices",
    "icon" : "fas fa-file-invoice-dollar fa-w-12",
    "other_attr" : "other_attr",
    "label" : "Invoices",
    "icon_text" : "",
    "help_text" : "Invoice History"
  }, {
    "link" : "invoices",
    "icon" : "fas fa-file-invoice-dollar fa-w-12",
    "other_attr" : "other_attr",
    "label" : "Invoices",
    "icon_text" : "",
    "help_text" : "Invoice History"
  } ],
  "billingDetails" : {
    "service_currency" : "USD",
    "service_extra" : {
      "platform" : "kvm"
    },
    "service_payment_status" : "Paid",
    "service_next_invoice_date" : "May 11, 2023",
    "service_frequency" : "Monthly",
    "service_last_invoice_date" : "April 11, 2023",
    "service_currency_symbol" : "$",
    "service_extra_json" : "{\"platform\":\"kvm\"}",
    "service_cost_info" : "49.00",
    "next_date" : "2023-05-11T20:00:06.000Z"
  },
  "serviceMaster" : {
    "qs_bytes_sec_out" : "0",
    "qs_hdsize" : "1760",
    "qs_cores" : "8",
    "qs_name" : "Qs365",
    "qs_available" : "0",
    "qs_bits" : "64",
    "qs_last_update" : "2023-08-17T23:52:02.000Z",
    "qs_ip" : "",
    "qs_cost" : "49",
    "qs_order" : "92263",
    "qs_distro" : "Ubuntu",
    "qs_hdfree" : "1192",
    "qs_packets_sec_out" : "0",
    "qs_ram" : "29550679",
    "qs_iowait" : "6.89",
    "qs_cpu_flags" : "",
    "qs_last_install_time" : "qs_last_install_time",
    "qs_location" : "1",
    "qs_packets_sec_in" : "0",
    "qs_distro_version" : "22.04",
    "qs_ioping" : "330707348",
    "qs_speed" : "1000",
    "qs_kernel" : "5.15.0-69-generic",
    "qs_cpu_model" : "Intel(R) Xeon(R) CPU E3-1271 v3 @ 3.60GHz",
    "qs_load" : "3.45",
    "qs_bytes_sec_in" : "0",
    "qs_raid_building" : "0",
    "qs_partitions" : "qs_partitions",
    "qs_raid_status" : "OK: zfs:all pools are healthy",
    "qs_id" : "365",
    "qs_cpu_mhz" : "2900",
    "qs_type" : "14",
    "qs_drive_type" : "SSD"
  },
  "module" : "quickservers",
  "cpu_graph_data" : "{\"labels\":[],\"value\":[]}",
  "serviceInfo" : {
    "qs_rootpass" : "",
    "qs_extra" : "{\"platform\":\"kvm\"}",
    "qs_hostname" : "qs24355",
    "qs_custid" : "771282",
    "qs_ip" : "",
    "qs_server" : "365",
    "qs_os" : "ubuntu24",
    "qs_vzid" : "qs24355",
    "qs_version" : "Ubuntu",
    "qs_location" : "1",
    "qs_vnc" : "99.88.77.66",
    "qs_comment" : "",
    "qs_invoice" : "20297531",
    "qs_platform" : "qs_platform",
    "qs_mac" : "",
    "qs_order_date" : "2023-04-11T20:00:06.000Z",
    "qs_ipv6" : "qs_ipv6",
    "qs_coupon" : "0",
    "qs_currency" : "USD",
    "qs_slices" : "0",
    "qs_id" : "24355",
    "qs_status" : "canceled",
    "qs_type" : "700",
    "qs_server_status" : "deleted",
    "qs_vnc_port" : 0
  },
  "extraInfoTables" : {
    "addons" : {
      "title" : "Addons",
      "rows" : [ {
        "value" : "",
        "desc" : "Additional IP Address"
      }, {
        "value" : "",
        "desc" : "Additional IP Address"
      } ]
    },
    "ip_info" : {
      "title" : "IP Information",
      "rows" : [ {
        "value" : "",
        "desc" : "Netmask"
      }, {
        "value" : "",
        "desc" : "Netmask"
      } ]
    }
  },
  "disk_percentage" : 32.27,
  "hdd" : "0GB",
  "bandwidth_yaxis" : "[]",
  "token" : "%3Ftoken%3DAKLFIJOAQIRFOPIEWQRURQOIURWQOI",
  "os_template" : "Ubuntu 22.04",
  "serviceExtra" : {
    "platform" : "kvm"
  },
  "bandwidth_xaxis" : "[]",
  "service_disk_used" : "0.00 GB",
  "custCurrencySymbol" : "$",
  "service_overview_extra" : [ "service_overview_extra", "service_overview_extra" ],
  "custCurrency" : "USD",
  "service_disk_total" : "0.00 GB"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * List ISO images available to mount on a QuickServer's virtual CD
 * Returns the catalog of bootable ISOs the caller can mount via `postQsInsertCd`. Path param: `id` (integer). Read-only — no queue, no charge. Returns: object with available ISO entries (URLs/labels) keyed for the QuickServer's hardware type. Errors: 401 if unauthenticated. Note: this handler does not validate ownership or active status — pair with `getQsInfo` first if you need those checks before presenting options to a user. Siblings: `postQsInsertCd` (mount the chosen URL), `doQsEjectCd`, `doQsDisableCd`, `getVpsInsertCd`.
 *
 * id Integer QuickServer ID number
 * no response value expected for this operation
 **/
exports.getQsInsertCd = function(id) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * List billing invoices charged for one QuickServer service
 * Returns invoices charged for this QuickServer (initial setup + recurring). Path param: `id` (integer). Returns: `ChargeInvoiceRows` — each row has invoice ID, amount, status (paid/unpaid), date. Use the invoice ID with `getBillingInvoice` for full detail or `initiatePayment` to settle. Errors: 401 if unauthenticated, 404 if not owned by caller. Siblings: `getQsInfo`, `getVpsInvoices`, `getBillingInvoice`, `quickserversCancel` (check next-invoice date before canceling).
 *
 * id Integer QuickServer ID number
 * returns ChargeInvoiceRows
 **/
exports.getQsInvoices = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "invoices" : {
    "1234565" : {
      "invoices_id" : 1234565,
      "invoices_description" : "Current IP + Scrub",
      "invoices_amount" : 5,
      "invoices_date" : "2025-12-05T19:38:24.000Z",
      "invoices_paid" : 1,
      "invoices_due_date" : "2025-12-19T19:38:24.000Z",
      "invoices_currency" : "USD",
      "currency_symbol" : "$",
      "invoices_date_formatted" : "5th Dec 2025",
      "paid_invoices" : {
        "654321" : {
          "invoices_id" : "654321,",
          "invoices_description" : "Credit Card Payment 2189347824",
          "invoices_amount" : 5,
          "invoices_date" : "2025-12-05T19:38:38.000Z",
          "invoices_currency" : "USD",
          "currency_symbol" : "$",
          "invoices_date_formatted" : "5th Dec 2025",
          "payment_type" : "Credit Card Payment",
          "refund_invoices" : {
            "98765" : {
              "invoices_id" : 98765,
              "invoices_description" : "REFUND: Credit Card Payment 2189347824",
              "invoices_amount" : 5,
              "invoices_date" : "2025-12-16T13:32:22.000Z",
              "invoices_currency" : "USD",
              "currency_symbol" : "$",
              "invoices_date_formatted" : "16th Dec 2025"
            }
          }
        }
      }
    }
  }
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * List QuickServer rapid-deploy dedicated servers on the account
 * Use to enumerate the caller's QuickServers (quick-provision physical dedicated boxes that share the VPS billing model). No params, no body. Each row has `qs_id`, `qs_name`, `qs_hostname`, `qs_status`, `qs_comment`, and `cost`. Feed `qs_id` into `getQsInfo` for full details, or any per-server action (`doQsStart`, `doQsStop`, `doQsRestart`, `getQsBackups`, etc.). Returns: array of QuickServer rows. Errors: 401 if unauthenticated. Siblings: `getVpsList` (virtual VPS surface), `getQsInfo`, `getNewQs` for ordering metadata.
 *
 * returns List
 **/
exports.getQsList = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = [ {
  "qs_id" : "19504",
  "qs_name" : "Quickserver199",
  "cost" : "65.00",
  "qs_hostname" : "qs19504",
  "qs_status" : "canceled",
  "qs_comment" : ""
}, {
  "qs_id" : "19504",
  "qs_name" : "Quickserver199",
  "cost" : "65.00",
  "qs_hostname" : "qs19504",
  "qs_status" : "canceled",
  "qs_comment" : ""
} ];
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * List OS templates available for a QuickServer reinstall
 * Returns the OS template catalog filtered to the QuickServer's hardware/template type. Path param: `id` (integer). Read-only — no provisioning happens. Returns: `{ templates: [...] }` — each template has `template_file`, `template_name`, `template_version`. Use `template_file` with `postQsReinstallOs`. Non-admin callers only see templates with `template_available=1`. Errors: 401 if unauthenticated. Siblings: `postQsReinstallOs` (commit, destructive), `getVpsReinstallOs`.
 *
 * id Integer QuickServer ID number
 * returns VpsTemplatesList
 **/
exports.getQsReinstallOs = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "templates" : [ {
    "template_id" : "1906",
    "template_type" : "14",
    "template_os" : "ubuntu",
    "template_version" : "22.04",
    "template_bits" : "64",
    "template_file" : "ubuntu-22.04",
    "template_available" : "1",
    "template_name" : "Ubuntu",
    "template_dir" : ""
  }, {
    "template_id" : "1906",
    "template_type" : "14",
    "template_os" : "ubuntu",
    "template_version" : "22.04",
    "template_bits" : "64",
    "template_file" : "ubuntu-22.04",
    "template_available" : "1",
    "template_name" : "Ubuntu",
    "template_dir" : ""
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Get options for QuickServer randomized root password reset
 * Read-only probe before `postQsResetPassword`. Path param: `id` (integer). Use to confirm the QuickServer is in a state that allows password resets. Returns: object with reset configuration. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: `postQsResetPassword` generates a random password — for a chosen value use `postQsChangeRootPassword`. Siblings: `postQsResetPassword`, `postQsChangeRootPassword`, `getVpsResetPassword`.
 *
 * id Integer QuickServer ID number
 * no response value expected for this operation
 **/
exports.getQsResetPassword = function(id) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Get reverse DNS (PTR) records for all of a QuickServer's IPs
 * Returns the current PTR record for the primary IP and any additional IPs assigned to the QuickServer. Path param: `id` (integer). Read-only — looks up live DNS, no queue. Returns: `{ ips: { \"<ip>\": \"<hostname>\", ... } }`. Use the keys with `postQsReverseDns` to update entries. Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: `postQsReverseDns`, `getVpsReverseDns`.
 *
 * id Integer QuickServer ID number
 * returns ReverseDnsEntries
 **/
exports.getQsReverseDns = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "ips" : {
    "1.2.3.4" : "yourhost.com",
    "1.2.3.5" : "anotherhost.com"
  }
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Get current VNC console connection details for a QuickServer
 * Read-only probe for the VNC tunnel that exposes the server's console (host, port, credentials). Path param: `id` (integer). Returns: object with VNC connection info. Errors: 401 if unauthenticated, 404 if `id` is not owned by caller, 409 if service is not `active`. Note: this endpoint is currently a stub — the `// todo: return vnc info` line indicates the response body may be empty until completed. Siblings: `postQsSetupVnc` (configure access IP), `getVpsSetupVnc`.
 *
 * id Integer QuickServer ID number
 * no response value expected for this operation
 **/
exports.getQsSetupVnc = function(id) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Get bandwidth usage for the QuickServer's current billing period
 * Returns the inbound/outbound bandwidth totals and time-series points for the QuickServer's current cycle. Path param: `id` (integer). Read-only. Returns: bandwidth-data object from `qs_bandwidth_data` (totals, daily/hourly points, overage flag). Errors: 401 if unauthenticated. Note: handler does not gate on ownership or active status. Siblings: `postQsTrafficUsage` (same data, accessible via POST for filtered queries), `getVpsTrafficUsage`.
 *
 * id Integer QuickServer ID number
 * no response value expected for this operation
 **/
exports.getQsTrafficUsage = function(id) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Get the full QuickServer dashboard view payload (rich format)
 * Returns the same rich payload the AdminLTE UI uses — service info, billing, available client_links, resource graphs. Heavier than `getQsInfo` and intended for desktop dashboards. Path param: `id` (integer). Returns: object with `serviceInfo`, `client_links`, etc. (admin-only fields stripped). Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: `getQsInfo` (lighter), `postQsViewDesktop` (mutate variant), `getVpsViewDesktop`.
 *
 * id Integer QuickServer ID number
 * no response value expected for this operation
 **/
exports.getQsViewDesktop = function(id) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Resend the QuickServer welcome email with login credentials
 * Re-runs the `qs_welcome_email` function which composes and sends the welcome email containing connection details, root password, and management URLs to the account owner. Path param: `id` (integer). Returns: `{ text: \"Welcome Email has been resent.\" }`. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Use when the original welcome email was lost or the customer needs credentials again. Siblings: `getVpsWelcomeEmail`, `getQsInfo` (also exposes connection info).
 *
 * id String Quickserver ID
 * returns TextResponse
 **/
exports.getQsWelcomeEmail = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "You were successfull."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Change a QuickServer's system hostname (OpenVZ/Virtuozzo only)
 * Updates the hostname and the matching reverse DNS entry. Path param: `id`. Body (JSON or form): `hostname` (must pass `valid_hostname`, must differ from current). Only supported on OpenVZ/Virtuozzo platforms — KVM/dedicated returns a 4xx with a contact-support message. Pending services update the DB row directly (`{ text }`); active services queue the change (`{ text, queueId }`, ~2 min). Errors: 401, 404 if not owned, 409 if status != `active`, validation error for bad hostname or no change. Siblings: `getQsChangeHostname`, `postVpsChangeHostname`.
 *
 * id Integer QuickServer ID number
 * returns QueueResponse
 **/
exports.postQsChangeHostname = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Change QuickServer root/administrator password to a chosen value
 * Queues a root password change. Path param: `id`. Body (JSON or form): `password` (the new password — required, no server-side complexity validation here). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Both queue and history entries are written. Errors: 401, 404 if not owned, 409 if status != `active`, 400 if `password` is missing. For a randomly generated password use `postQsResetPassword` instead. For Webuzo panel password use `postQsChangeWebuzoPassword`. Siblings: `getQsChangeRootPassword`, `postVpsChangeRootPassword`.
 *
 * id Integer QuickServer ID number
 * returns QueueResponse
 **/
exports.postQsChangeRootPassword = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Change the system timezone on a QuickServer to a catalog entry
 * Queues a timezone change. Path param: `id`. Body (JSON or form): `timezone` (must be one of the strings returned by `getQsChangeTimezone`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes by the queue worker. Errors: 401, 404 if not owned, 409 if status != `active`, 422 if `timezone` is not in the catalog. Siblings: `getQsChangeTimezone` (call first to get valid options), `postVpsChangeTimezone`.
 *
 * body TimezoneUpdate 
 * id Integer QuickServer ID number
 * returns QueueResponse
 **/
exports.postQsChangeTimezone = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Change the system timezone on a QuickServer to a catalog entry
 * Queues a timezone change. Path param: `id`. Body (JSON or form): `timezone` (must be one of the strings returned by `getQsChangeTimezone`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes by the queue worker. Errors: 401, 404 if not owned, 409 if status != `active`, 422 if `timezone` is not in the catalog. Siblings: `getQsChangeTimezone` (call first to get valid options), `postVpsChangeTimezone`.
 *
 * body TimezoneUpdate 
 * id Integer QuickServer ID number
 * returns QueueResponse
 **/
exports.postQsChangeTimezone = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Change Webuzo control panel admin password live (synchronous, not queued)
 * Calls the Webuzo SDK directly on the server to change the panel `admin` password, then emails the new credentials. Path param: `id`. Body: `password` (new Webuzo password, must pass `valid_password`), `login_password` (caller's account login password — verified via md5 hash). Synchronous — no queue ID. Requires a prior Webuzo-Details history entry. Returns: success message string. Errors: 401, 404 if not owned, 409 if status != `active`, validation errors for missing fields, wrong login password, weak new password, or SDK failure. Siblings: `getQsChangeWebuzoPassword`, `postQsChangeRootPassword` (OS root).
 *
 * id Integer QuickServer ID number
 * returns QueueResponse
 **/
exports.postQsChangeWebuzoPassword = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Mount an ISO image as the QuickServer's virtual CD via URL
 * Queues an `insert_cd` job that attaches the given ISO URL to the QuickServer's virtual CD drive (typically for OS reinstalls or rescue boots). Path param: `id`. Body (JSON or form): `url` (the ISO URL — pick one from `getQsInsertCd`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller. The action is idempotent in effect (latest mount wins). Siblings: `getQsInsertCd` (list options), `doQsEjectCd` (unmount), `doQsDisableCd`, `postQsReinstallOs` (template-based).
 *
 * id Integer QuickServer ID number
 * returns QueueResponse
 **/
exports.postQsInsertCd = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)
 * Wipes the disk and reinstalls the chosen OS template. All data, configs, and snapshots are erased. Path param: `id`. Body: `template` (a `template_file` from `getQsReinstallOs`), `password` (new root password — required for non-Windows templates). For active services, queues `reinstall_os` (~2 min). For inactive services, just stores the OS preference for next activation. Updates `qs_status` to `Reinstalling` and clears screenshots. Returns flash messages — typical envelope. Errors: 401, invalid template name returns error flash. Siblings: `getQsReinstallOs` (list options), `postVpsReinstallOs`, `postQuickServerRestore` (recover from backup instead).
 *
 * id Integer QuickServer ID number
 * returns QueueResponse
 **/
exports.postQsReinstallOs = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Reset QuickServer root password to a server-generated random value
 * Queues a `reset_password` job that generates a new root password and emails it to the account owner. Path param: `id` (integer). No body — password is generated server-side. Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller, 409 if status != `active`. For a chosen password use `postQsChangeRootPassword` instead; for the Webuzo panel password use `postQsChangeWebuzoPassword`. Siblings: `getQsResetPassword`, `postVpsResetPassword`.
 *
 * id Integer QuickServer ID number
 * returns QueueResponse
 **/
exports.postQsResetPassword = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Update reverse DNS (PTR) records for a QuickServer's IPs
 * Sets PTR records for one or more of the QuickServer's IPs. Path param: `id`. Body (form): `ips` — keyed by IP, value is the desired hostname (must be valid). Returns: `{ message: \"DNS Updated\", success: true }`. Caveat: in the current implementation the body is parsed but the per-IP update loop is a no-op shell — verify with `getQsReverseDns` after calling, and use the support channel if changes don't propagate. Errors: 401 if unauthenticated. Siblings: `getQsReverseDns`, `postVpsReverseDns`.
 *
 * body ReverseDnsEntries 
 * id Integer QuickServer ID number
 * returns TextResponse
 **/
exports.postQsReverseDns = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "You were successfull."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Update reverse DNS (PTR) records for a QuickServer's IPs
 * Sets PTR records for one or more of the QuickServer's IPs. Path param: `id`. Body (form): `ips` — keyed by IP, value is the desired hostname (must be valid). Returns: `{ message: \"DNS Updated\", success: true }`. Caveat: in the current implementation the body is parsed but the per-IP update loop is a no-op shell — verify with `getQsReverseDns` after calling, and use the support channel if changes don't propagate. Errors: 401 if unauthenticated. Siblings: `getQsReverseDns`, `postVpsReverseDns`.
 *
 * body ReverseDnsEntries 
 * id Integer QuickServer ID number
 * returns TextResponse
 **/
exports.postQsReverseDns = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "You were successfull."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Configure the source IP allowed to reach a QuickServer's VNC console
 * Sets the IP allowed to reach the VNC tunnel and queues a `setup_vnc` to apply it. Path param: `id`. Body (JSON or form): `vnc` (a valid IPv4 address — only this address can reach the console). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned, 409 if status != `active`. Returns an inline `Invalid IP` message when `vnc` fails `validIp`. The VPS-style helper also runs after the DB update. Siblings: `getQsSetupVnc` (read), `postVpsSetupVnc`.
 *
 * id Integer QuickServer ID number
 * returns QueueResponse
 **/
exports.postQsSetupVnc = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Query QuickServer bandwidth usage via POST (filtered variant)
 * Functional duplicate of `getQsTrafficUsage` exposed under POST so clients can pass a filter body. Path param: `id` (integer). Body fields are accepted but the current handler ignores them and returns the full current-cycle dataset. Returns: same bandwidth-data object as `getQsTrafficUsage`. Errors: 401 if unauthenticated. No active-status or ownership gate. Siblings: `getQsTrafficUsage`, `postVpsTrafficUsage`.
 *
 * id Integer QuickServer ID number
 * no response value expected for this operation
 **/
exports.postQsTrafficUsage = function(id) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Submit changes and re-fetch the QuickServer dashboard view payload
 * Same handler as `getQsViewDesktop` but accessible via POST so callers can pass body fields alongside re-fetching the view. Path param: `id`. Body fields are accepted by the underlying View handler. Returns: refreshed dashboard object — `serviceInfo`, `client_links`, etc. Errors: 401 if unauthenticated. For structured updates prefer the dedicated endpoints (`postQsChangeHostname`, `postQsReverseDns`, `postQsSetupVnc`, etc.) which return queue IDs. Siblings: `getQsViewDesktop`, `postVpsViewDesktop`.
 *
 * id Integer QuickServer ID number
 * no response value expected for this operation
 **/
exports.postQsViewDesktop = function(id) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
 * Overwrites the live disk with a backup. Path param: `id`. Body (form): `backup` (composite key `<type>:<service>:<name>` from `getQsBackups`), `password` (caller's account login password — required for non-admin to confirm). Validates backup exists, caller's password (when applicable), and that the QuickServer disk is large enough (size check skipped for ZFS). Queues `snapshot_restore` for ZFS or `restore` for swift/minio; allow up to 10 minutes. Returns: `{ text, queueId }`. Errors: 401, 404 if not owned, 409 if status != `active`, errors for invalid password, missing backup, or insufficient disk space. Siblings: `getQsBackups`, `getQsBackup` (create), `postVpsRestore`.
 *
 * body RestoreRequest QuickServer Restore request
 * id Integer QuickServer ID number
 * returns QueueResponse
 **/
exports.postQuickServerRestore = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
 * Overwrites the live disk with a backup. Path param: `id`. Body (form): `backup` (composite key `<type>:<service>:<name>` from `getQsBackups`), `password` (caller's account login password — required for non-admin to confirm). Validates backup exists, caller's password (when applicable), and that the QuickServer disk is large enough (size check skipped for ZFS). Queues `snapshot_restore` for ZFS or `restore` for swift/minio; allow up to 10 minutes. Returns: `{ text, queueId }`. Errors: 401, 404 if not owned, 409 if status != `active`, errors for invalid password, missing backup, or insufficient disk space. Siblings: `getQsBackups`, `getQsBackup` (create), `postVpsRestore`.
 *
 * body RestoreRequest QuickServer Restore request
 * id Integer QuickServer ID number
 * returns QueueResponse
 **/
exports.postQuickServerRestore = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.",
  "queueId" : 14670065
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Validate a QuickServer order without charging or provisioning
 * Dry-run the order payload before calling `addQs`. No invoice is created and no service is provisioned. Use to surface form errors, compute the price, and resolve the chosen `server`/`os`/`distro` against the master pool. Body (form): `server` (master ID), `password`, `os` (template), `comment`, `tos`. Returns the `validate_buy_qs` result with `continue` flag, normalized fields, `service_cost`, and `errors` array. Errors: 401 if unauthenticated; validation errors are returned in the body, not as 4xx. Siblings: `addQs` (commits the order), `getNewQs` (form metadata), `putVps` (VPS equivalent).
 *
 * body QsOrderRequest 
 * no response value expected for this operation
 **/
exports.putQs = function(body) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Cancel a QuickServer service at the end of the current billing cycle
 * Schedules deprovisioning. The server keeps running until the current billing period ends, then is canceled and the recurring invoice stops. Path param: `id` (integer). Returns: `{ success: bool, text: string }`. Errors: 401 if unauthenticated, 404 if not owned by caller. Reversible only by support before the cycle closes — use `getQsInvoices` to check the next invoice date first. Siblings: `getQsInfo`, `VPSCancel` (VPS equivalent), `serversCancel` (dedicated equivalent).
 *
 * id Integer QuickServer ID number
 * returns inline_response_200_11
 **/
exports.quickserversCancel = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Rapid Deploy Servers is canceled."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Update QuickServer order metadata or stored settings without OS impact
 * Mutates QuickServer-level settings (comment, stored notes) without affecting the running OS. Path param: `id`. Body fields are module-specific and processed by the shared `View::go` handler. Returns: `SuccessTextResponse`. Errors: 401 if unauthenticated, 404 if not owned by caller. For server-side actions use the dedicated endpoints — hostname via `postQsChangeHostname`, password via `postQsChangeRootPassword`, OS via `postQsReinstallOs`. Siblings: `getQsInfo` (read), `quickserversCancel` (delete).
 *
 * id String QuickServer ID number.
 * returns SuccessTextResponse
 **/
exports.updateQsInfo = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Ok"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}

