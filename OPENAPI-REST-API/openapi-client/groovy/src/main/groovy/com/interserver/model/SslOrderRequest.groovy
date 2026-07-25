package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class SslOrderRequest {
    /* SSL package service type id from getNewSsl.serviceTypes. */
    Integer ssl
    /* Domain the certificate is issued for. Wildcard certs require *.domain.com format. */
    String hostname
    /* Domain-control approver email (required for all SSL orders). */
    String approverEmail
    /* Billing frequency in months (12, 24, or 36). */
    Integer frequency = 12
    /* Coupon code. */
    String coupon = ""

    enum CsrTypeEnum {
    
        GENERATED("generated"),
        
        PROVIDED("provided"),
        
        UNKNOWN_DEFAULT_OPEN_API("unknown_default_open_api")
    
        private final String value
    
        CsrTypeEnum(String value) {
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

    /* Whether the CSR is server-generated or customer-provided. */
    CsrTypeEnum csrType = CsrTypeEnum.GENERATED
    /* PEM-encoded CSR (>= 2048-bit) when csr_type=provided. */
    String csr = ""
    /* Contact first name (defaults from account). */
    String firstname
    /* Contact last name (defaults from account). */
    String lastname
    /* Contact email (defaults from account). */
    String email
    /* Contact address (defaults from account). */
    String address
    /* Contact city (defaults from account). */
    String city
    /* Contact state/region (defaults from account). */
    String state
    /* Contact postal code (defaults from account). */
    String zip
    /* Contact country (defaults from account). */
    String country
    /* Contact phone (defaults from account). */
    String phone
    /* Contact company/organization (defaults from account). */
    String company
    /* Contact department (defaults to Administration). */
    String department = "Administration"
    /* EV certificate incorporating agency (only for EV packages). */
    String agency
    /* EV certificate business category (only for EV packages). */
    String businessCategory
}
