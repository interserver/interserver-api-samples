//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BackupOrderPutRequest {
  /// Returns a new [BackupOrderPutRequest] instance.
  BackupOrderPutRequest({
    this.validateOnly,
    this.serviceType,
    this.coupon,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? validateOnly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? serviceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? coupon;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BackupOrderPutRequest &&
    other.validateOnly == validateOnly &&
    other.serviceType == serviceType &&
    other.coupon == coupon;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (validateOnly == null ? 0 : validateOnly!.hashCode) +
    (serviceType == null ? 0 : serviceType!.hashCode) +
    (coupon == null ? 0 : coupon!.hashCode);

  @override
  String toString() => 'BackupOrderPutRequest[validateOnly=$validateOnly, serviceType=$serviceType, coupon=$coupon]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.validateOnly != null) {
      json[r'validateOnly'] = this.validateOnly;
    } else {
      json[r'validateOnly'] = null;
    }
    if (this.serviceType != null) {
      json[r'serviceType'] = this.serviceType;
    } else {
      json[r'serviceType'] = null;
    }
    if (this.coupon != null) {
      json[r'coupon'] = this.coupon;
    } else {
      json[r'coupon'] = null;
    }
    return json;
  }

  /// Returns a new [BackupOrderPutRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BackupOrderPutRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BackupOrderPutRequest(
        validateOnly: mapValueOfType<bool>(json, r'validateOnly'),
        serviceType: mapValueOfType<int>(json, r'serviceType'),
        coupon: mapValueOfType<String>(json, r'coupon'),
      );
    }
    return null;
  }

  static List<BackupOrderPutRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BackupOrderPutRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BackupOrderPutRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BackupOrderPutRequest> mapFromJson(dynamic json) {
    final map = <String, BackupOrderPutRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BackupOrderPutRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BackupOrderPutRequest-objects as value to a dart map
  static Map<String, List<BackupOrderPutRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BackupOrderPutRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BackupOrderPutRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

