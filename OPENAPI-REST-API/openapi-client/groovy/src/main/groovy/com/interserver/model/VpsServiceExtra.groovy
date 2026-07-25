package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.VpsSnapshot;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class VpsServiceExtra {
    /* Spice */
    Integer spice
    
    List<VpsSnapshot> snapshots
}
