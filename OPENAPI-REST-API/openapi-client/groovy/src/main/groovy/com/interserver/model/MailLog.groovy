package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.MailLogEntry;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class MailLog {
    /* Total number of log entries that match the supplied filters, regardless of `skip` and `limit`.  Reflects the `groupby` mode. */
    Integer total
    /* The `skip` value used for this page (echoed from the request). */
    Integer skip
    /* The `limit` value used for this page (echoed from the request). */
    Integer limit
    
    List<MailLogEntry> emails
}
