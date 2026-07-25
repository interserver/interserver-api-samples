import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for DomainSearchResponse
void main() {
  final DomainSearchResponse? instance = /* DomainSearchResponse(...) */ null;
  // TODO add properties to the entity

  group(DomainSearchResponse, () {
    // Indicates whether the registrar search succeeded.
    // Optional<bool?> success
    test('to test the property `success`', () async {
      // TODO
    });

    // Human-readable status text from the registrar.
    // Optional<String?> responseText
    test('to test the property `responseText`', () async {
      // TODO
    });

    // Response time as reported by the registrar.
    // Optional<String?> responseTime
    test('to test the property `responseTime`', () async {
      // TODO
    });

    // Availability lookup results for queried domains.
    // Optional<List<Object>?> lookup
    test('to test the property `lookup`', () async {
      // TODO
    });

    // Suggested alternative domains and availability data.
    // Optional<List<Object>?> suggest
    test('to test the property `suggest`', () async {
      // TODO
    });

    // TLDs evaluated during the search.
    // Optional<List<String>?> tlds
    test('to test the property `tlds`', () async {
      // TODO
    });

  });
}
