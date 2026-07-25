package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.ChargeInvoiceRowsInvoicesValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;

@Canonical
class ChargeInvoiceRows {
    /* Whether the invoice retrieval was successful. */
    Boolean success
    /* List of invoices for the service. */
    Map<String, ChargeInvoiceRowsInvoicesValue> invoices
}
