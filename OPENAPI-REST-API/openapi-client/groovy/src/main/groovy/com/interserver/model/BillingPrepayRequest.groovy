package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class BillingPrepayRequest {
    /* Module the prepay should be applied to (for example `default`). */
    String module
    /* Amount to add to prepay balance. Minimum is $10. */
    BigDecimal amount
    /* Whether the prepay balance should be used automatically. */
    String automaticUse
}
