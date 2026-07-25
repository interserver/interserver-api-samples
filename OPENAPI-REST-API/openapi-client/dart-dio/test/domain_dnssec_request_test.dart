import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for DomainDnssecRequest
void main() {
  final DomainDnssecRequest? instance = /* DomainDnssecRequest(...) */ null;
  // TODO add properties to the entity

  group(DomainDnssecRequest, () {
    // List of DNSSEC algorithm IDs for each record.
    // Optional<List<int>?> algorithm
    test('to test the property `algorithm`', () async {
      // TODO
    });

    // List of digest type IDs for each record.
    // Optional<List<int>?> digestType
    test('to test the property `digestType`', () async {
      // TODO
    });

    // List of hex digests for each record.
    // Optional<List<String>?> digest
    test('to test the property `digest`', () async {
      // TODO
    });

    // List of key tag values corresponding to each record.
    // Optional<List<int>?> keyTag
    test('to test the property `keyTag`', () async {
      // TODO
    });

  });
}
