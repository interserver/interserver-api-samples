package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.DnsRecordType;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DnsNewRecord {
    /* Name part of record */
    String name
    
    DnsRecordType type
    /* Content of record */
    String content
    /* Time-to-live */
    Integer ttl = 86400
    /* Priority */
    Integer prio = 0
}
