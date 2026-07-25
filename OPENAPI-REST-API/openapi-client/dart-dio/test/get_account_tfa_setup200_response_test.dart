import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for GetAccountTfaSetup200Response
void main() {
  final GetAccountTfaSetup200Response? instance = /* GetAccountTfaSetup200Response(...) */ null;
  // TODO add properties to the entity

  group(GetAccountTfaSetup200Response, () {
    // Base64-encoded secret key for TOTP setup.
    // Optional<String?> n2faGoogleKey
    test('to test the property `n2faGoogleKey`', () async {
      // TODO
    });

    // Human-readable formatted key (chunks of 4 characters).
    // Optional<String?> n2faGoogleSplit
    test('to test the property `n2faGoogleSplit`', () async {
      // TODO
    });

  });
}
