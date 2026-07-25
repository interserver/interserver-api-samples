//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ReplyTicketResponseSchema {
  /// Returns a new [ReplyTicketResponseSchema] instance.
  ReplyTicketResponseSchema({
    this.success,
    this.postId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? success;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? postId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReplyTicketResponseSchema &&
    other.success == success &&
    other.postId == postId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success == null ? 0 : success!.hashCode) +
    (postId == null ? 0 : postId!.hashCode);

  @override
  String toString() => 'ReplyTicketResponseSchema[success=$success, postId=$postId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.success != null) {
      json[r'success'] = this.success;
    } else {
      json[r'success'] = null;
    }
    if (this.postId != null) {
      json[r'post_id'] = this.postId;
    } else {
      json[r'post_id'] = null;
    }
    return json;
  }

  /// Returns a new [ReplyTicketResponseSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReplyTicketResponseSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ReplyTicketResponseSchema(
        success: mapValueOfType<bool>(json, r'success'),
        postId: mapValueOfType<int>(json, r'post_id'),
      );
    }
    return null;
  }

  static List<ReplyTicketResponseSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReplyTicketResponseSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReplyTicketResponseSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReplyTicketResponseSchema> mapFromJson(dynamic json) {
    final map = <String, ReplyTicketResponseSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReplyTicketResponseSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReplyTicketResponseSchema-objects as value to a dart map
  static Map<String, List<ReplyTicketResponseSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReplyTicketResponseSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReplyTicketResponseSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

