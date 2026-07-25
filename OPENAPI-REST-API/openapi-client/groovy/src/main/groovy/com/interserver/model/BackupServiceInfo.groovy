package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BackupServiceInfo {
    /* Backup ID. */
    String backupId
    /* Backup server ID. */
    String backupServer
    /* Backup username. */
    String backupUsername
    /* Backup type. */
    String backupType
    /* Backup currency. */
    String backupCurrency
    /* Backup order date. */
    String backupOrderDate
    /* Backup customer ID. */
    String backupCustid
    /* Backup quota. */
    String backupQuota
    /* Backup IP address. */
    String backupIp
    /* Backup status. */
    String backupStatus
    /* Backup invoice. */
    String backupInvoice
    /* Backup coupon. */
    String backupCoupon
    /* Backup extra information. */
    String backupExtra
    /* Backup server status. */
    String backupServerStatus
    /* Backup comment. */
    String backupComment
}
