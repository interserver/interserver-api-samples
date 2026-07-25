//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class PostWebsiteMigration200Response {
  /// Returns a new [PostWebsiteMigration200Response] instance.
  PostWebsiteMigration200Response({
    this.text,
    this.ticket,
  });

  /// Confirmation message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// The support ticket ID created for tracking the migration. Use this with `/tickets/{id}` to check migration progress.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ticket;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostWebsiteMigration200Response &&
    other.text == text &&
    other.ticket == ticket;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (text == null ? 0 : text!.hashCode) +
    (ticket == null ? 0 : ticket!.hashCode);

  @override
  String toString() => 'PostWebsiteMigration200Response[text=$text, ticket=$ticket]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.ticket != null) {
      json[r'ticket'] = this.ticket;
    } else {
      json[r'ticket'] = null;
    }
    return json;
  }

  /// Returns a new [PostWebsiteMigration200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostWebsiteMigration200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return PostWebsiteMigration200Response(
        text: mapValueOfType<String>(json, r'text'),
        ticket: mapValueOfType<int>(json, r'ticket'),
      );
    }
    return null;
  }

  static List<PostWebsiteMigration200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostWebsiteMigration200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostWebsiteMigration200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostWebsiteMigration200Response> mapFromJson(dynamic json) {
    final map = <String, PostWebsiteMigration200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostWebsiteMigration200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostWebsiteMigration200Response-objects as value to a dart map
  static Map<String, List<PostWebsiteMigration200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostWebsiteMigration200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostWebsiteMigration200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

