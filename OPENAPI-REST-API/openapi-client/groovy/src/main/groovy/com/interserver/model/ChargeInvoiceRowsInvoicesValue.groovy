package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.ChargeInvoiceRowsInvoicesValuePaidInvoicesValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.HashMap;

@Canonical
class ChargeInvoiceRowsInvoicesValue {
    /* Unique invoice ID. */
    BigDecimal invoicesId
    /* Description of the invoice charge. */
    String invoicesDescription
    /* Invoice amount. */
    BigDecimal invoicesAmount
    /* Invoice date. */
    String invoicesDate

    enum InvoicesPaidEnum {
    
        NUMBER_0(new BigDecimal("0")),
        
        NUMBER_1(new BigDecimal("1")),
        
        NUMBER_unknown_default_open_api(new BigDecimal("11184809"))
    
        private final BigDecimal value
    
        InvoicesPaidEnum(BigDecimal value) {
            this.value = value
        }
    
        BigDecimal getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    InvoicesPaidEnum invoicesPaid
    
    String invoicesDueDate
    
    String invoicesCurrency
    
    String currencySymbol
    
    String invoicesDateFormatted
    /* This is optional when invoices_paid = 1 this array will show */
    Map<String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValue> paidInvoices
}
