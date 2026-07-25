package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.MailExtraInfoTable;
import com.interserver.model.MailTutorialsTable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MailSchemaExtraInfoTables {
    
    MailExtraInfoTable mail
    
    MailTutorialsTable tutorials
}
