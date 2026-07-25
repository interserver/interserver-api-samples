package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.HashMap;

@Canonical
class ChargeInvoiceRowsInvoicesValuePaidInvoicesValue {
    
    String invoicesId
    
    String invoicesDescription
    
    BigDecimal invoicesAmount
    
    String invoicesDate
    
    String invoicesCurrency
    
    String currencySymbol
    
    String invoicesDateFormatted
    
    String paymentType
    /* This is optional when refund is present this will show */
    Map<String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue> refundInvoices
}
