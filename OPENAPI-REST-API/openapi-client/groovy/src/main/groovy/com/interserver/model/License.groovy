package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.LicenseBillingDetails;
import com.interserver.model.LicenseClientLink;
import com.interserver.model.LicenseExtraInfoTables;
import com.interserver.model.LicenseServiceInfo;
import com.interserver.model.LicenseServiceType;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class License {
    
    LicenseServiceInfo serviceInfo
    
    List<LicenseClientLink> clientLinks
    
    LicenseBillingDetails billingDetails
    /* Customer's currency */
    String custCurrency
    /* Currency symbol for customer */
    String custCurrencySymbol
    /* Package name */
    String _package
    /* Extra service information */
    List<String> serviceExtra
    
    LicenseExtraInfoTables extraInfoTables
    /* Extra service overview information */
    String serviceOverviewExtra
    
    LicenseServiceType serviceType
    /* License key */
    String licenseKey
}
