package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class TicketPostDetailsInner {
    
    Integer postId
    
    String date
    
    String contents

    enum CreatorEnum {
    
        USER("User"),
        
        STAFF("Staff")
    
        private final String value
    
        CreatorEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    CreatorEnum creator
    
    String creatorEmail
    
    String creatorName
    
    Integer hasattachments
    
    String attachmentDownload
}
