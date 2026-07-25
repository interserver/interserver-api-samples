package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.DnsRecordType;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DnsRecord {
    /* The ID of the DNS Record. */
    String id
    /* The ID of the Domain this is a record of. */
    String domainId
    
    String name
    
    DnsRecordType type
    /* The content of the record, such as the IP address or hsotname. */
    String content
    /* Time To Live (seconds) */
    String ttl
    /* Priority */
    String prio
    
    String disabled
    /* Alternate name to use for sorting */
    String ordername
    
    String auth
}
