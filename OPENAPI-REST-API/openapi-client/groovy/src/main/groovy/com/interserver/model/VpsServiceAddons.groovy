package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class VpsServiceAddons {
    /* Whether a cPanel license is active on this VPS. */
    Boolean hasCpanel
    /* Whether a DirectAdmin license is active on this VPS. */
    Boolean hasDirectadmin
    /* Whether a Fantastico license is active on this VPS. */
    Boolean hasFantastico
    /* Whether a Softaculous license is active on this VPS. */
    Boolean hasSoftaculous
    /* Whether extra disk space has been added to this VPS. */
    Boolean hasHdspace
    /* Whether a dedicated IP address is assigned to this VPS. */
    Boolean dedicatedIp
    /* List of additional IPv4 addresses assigned to this VPS. */
    List<String> extraIps
    /* List of additional IPv6 addresses assigned to this VPS. */
    List<String> extraIps6
    /* List of IP addresses that have unpaid charges. */
    List<String> unpaidIps
    /* All IPv4 addresses assigned to this VPS. */
    List<String> ips
    /* All IPv6 addresses assigned to this VPS. */
    List<String> ips6
    /* The add-on service ID for the cPanel license. */
    Integer cpanelId
    /* Total monthly add-on cost in cents. */
    Integer cost
    /* List of add-on service IDs active on this VPS. */
    List<String> ids
    /* Raw add-on data entries. */
    List<String> rdata
}
