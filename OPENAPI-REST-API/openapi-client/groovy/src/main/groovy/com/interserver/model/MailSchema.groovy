package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.MailBillingDetails;
import com.interserver.model.MailClientLink;
import com.interserver.model.MailSchemaExtraInfoTables;
import com.interserver.model.MailServiceInfo;
import com.interserver.model.MailServiceType;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class MailSchema {
    
    MailServiceInfo serviceInfo
    /* Links related to the mail service for clients. */
    List<MailClientLink> clientLinks
    
    MailBillingDetails billingDetails
    /* The customer's currency. */
    String custCurrency
    /* The currency symbol for the customer. */
    String custCurrencySymbol
    /* The package of the mail service. */
    String _package
    
    MailSchemaExtraInfoTables extraInfoTables
    
    MailServiceType serviceType
    /* The usage count of the mail service. */
    String usageCount
    /* Extra information for the mail service. */
    List<String> serviceExtra
}
