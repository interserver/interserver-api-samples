package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.MonthlyCounts;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class StatusMonthlyBreakdown {
    
    MonthlyCounts _default
    
    MonthlyCounts failed
    
    MonthlyCounts rejected
    
    MonthlyCounts pending
    
    MonthlyCounts locked
    
    MonthlyCounts paid
}
