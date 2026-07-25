package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.MailBlockClickHouse;
import com.interserver.model.MailBlockRspamd;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class MailBlocks {
    
    List<MailBlockClickHouse> local
    
    List<MailBlockClickHouse> mbtrap
    
    List<MailBlockRspamd> subject
}
