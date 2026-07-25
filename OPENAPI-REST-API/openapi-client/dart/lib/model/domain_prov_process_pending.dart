//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainProvProcessPending {
  /// Returns a new [DomainProvProcessPending] instance.
  DomainProvProcessPending({
    this.oPSVersion,
    this.responseText,
    this.protocol,
    this.responseCode,
    this.action,
    this.object,
    this.isSuccess,
    this.attributes,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? oPSVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responseText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? protocol;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responseCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? object;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? isSuccess;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainProvProcessPendingAttributes? attributes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainProvProcessPending &&
    other.oPSVersion == oPSVersion &&
    other.responseText == responseText &&
    other.protocol == protocol &&
    other.responseCode == responseCode &&
    other.action == action &&
    other.object == object &&
    other.isSuccess == isSuccess &&
    other.attributes == attributes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (oPSVersion == null ? 0 : oPSVersion!.hashCode) +
    (responseText == null ? 0 : responseText!.hashCode) +
    (protocol == null ? 0 : protocol!.hashCode) +
    (responseCode == null ? 0 : responseCode!.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (object == null ? 0 : object!.hashCode) +
    (isSuccess == null ? 0 : isSuccess!.hashCode) +
    (attributes == null ? 0 : attributes!.hashCode);

  @override
  String toString() => 'DomainProvProcessPending[oPSVersion=$oPSVersion, responseText=$responseText, protocol=$protocol, responseCode=$responseCode, action=$action, object=$object, isSuccess=$isSuccess, attributes=$attributes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.oPSVersion != null) {
      json[r'_OPS_version'] = this.oPSVersion;
    } else {
      json[r'_OPS_version'] = null;
    }
    if (this.responseText != null) {
      json[r'response_text'] = this.responseText;
    } else {
      json[r'response_text'] = null;
    }
    if (this.protocol != null) {
      json[r'protocol'] = this.protocol;
    } else {
      json[r'protocol'] = null;
    }
    if (this.responseCode != null) {
      json[r'response_code'] = this.responseCode;
    } else {
      json[r'response_code'] = null;
    }
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
    if (this.isSuccess != null) {
      json[r'is_success'] = this.isSuccess;
    } else {
      json[r'is_success'] = null;
    }
    if (this.attributes != null) {
      json[r'attributes'] = this.attributes;
    } else {
      json[r'attributes'] = null;
    }
    return json;
  }

  /// Returns a new [DomainProvProcessPending] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainProvProcessPending? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainProvProcessPending(
        oPSVersion: mapValueOfType<String>(json, r'_OPS_version'),
        responseText: mapValueOfType<String>(json, r'response_text'),
        protocol: mapValueOfType<String>(json, r'protocol'),
        responseCode: mapValueOfType<String>(json, r'response_code'),
        action: mapValueOfType<String>(json, r'action'),
        object: mapValueOfType<String>(json, r'object'),
        isSuccess: mapValueOfType<String>(json, r'is_success'),
        attributes: DomainProvProcessPendingAttributes.fromJson(json[r'attributes']),
      );
    }
    return null;
  }

  static List<DomainProvProcessPending> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainProvProcessPending>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainProvProcessPending.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainProvProcessPending> mapFromJson(dynamic json) {
    final map = <String, DomainProvProcessPending>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainProvProcessPending.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainProvProcessPending-objects as value to a dart map
  static Map<String, List<DomainProvProcessPending>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainProvProcessPending>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainProvProcessPending.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

