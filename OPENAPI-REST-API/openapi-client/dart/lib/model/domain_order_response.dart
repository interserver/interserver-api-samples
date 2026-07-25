//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainOrderResponse {
  /// Returns a new [DomainOrderResponse] instance.
  DomainOrderResponse({
    this.oPSVersion,
    this.protocol,
    this.isSuccess,
    this.action,
    this.attributes,
    this.responseText,
    this.object,
    this.responseCode,
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
  String? protocol;

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
  String? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainOrderResponseAttributes? attributes;

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
  String? object;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responseCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainOrderResponse &&
    other.oPSVersion == oPSVersion &&
    other.protocol == protocol &&
    other.isSuccess == isSuccess &&
    other.action == action &&
    other.attributes == attributes &&
    other.responseText == responseText &&
    other.object == object &&
    other.responseCode == responseCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (oPSVersion == null ? 0 : oPSVersion!.hashCode) +
    (protocol == null ? 0 : protocol!.hashCode) +
    (isSuccess == null ? 0 : isSuccess!.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (attributes == null ? 0 : attributes!.hashCode) +
    (responseText == null ? 0 : responseText!.hashCode) +
    (object == null ? 0 : object!.hashCode) +
    (responseCode == null ? 0 : responseCode!.hashCode);

  @override
  String toString() => 'DomainOrderResponse[oPSVersion=$oPSVersion, protocol=$protocol, isSuccess=$isSuccess, action=$action, attributes=$attributes, responseText=$responseText, object=$object, responseCode=$responseCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.oPSVersion != null) {
      json[r'_OPS_version'] = this.oPSVersion;
    } else {
      json[r'_OPS_version'] = null;
    }
    if (this.protocol != null) {
      json[r'protocol'] = this.protocol;
    } else {
      json[r'protocol'] = null;
    }
    if (this.isSuccess != null) {
      json[r'is_success'] = this.isSuccess;
    } else {
      json[r'is_success'] = null;
    }
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.attributes != null) {
      json[r'attributes'] = this.attributes;
    } else {
      json[r'attributes'] = null;
    }
    if (this.responseText != null) {
      json[r'response_text'] = this.responseText;
    } else {
      json[r'response_text'] = null;
    }
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
    if (this.responseCode != null) {
      json[r'response_code'] = this.responseCode;
    } else {
      json[r'response_code'] = null;
    }
    return json;
  }

  /// Returns a new [DomainOrderResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainOrderResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainOrderResponse(
        oPSVersion: mapValueOfType<String>(json, r'_OPS_version'),
        protocol: mapValueOfType<String>(json, r'protocol'),
        isSuccess: mapValueOfType<String>(json, r'is_success'),
        action: mapValueOfType<String>(json, r'action'),
        attributes: DomainOrderResponseAttributes.fromJson(json[r'attributes']),
        responseText: mapValueOfType<String>(json, r'response_text'),
        object: mapValueOfType<String>(json, r'object'),
        responseCode: mapValueOfType<String>(json, r'response_code'),
      );
    }
    return null;
  }

  static List<DomainOrderResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainOrderResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainOrderResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainOrderResponse> mapFromJson(dynamic json) {
    final map = <String, DomainOrderResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainOrderResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainOrderResponse-objects as value to a dart map
  static Map<String, List<DomainOrderResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainOrderResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainOrderResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

