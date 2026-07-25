package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainContactDetails {
    /* Contact status reported by the registrar. */
    String status
    /* State or region for the contact address. */
    String state
    /* Organization name for the contact. */
    String orgName
    /* Two-letter country code for the contact. */
    String country
    /* Postal or ZIP code for the contact address. */
    String postalCode
    /* Email address for the contact. */
    String email
    /* Fax number for the contact, if available. */
    String fax
    /* Secondary street address line. */
    String address2
    /* Tertiary street address line. */
    String address3
    /* Primary street address line. */
    String address1
    /* City for the contact address. */
    String city
    /* Phone number for the contact. */
    String phone
    /* First name for the contact. */
    String firstName
    /* Last name for the contact. */
    String lastName
}
