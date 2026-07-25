package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InitiatePayment200Response {

    enum TypeEnum {
    
        REDIRECT("redirect"),
        
        SUBMIT("submit"),
        
        SINGLE("single")
    
        private final String value
    
        TypeEnum(String value) {
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

    /* The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result). */
    TypeEnum type
    /* URL to redirect the user to for payment (when type is `redirect`). */
    String redirect
    /* Form action URL (when type is `submit`). */
    String action
    /* HTTP method for the form submission (when type is `submit`). */
    String method
    /* Form field name-value pairs to submit (when type is `submit`). */
    Object items
    /* Status or result text. */
    String text
}
