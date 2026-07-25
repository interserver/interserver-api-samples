//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BillingVerifyCcRequest {
  /// Returns a new [BillingVerifyCcRequest] instance.
  BillingVerifyCcRequest({
    this.idx,
    this.ccCcv2,
    this.ccAmount1,
    this.ccAmount2,
    this.terms,
  });

  /// Card index to verify.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? idx;

  /// CVV code for verification.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ccCcv2;

  /// First micro-charge amount for verification.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ccAmount1;

  /// Second micro-charge amount for verification.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ccAmount2;

  /// Whether terms were accepted for verification.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? terms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BillingVerifyCcRequest &&
    other.idx == idx &&
    other.ccCcv2 == ccCcv2 &&
    other.ccAmount1 == ccAmount1 &&
    other.ccAmount2 == ccAmount2 &&
    other.terms == terms;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (idx == null ? 0 : idx!.hashCode) +
    (ccCcv2 == null ? 0 : ccCcv2!.hashCode) +
    (ccAmount1 == null ? 0 : ccAmount1!.hashCode) +
    (ccAmount2 == null ? 0 : ccAmount2!.hashCode) +
    (terms == null ? 0 : terms!.hashCode);

  @override
  String toString() => 'BillingVerifyCcRequest[idx=$idx, ccCcv2=$ccCcv2, ccAmount1=$ccAmount1, ccAmount2=$ccAmount2, terms=$terms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.idx != null) {
      json[r'idx'] = this.idx;
    } else {
      json[r'idx'] = null;
    }
    if (this.ccCcv2 != null) {
      json[r'cc_ccv2'] = this.ccCcv2;
    } else {
      json[r'cc_ccv2'] = null;
    }
    if (this.ccAmount1 != null) {
      json[r'cc_amount1'] = this.ccAmount1;
    } else {
      json[r'cc_amount1'] = null;
    }
    if (this.ccAmount2 != null) {
      json[r'cc_amount2'] = this.ccAmount2;
    } else {
      json[r'cc_amount2'] = null;
    }
    if (this.terms != null) {
      json[r'terms'] = this.terms;
    } else {
      json[r'terms'] = null;
    }
    return json;
  }

  /// Returns a new [BillingVerifyCcRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BillingVerifyCcRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BillingVerifyCcRequest(
        idx: mapValueOfType<int>(json, r'idx'),
        ccCcv2: mapValueOfType<String>(json, r'cc_ccv2'),
        ccAmount1: mapValueOfType<String>(json, r'cc_amount1'),
        ccAmount2: mapValueOfType<String>(json, r'cc_amount2'),
        terms: mapValueOfType<bool>(json, r'terms'),
      );
    }
    return null;
  }

  static List<BillingVerifyCcRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BillingVerifyCcRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BillingVerifyCcRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BillingVerifyCcRequest> mapFromJson(dynamic json) {
    final map = <String, BillingVerifyCcRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BillingVerifyCcRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BillingVerifyCcRequest-objects as value to a dart map
  static Map<String, List<BillingVerifyCcRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BillingVerifyCcRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BillingVerifyCcRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

