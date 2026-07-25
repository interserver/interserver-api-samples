package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.time.LocalDate;

@Canonical
class MailBlockClickHouse {
    
    LocalDate date
    
    String from
    
    String messageId
    
    String subject
    
    String to
}
