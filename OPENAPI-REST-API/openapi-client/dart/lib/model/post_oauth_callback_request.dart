//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class PostOauthCallbackRequest {
  /// Returns a new [PostOauthCallbackRequest] instance.
  PostOauthCallbackRequest({
    this.provider,
  });

  /// The OAuth provider name (e.g. `Google`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostOauthCallbackRequest &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provider == null ? 0 : provider!.hashCode);

  @override
  String toString() => 'PostOauthCallbackRequest[provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    return json;
  }

  /// Returns a new [PostOauthCallbackRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostOauthCallbackRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return PostOauthCallbackRequest(
        provider: mapValueOfType<String>(json, r'provider'),
      );
    }
    return null;
  }

  static List<PostOauthCallbackRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostOauthCallbackRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostOauthCallbackRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostOauthCallbackRequest> mapFromJson(dynamic json) {
    final map = <String, PostOauthCallbackRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostOauthCallbackRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostOauthCallbackRequest-objects as value to a dart map
  static Map<String, List<PostOauthCallbackRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostOauthCallbackRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostOauthCallbackRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

