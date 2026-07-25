import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for DenyRuleRecord
void main() {
  final DenyRuleRecord? instance = /* DenyRuleRecord(...) */ null;
  // TODO add properties to the entity

  group(DenyRuleRecord, () {
    // The type of deny rule.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com.
    // String data
    test('to test the property `data`', () async {
      // TODO
    });

    // The deny rule Id number.
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // the date the rule was created.
    // String created
    test('to test the property `created`', () async {
      // TODO
    });

    // Mail account username that will be tied to this rule.  If not specified the first active mail order will be used.
    // Optional<String?> user
    test('to test the property `user`', () async {
      // TODO
    });

  });
}
