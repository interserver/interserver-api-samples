import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for MailLogEntry
void main() {
  final MailLogEntry? instance = /* MailLogEntry(...) */ null;
  // TODO add properties to the entity

  group(MailLogEntry, () {
    // Internal auto-increment database row ID.
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // The relay-assigned mail ID (18-19 hex characters).  Matches the `mailid` filter parameter and the `text` value returned by send endpoints.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // SMTP envelope `MAIL FROM` address.
    // String from
    test('to test the property `from`', () async {
      // TODO
    });

    // SMTP envelope `RCPT TO` address.
    // String to
    test('to test the property `to`', () async {
      // TODO
    });

    // Human-readable creation timestamp in `YYYY-MM-DD HH:MM:SS` format.
    // String created
    test('to test the property `created`', () async {
      // TODO
    });

    // Unix timestamp of message acceptance.  Corresponds to the `startDate` and `endDate` filter parameters.
    // int time
    test('to test the property `time`', () async {
      // TODO
    });

    // The SMTP AUTH username used to submit the message (e.g. `mb5658`).
    // String user
    test('to test the property `user`', () async {
      // TODO
    });

    // SMTP transaction type negotiated with the relay.
    // String transtype
    test('to test the property `transtype`', () async {
      // TODO
    });

    // IP address of the client that submitted the message to the relay.
    // String origin
    test('to test the property `origin`', () async {
      // TODO
    });

    // Relay interface name that accepted the message.
    // String interface_
    test('to test the property `interface_`', () async {
      // TODO
    });

    // The `Subject` header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded.
    // Optional<String?> subject
    test('to test the property `subject`', () async {
      // TODO
    });

    // The `Message-ID` header value.  Can be used with the `messageId` filter for subsequent lookups.
    // Optional<String?> messageId
    test('to test the property `messageId`', () async {
      // TODO
    });

    // The sending zone assigned by the relay for outbound delivery.
    // Optional<String?> sendingZone
    test('to test the property `sendingZone`', () async {
      // TODO
    });

    // Size of the message body in bytes.
    // Optional<int?> bodySize
    test('to test the property `bodySize`', () async {
      // TODO
    });

    // Sequence index of this recipient in a multi-recipient message. Starts at 1.
    // Optional<int?> seq
    test('to test the property `seq`', () async {
      // TODO
    });

    // Delivery status flag.  `1` = successfully delivered to destination MX. `0` = queued, deferred, or failed.  `null` = delivery not yet attempted.
    // Optional<int?> delivered
    test('to test the property `delivered`', () async {
      // TODO
    });

    // The SMTP response code from the destination MX server (e.g. `250`).
    // Optional<int?> code
    test('to test the property `code`', () async {
      // TODO
    });

    // The specific recipient address this delivery record is for.
    // Optional<String?> recipient
    test('to test the property `recipient`', () async {
      // TODO
    });

    // The full SMTP response string received from the destination MX server.
    // Optional<String?> response
    test('to test the property `response`', () async {
      // TODO
    });

    // The destination domain for this delivery attempt.
    // Optional<String?> domain
    test('to test the property `domain`', () async {
      // TODO
    });

    // Whether the queue entry is currently locked for delivery processing.
    // Optional<int?> locked
    test('to test the property `locked`', () async {
      // TODO
    });

    // Millisecond-precision timestamp of the last queue lock acquisition.
    // Optional<String?> lockTime
    test('to test the property `lockTime`', () async {
      // TODO
    });

    // The relay server node assigned to deliver this message.
    // Optional<String?> assigned
    test('to test the property `assigned`', () async {
      // TODO
    });

    // ISO 8601 timestamp when the message was placed into the delivery queue.
    // Optional<String?> queued
    test('to test the property `queued`', () async {
      // TODO
    });

    // The MX hostname the relay connected to for delivery.  Corresponds to the `mx` filter parameter.
    // Optional<String?> mxHostname
    test('to test the property `mxHostname`', () async {
      // TODO
    });

  });
}
