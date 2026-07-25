//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BackupOrderPutResponse {
  /// Returns a new [BackupOrderPutResponse] instance.
  BackupOrderPutResponse({
    this.continue_,
    this.errors = const [],
    this.serviceType,
    this.serviceCost,
    this.originalCost,
    this.repeatServiceCost,
    this.hostname,
    this.password,
    this.coupon,
    this.couponCode,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? continue_;

  List<String> errors;

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
  String? serviceCost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? originalCost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repeatServiceCost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostname;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? coupon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? couponCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BackupOrderPutResponse &&
    other.continue_ == continue_ &&
    _deepEquality.equals(other.errors, errors) &&
    other.serviceType == serviceType &&
    other.serviceCost == serviceCost &&
    other.originalCost == originalCost &&
    other.repeatServiceCost == repeatServiceCost &&
    other.hostname == hostname &&
    other.password == password &&
    other.coupon == coupon &&
    other.couponCode == couponCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (continue_ == null ? 0 : continue_!.hashCode) +
    (errors.hashCode) +
    (serviceType == null ? 0 : serviceType!.hashCode) +
    (serviceCost == null ? 0 : serviceCost!.hashCode) +
    (originalCost == null ? 0 : originalCost!.hashCode) +
    (repeatServiceCost == null ? 0 : repeatServiceCost!.hashCode) +
    (hostname == null ? 0 : hostname!.hashCode) +
    (password == null ? 0 : password!.hashCode) +
    (coupon == null ? 0 : coupon!.hashCode) +
    (couponCode == null ? 0 : couponCode!.hashCode);

  @override
  String toString() => 'BackupOrderPutResponse[continue_=$continue_, errors=$errors, serviceType=$serviceType, serviceCost=$serviceCost, originalCost=$originalCost, repeatServiceCost=$repeatServiceCost, hostname=$hostname, password=$password, coupon=$coupon, couponCode=$couponCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.continue_ != null) {
      json[r'continue'] = this.continue_;
    } else {
      json[r'continue'] = null;
    }
      json[r'errors'] = this.errors;
    if (this.serviceType != null) {
      json[r'serviceType'] = this.serviceType;
    } else {
      json[r'serviceType'] = null;
    }
    if (this.serviceCost != null) {
      json[r'serviceCost'] = this.serviceCost;
    } else {
      json[r'serviceCost'] = null;
    }
    if (this.originalCost != null) {
      json[r'originalCost'] = this.originalCost;
    } else {
      json[r'originalCost'] = null;
    }
    if (this.repeatServiceCost != null) {
      json[r'repeatServiceCost'] = this.repeatServiceCost;
    } else {
      json[r'repeatServiceCost'] = null;
    }
    if (this.hostname != null) {
      json[r'hostname'] = this.hostname;
    } else {
      json[r'hostname'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.coupon != null) {
      json[r'coupon'] = this.coupon;
    } else {
      json[r'coupon'] = null;
    }
    if (this.couponCode != null) {
      json[r'couponCode'] = this.couponCode;
    } else {
      json[r'couponCode'] = null;
    }
    return json;
  }

  /// Returns a new [BackupOrderPutResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BackupOrderPutResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BackupOrderPutResponse(
        continue_: mapValueOfType<bool>(json, r'continue'),
        errors: json[r'errors'] is Iterable
            ? (json[r'errors'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        serviceType: mapValueOfType<int>(json, r'serviceType'),
        serviceCost: mapValueOfType<String>(json, r'serviceCost'),
        originalCost: mapValueOfType<String>(json, r'originalCost'),
        repeatServiceCost: mapValueOfType<String>(json, r'repeatServiceCost'),
        hostname: mapValueOfType<String>(json, r'hostname'),
        password: mapValueOfType<String>(json, r'password'),
        coupon: mapValueOfType<String>(json, r'coupon'),
        couponCode: mapValueOfType<int>(json, r'couponCode'),
      );
    }
    return null;
  }

  static List<BackupOrderPutResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BackupOrderPutResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BackupOrderPutResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BackupOrderPutResponse> mapFromJson(dynamic json) {
    final map = <String, BackupOrderPutResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BackupOrderPutResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BackupOrderPutResponse-objects as value to a dart map
  static Map<String, List<BackupOrderPutResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BackupOrderPutResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BackupOrderPutResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

