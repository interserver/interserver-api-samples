package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class BillingInvoiceList {
    /* Invoice rows returned for the account. */
    List<Object> rows
    /* Totals and summary data for the invoices list. */
    Object summary
}
