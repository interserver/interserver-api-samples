import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for PostOauthCallback200Response
void main() {
  final PostOauthCallback200Response? instance = /* PostOauthCallback200Response(...) */ null;
  // TODO add properties to the entity

  group(PostOauthCallback200Response, () {
    // Whether the user was logged in to an existing account.
    // Optional<bool?> login
    test('to test the property `login`', () async {
      // TODO
    });

    // Whether a new account was created.
    // Optional<bool?> signup
    test('to test the property `signup`', () async {
      // TODO
    });

    // Whether the OAuth provider was linked to an existing account.
    // Optional<bool?> linked
    test('to test the property `linked`', () async {
      // TODO
    });

    // The account ID associated with the OAuth login.
    // Optional<int?> accountId
    test('to test the property `accountId`', () async {
      // TODO
    });

    // Error code if additional verification is needed (e.g. `2fa_required`).
    // Optional<String?> errorCode
    test('to test the property `errorCode`', () async {
      // TODO
    });

  });
}
