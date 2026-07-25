package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.MailStatsTypeVolumeFrom;
import com.interserver.model.MailStatsTypeVolumeIp;
import com.interserver.model.MailStatsTypeVolumeTo;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MailStatsTypeVolume {
    
    MailStatsTypeVolumeTo to
    
    MailStatsTypeVolumeFrom from
    
    MailStatsTypeVolumeIp ip
}
