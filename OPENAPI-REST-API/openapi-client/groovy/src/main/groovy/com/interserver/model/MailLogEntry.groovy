package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class MailLogEntry {
    /* Internal auto-increment database row ID. */
    Integer id
    /* The relay-assigned mail ID (18-19 hex characters).  Matches the `mailid` filter parameter and the `text` value returned by send endpoints. */
    String id
    /* SMTP envelope `MAIL FROM` address. */
    String from
    /* SMTP envelope `RCPT TO` address. */
    String to
    /* Human-readable creation timestamp in `YYYY-MM-DD HH:MM:SS` format. */
    String created
    /* Unix timestamp of message acceptance.  Corresponds to the `startDate` and `endDate` filter parameters. */
    Integer time
    /* The SMTP AUTH username used to submit the message (e.g. `mb5658`). */
    String user
    /* SMTP transaction type negotiated with the relay. */
    String transtype
    /* IP address of the client that submitted the message to the relay. */
    String origin
    /* Relay interface name that accepted the message. */
    String _interface
    /* The `Subject` header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded. */
    String subject
    /* The `Message-ID` header value.  Can be used with the `messageId` filter for subsequent lookups. */
    String messageId
    /* The sending zone assigned by the relay for outbound delivery. */
    String sendingZone
    /* Size of the message body in bytes. */
    Integer bodySize
    /* Sequence index of this recipient in a multi-recipient message. Starts at 1. */
    Integer seq
    /* Delivery status flag.  `1` = successfully delivered to destination MX. `0` = queued, deferred, or failed.  `null` = delivery not yet attempted. */
    Integer delivered
    /* The SMTP response code from the destination MX server (e.g. `250`). */
    Integer code
    /* The specific recipient address this delivery record is for. */
    String recipient
    /* The full SMTP response string received from the destination MX server. */
    String response
    /* The destination domain for this delivery attempt. */
    String domain
    /* Whether the queue entry is currently locked for delivery processing. */
    Integer locked
    /* Millisecond-precision timestamp of the last queue lock acquisition. */
    String lockTime
    /* The relay server node assigned to deliver this message. */
    String assigned
    /* ISO 8601 timestamp when the message was placed into the delivery queue. */
    String queued
    /* The MX hostname the relay connected to for delivery.  Corresponds to the `mx` filter parameter. */
    String mxHostname
}
