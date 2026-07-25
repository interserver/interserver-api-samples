package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.HomeDetailsModulesBackups;
import com.interserver.model.HomeDetailsModulesDomains;
import com.interserver.model.HomeDetailsModulesLicenses;
import com.interserver.model.HomeDetailsModulesQuickservers;
import com.interserver.model.HomeDetailsModulesServers;
import com.interserver.model.HomeDetailsModulesVps;
import com.interserver.model.HomeDetailsModulesWebhosting;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeDetailsModules {
    
    HomeDetailsModulesDomains domains
    
    HomeDetailsModulesWebhosting webhosting
    
    HomeDetailsModulesVps vps
    
    HomeDetailsModulesLicenses licenses
    
    HomeDetailsModulesBackups backups
    
    HomeDetailsModulesServers servers
    
    HomeDetailsModulesQuickservers quickservers
}
