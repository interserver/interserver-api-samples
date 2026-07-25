//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class TicketPostDetailsInner {
  /// Returns a new [TicketPostDetailsInner] instance.
  TicketPostDetailsInner({
    this.postId,
    this.date,
    this.contents,
    this.creator,
    this.creatorEmail,
    this.creatorName,
    this.hasattachments,
    this.attachmentDownload,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? postId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contents;

  TicketPostDetailsInnerCreatorEnum? creator;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? creatorEmail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? creatorName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hasattachments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? attachmentDownload;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TicketPostDetailsInner &&
    other.postId == postId &&
    other.date == date &&
    other.contents == contents &&
    other.creator == creator &&
    other.creatorEmail == creatorEmail &&
    other.creatorName == creatorName &&
    other.hasattachments == hasattachments &&
    other.attachmentDownload == attachmentDownload;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (postId == null ? 0 : postId!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (contents == null ? 0 : contents!.hashCode) +
    (creator == null ? 0 : creator!.hashCode) +
    (creatorEmail == null ? 0 : creatorEmail!.hashCode) +
    (creatorName == null ? 0 : creatorName!.hashCode) +
    (hasattachments == null ? 0 : hasattachments!.hashCode) +
    (attachmentDownload == null ? 0 : attachmentDownload!.hashCode);

  @override
  String toString() => 'TicketPostDetailsInner[postId=$postId, date=$date, contents=$contents, creator=$creator, creatorEmail=$creatorEmail, creatorName=$creatorName, hasattachments=$hasattachments, attachmentDownload=$attachmentDownload]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.postId != null) {
      json[r'post_id'] = this.postId;
    } else {
      json[r'post_id'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.contents != null) {
      json[r'contents'] = this.contents;
    } else {
      json[r'contents'] = null;
    }
    if (this.creator != null) {
      json[r'creator'] = this.creator;
    } else {
      json[r'creator'] = null;
    }
    if (this.creatorEmail != null) {
      json[r'creator_email'] = this.creatorEmail;
    } else {
      json[r'creator_email'] = null;
    }
    if (this.creatorName != null) {
      json[r'creator_name'] = this.creatorName;
    } else {
      json[r'creator_name'] = null;
    }
    if (this.hasattachments != null) {
      json[r'hasattachments'] = this.hasattachments;
    } else {
      json[r'hasattachments'] = null;
    }
    if (this.attachmentDownload != null) {
      json[r'attachment_download'] = this.attachmentDownload;
    } else {
      json[r'attachment_download'] = null;
    }
    return json;
  }

  /// Returns a new [TicketPostDetailsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TicketPostDetailsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return TicketPostDetailsInner(
        postId: mapValueOfType<int>(json, r'post_id'),
        date: mapValueOfType<String>(json, r'date'),
        contents: mapValueOfType<String>(json, r'contents'),
        creator: TicketPostDetailsInnerCreatorEnum.fromJson(json[r'creator']),
        creatorEmail: mapValueOfType<String>(json, r'creator_email'),
        creatorName: mapValueOfType<String>(json, r'creator_name'),
        hasattachments: mapValueOfType<int>(json, r'hasattachments'),
        attachmentDownload: mapValueOfType<String>(json, r'attachment_download'),
      );
    }
    return null;
  }

  static List<TicketPostDetailsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketPostDetailsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketPostDetailsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TicketPostDetailsInner> mapFromJson(dynamic json) {
    final map = <String, TicketPostDetailsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TicketPostDetailsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TicketPostDetailsInner-objects as value to a dart map
  static Map<String, List<TicketPostDetailsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TicketPostDetailsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TicketPostDetailsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


enum TicketPostDetailsInnerCreatorEnum {
  user._(r'User'),
  staff._(r'Staff'),
  unknownDefaultOpenApi._(r'unknown_default_open_api'),
  ;

  /// Instantiate a new enum with the provided value.
  const TicketPostDetailsInnerCreatorEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [TicketPostDetailsInnerCreatorEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static TicketPostDetailsInnerCreatorEnum? fromJson(dynamic value) => TicketPostDetailsInnerCreatorEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [TicketPostDetailsInnerCreatorEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<TicketPostDetailsInnerCreatorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketPostDetailsInnerCreatorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketPostDetailsInnerCreatorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TicketPostDetailsInnerCreatorEnum] to String,
/// and [decode] dynamic data back to [TicketPostDetailsInnerCreatorEnum].
class TicketPostDetailsInnerCreatorEnumTypeTransformer {
  factory TicketPostDetailsInnerCreatorEnumTypeTransformer() => _instance ??= const TicketPostDetailsInnerCreatorEnumTypeTransformer._();

  const TicketPostDetailsInnerCreatorEnumTypeTransformer._();

  String encode(TicketPostDetailsInnerCreatorEnum data) => data._value;

  /// Returns the instance of [TicketPostDetailsInnerCreatorEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TicketPostDetailsInnerCreatorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is TicketPostDetailsInnerCreatorEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'User': return TicketPostDetailsInnerCreatorEnum.user;
        case r'Staff': return TicketPostDetailsInnerCreatorEnum.staff;
        case r'unknown_default_open_api': return TicketPostDetailsInnerCreatorEnum.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static TicketPostDetailsInnerCreatorEnumTypeTransformer? _instance;
}


