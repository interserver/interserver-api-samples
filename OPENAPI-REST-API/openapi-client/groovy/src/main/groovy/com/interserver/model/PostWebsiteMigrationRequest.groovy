package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PostWebsiteMigrationRequest {
    /* URL of the customer's current hosting portal. */
    String custPortal
    /* Registered email address at the current host. */
    String regEmail
    /* Password for the current hosting account. */
    String password
    /* URL of the current control panel. */
    String ctrlPanel
    /* FTP username at the current host. */
    String ftpUsername
    /* FTP password at the current host. */
    String ftpPassword
    /* Information about site traffic during migration. */
    String siteBusyMig
    /* Special requirements for the migration. */
    String splReqMig
    /* Whether domain registration assistance is needed. */
    String domainReg
    /* Data migration timing preference. */
    String dataMig
    /* Domain registrar portal URL. */
    String domainRegPortal
    /* Email for the domain registrar account. */
    String domainRegEmail
    /* Password for the domain registrar account. */
    String domainRegPassword
}
