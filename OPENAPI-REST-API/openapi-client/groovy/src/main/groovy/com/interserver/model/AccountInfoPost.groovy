package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AccountInfoPost {
    /* Your name. */
    String name
    /* Your address. */
    String address
    /* Your city. */
    String city
    /* Your state. */
    String state
    /* Your ZIP code. */
    String zip
    /* Your country. */
    String country
    /* Your phone number. */
    String phone
    /* Your company name. */
    String company
    /* Additional address information. */
    String address2
    /* Your preferred locale. */
    String locale
    /* Your email for invoice notifications. */
    String emailInvoices
    /* Your email for abuse notifications. */
    String emailAbuse
    /* Set to `true` to disable account resets, or `false` to enable them. */
    Boolean disableReset
    /* Set to `true` to disable server reinstalls, or `false` to enable them. */
    Boolean disableReinstall
    /* Set to `true` to disable server notifications, or `false` to enable them. */
    Boolean disableServerNotifications
    /* Set to `true` to disable email notifications, or `false` to enable them. */
    Boolean disableEmailNotifications
    /* Your GST identification number (if applicable). */
    String gstin
}
