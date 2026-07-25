import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for PlaceBuyNowServerRequest
void main() {
  final PlaceBuyNowServerRequest? instance = /* PlaceBuyNowServerRequest(...) */ null;
  // TODO add properties to the entity

  group(PlaceBuyNowServerRequest, () {
    // The ID of the buy-it-now server configuration to order. Use the server listing from `GET /servers/order/buy_now_server` to find valid IDs.
    // Optional<num?> serverId
    test('to test the property `serverId`', () async {
      // TODO
    });

    // The fully-qualified hostname to assign to the server.
    // Optional<String?> serverHostname
    test('to test the property `serverHostname`', () async {
      // TODO
    });

    // The root or administrator password to set on the server.
    // Optional<String?> serverRootPassword
    test('to test the property `serverRootPassword`', () async {
      // TODO
    });

  });
}
