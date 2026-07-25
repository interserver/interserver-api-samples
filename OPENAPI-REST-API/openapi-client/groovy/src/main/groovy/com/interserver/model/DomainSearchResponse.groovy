package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class DomainSearchResponse {
    /* Indicates whether the registrar search succeeded. */
    Boolean success
    /* Human-readable status text from the registrar. */
    String responseText
    /* Response time as reported by the registrar. */
    String responseTime
    /* Availability lookup results for queried domains. */
    List<Object> lookup
    /* Suggested alternative domains and availability data. */
    List<Object> suggest
    /* TLDs evaluated during the search. */
    List<String> tlds
}
