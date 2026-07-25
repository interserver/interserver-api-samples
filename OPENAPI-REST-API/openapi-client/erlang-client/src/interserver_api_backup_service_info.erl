-module(interserver_api_backup_service_info).

-export([encode/1]).

-export_type([interserver_api_backup_service_info/0]).

-type interserver_api_backup_service_info() ::
    #{ 'backup_id' => binary(),
       'backup_server' => binary(),
       'backup_username' => binary(),
       'backup_type' => binary(),
       'backup_currency' => binary(),
       'backup_order_date' => binary(),
       'backup_custid' => binary(),
       'backup_quota' => binary(),
       'backup_ip' => binary(),
       'backup_status' => binary(),
       'backup_invoice' => binary(),
       'backup_coupon' => binary(),
       'backup_extra' => binary(),
       'backup_server_status' => binary(),
       'backup_comment' => binary()
     }.

encode(#{ 'backup_id' := BackupId,
          'backup_server' := BackupServer,
          'backup_username' := BackupUsername,
          'backup_type' := BackupType,
          'backup_currency' := BackupCurrency,
          'backup_order_date' := BackupOrderDate,
          'backup_custid' := BackupCustid,
          'backup_quota' := BackupQuota,
          'backup_ip' := BackupIp,
          'backup_status' := BackupStatus,
          'backup_invoice' := BackupInvoice,
          'backup_coupon' := BackupCoupon,
          'backup_extra' := BackupExtra,
          'backup_server_status' := BackupServerStatus,
          'backup_comment' := BackupComment
        }) ->
    #{ 'backup_id' => BackupId,
       'backup_server' => BackupServer,
       'backup_username' => BackupUsername,
       'backup_type' => BackupType,
       'backup_currency' => BackupCurrency,
       'backup_order_date' => BackupOrderDate,
       'backup_custid' => BackupCustid,
       'backup_quota' => BackupQuota,
       'backup_ip' => BackupIp,
       'backup_status' => BackupStatus,
       'backup_invoice' => BackupInvoice,
       'backup_coupon' => BackupCoupon,
       'backup_extra' => BackupExtra,
       'backup_server_status' => BackupServerStatus,
       'backup_comment' => BackupComment
     }.
