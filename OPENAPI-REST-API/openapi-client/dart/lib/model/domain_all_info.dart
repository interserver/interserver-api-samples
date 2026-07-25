//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainAllInfo {
  /// Returns a new [DomainAllInfo] instance.
  DomainAllInfo({
    this.oPSVersion,
    this.attributes,
    this.object,
    this.protocol,
    this.responseText,
    this.responseCode,
    this.action,
    this.isSuccess,
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
  DomainAllInfoAttributes? attributes;

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
  String? protocol;

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
  String? isSuccess;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainAllInfo &&
    other.oPSVersion == oPSVersion &&
    other.attributes == attributes &&
    other.object == object &&
    other.protocol == protocol &&
    other.responseText == responseText &&
    other.responseCode == responseCode &&
    other.action == action &&
    other.isSuccess == isSuccess;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (oPSVersion == null ? 0 : oPSVersion!.hashCode) +
    (attributes == null ? 0 : attributes!.hashCode) +
    (object == null ? 0 : object!.hashCode) +
    (protocol == null ? 0 : protocol!.hashCode) +
    (responseText == null ? 0 : responseText!.hashCode) +
    (responseCode == null ? 0 : responseCode!.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (isSuccess == null ? 0 : isSuccess!.hashCode);

  @override
  String toString() => 'DomainAllInfo[oPSVersion=$oPSVersion, attributes=$attributes, object=$object, protocol=$protocol, responseText=$responseText, responseCode=$responseCode, action=$action, isSuccess=$isSuccess]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.oPSVersion != null) {
      json[r'_OPS_version'] = this.oPSVersion;
    } else {
      json[r'_OPS_version'] = null;
    }
    if (this.attributes != null) {
      json[r'attributes'] = this.attributes;
    } else {
      json[r'attributes'] = null;
    }
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
    if (this.protocol != null) {
      json[r'protocol'] = this.protocol;
    } else {
      json[r'protocol'] = null;
    }
    if (this.responseText != null) {
      json[r'response_text'] = this.responseText;
    } else {
      json[r'response_text'] = null;
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
    if (this.isSuccess != null) {
      json[r'is_success'] = this.isSuccess;
    } else {
      json[r'is_success'] = null;
    }
    return json;
  }

  /// Returns a new [DomainAllInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainAllInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainAllInfo(
        oPSVersion: mapValueOfType<String>(json, r'_OPS_version'),
        attributes: DomainAllInfoAttributes.fromJson(json[r'attributes']),
        object: mapValueOfType<String>(json, r'object'),
        protocol: mapValueOfType<String>(json, r'protocol'),
        responseText: mapValueOfType<String>(json, r'response_text'),
        responseCode: mapValueOfType<String>(json, r'response_code'),
        action: mapValueOfType<String>(json, r'action'),
        isSuccess: mapValueOfType<String>(json, r'is_success'),
      );
    }
    return null;
  }

  static List<DomainAllInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainAllInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainAllInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainAllInfo> mapFromJson(dynamic json) {
    final map = <String, DomainAllInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainAllInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainAllInfo-objects as value to a dart map
  static Map<String, List<DomainAllInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainAllInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainAllInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

