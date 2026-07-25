package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.BackupBillingDetails;
import com.interserver.model.BackupClientLink;
import com.interserver.model.BackupExtraInfoTables;
import com.interserver.model.BackupServiceInfo;
import com.interserver.model.BackupServiceMaster;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class Backup {
    
    BackupServiceInfo serviceInfo
    
    List<BackupClientLink> clientLinks
    
    BackupBillingDetails billingDetails
    /* Customer's currency. */
    String custCurrency
    /* Customer's currency symbol. */
    String custCurrencySymbol
    
    BackupServiceMaster serviceMaster
    /* Package information. */
    String _package
    
    String serviceExtra
    
    BackupExtraInfoTables extraInfoTables
}
