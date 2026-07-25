package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue {
    
    BigDecimal invoicesId
    
    String invoicesDescription
    
    BigDecimal invoicesAmount
    
    String invoicesDate
    
    String invoicesCurrency
    
    String currencySymbol
    
    String invoicesDateFormatted
}
