package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.QuickserverOrderDistroSel;
import com.interserver.model.QuickserverOrderServerDetails;
import com.interserver.model.QuickserverOrderTemplates;
import com.interserver.model.QuickserverOrderVersion;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class QuickserverOrder {
    /* Quickserver ID. */
    String qsId
    
    QuickserverOrderServerDetails serverDetails
    
    QuickserverOrderTemplates templates
    
    QuickserverOrderVersion version
    
    QuickserverOrderDistroSel distroSel
}
