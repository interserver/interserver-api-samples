import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for SendMailAdv
void main() {
  final SendMailAdv? instance = /* SendMailAdv(...) */ null;
  // TODO add properties to the entity

  group(SendMailAdv, () {
    // The subject or title of the email
    // String subject
    test('to test the property `subject`', () async {
      // TODO
    });

    // The main email contents.
    // String body
    test('to test the property `body`', () async {
      // TODO
    });

    // EmailAddressName from
    test('to test the property `from`', () async {
      // TODO
    });

    // A list of destionation email addresses to send this to
    // List<EmailAddressName> to
    test('to test the property `to`', () async {
      // TODO
    });

    // (optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address.
    // Optional<List<EmailAddressName>?> replyto
    test('to test the property `replyto`', () async {
      // TODO
    });

    // (optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well.
    // Optional<List<EmailAddressName>?> cc
    test('to test the property `cc`', () async {
      // TODO
    });

    // (optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list.
    // Optional<List<EmailAddressName>?> bcc
    test('to test the property `bcc`', () async {
      // TODO
    });

    // (optional) File attachments to include in the email.  The file contents must be base64 encoded!
    // Optional<List<MailAttachment>?> attachments
    test('to test the property `attachments`', () async {
      // TODO
    });

    // (optional)  ID of the Mail order within our system to use as the Mail Account.
    // Optional<int?> id
    test('to test the property `id`', () async {
      // TODO
    });

  });
}
