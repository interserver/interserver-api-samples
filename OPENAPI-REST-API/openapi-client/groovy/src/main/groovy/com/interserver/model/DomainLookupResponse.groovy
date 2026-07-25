package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainLookupResponse {
    /* Whether the domain is available to register. */
    Boolean available
    /* Whether the domain is marked as premium by the registrar. */
    Boolean premium
    /* Indicates if the domain is already used by a website service. */
    Boolean website
    /* Indicates if the domain already exists as a domain service on the account. */
    Boolean domainService
    /* Service catalog details for the domain's TLD. */
    Object service
    /* Whether Whois privacy is available for the TLD. */
    Boolean whoisPrivacy
    /* Calculated registration price, when available. */
    String _new
    /* Calculated renewal price, when available. */
    String renewal
    /* Calculated transfer price, when available. */
    String transfer
    /* Registrar field requirements for this domain/TLD. */
    Object fields
    /* Pricing information normalized to supported currencies. */
    Object currencies
}
