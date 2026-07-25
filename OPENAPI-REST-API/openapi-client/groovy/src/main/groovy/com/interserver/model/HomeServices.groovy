package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.HomeServicesBackups;
import com.interserver.model.HomeServicesDomains;
import com.interserver.model.HomeServicesLicenses;
import com.interserver.model.HomeServicesServers;
import com.interserver.model.HomeServicesVps;
import com.interserver.model.HomeServicesWebhosting;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeServices {
    
    HomeServicesDomains domains
    
    HomeServicesWebhosting webhosting
    
    HomeServicesVps vps
    
    HomeServicesLicenses licenses
    
    HomeServicesServers servers
    
    HomeServicesBackups backups
}
