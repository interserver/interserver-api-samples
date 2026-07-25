package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.WebsiteBillingDetails;
import com.interserver.model.WebsiteClientLink;
import com.interserver.model.WebsiteExtraInfoTables;
import com.interserver.model.WebsiteServiceInfo;
import com.interserver.model.WebsiteServiceMaster;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class Website {
    
    WebsiteServiceInfo serviceInfo
    
    List<WebsiteClientLink> clientLinks
    
    WebsiteBillingDetails billingDetails
    /* Customer's currency */
    String custCurrency
    /* Customer currency symbol */
    String custCurrencySymbol
    
    WebsiteServiceMaster serviceMaster
    /* Package information */
    String _package
    
    List<Object> serviceExtra
    
    WebsiteExtraInfoTables extraInfoTables
}
