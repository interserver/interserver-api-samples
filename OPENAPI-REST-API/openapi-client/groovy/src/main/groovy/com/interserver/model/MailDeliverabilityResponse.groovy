package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class MailDeliverabilityResponse {
    /* Delivered and bounced counts. */
    Object stat
    /* Bounce percentage. */
    BigDecimal percent
    /* Detailed deliverability breakdown by sender or domain. */
    List<List<String>> tableData
}
