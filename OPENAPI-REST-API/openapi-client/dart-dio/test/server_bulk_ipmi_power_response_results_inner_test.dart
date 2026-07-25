import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for ServerBulkIpmiPowerResponseResultsInner
void main() {
  final ServerBulkIpmiPowerResponseResultsInner? instance = /* ServerBulkIpmiPowerResponseResultsInner(...) */ null;
  // TODO add properties to the entity

  group(ServerBulkIpmiPowerResponseResultsInner, () {
    // Server ID this result corresponds to.
    // Optional<int?> id
    test('to test the property `id`', () async {
      // TODO
    });

    // Asset ID that was queried for the server (omitted on errors before asset selection).
    // Optional<int?> asset
    test('to test the property `asset`', () async {
      // TODO
    });

    // IPMI power-status output for this server.
    // Optional<String?> text
    test('to test the property `text`', () async {
      // TODO
    });

    // Error message for this server, if processing failed (mutually exclusive with `text`).
    // Optional<String?> error
    test('to test the property `error`', () async {
      // TODO
    });

  });
}
