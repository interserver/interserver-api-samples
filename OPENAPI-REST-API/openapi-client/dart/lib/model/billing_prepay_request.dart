//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BillingPrepayRequest {
  /// Returns a new [BillingPrepayRequest] instance.
  BillingPrepayRequest({
    this.module,
    this.amount,
    this.automaticUse,
  });

  /// Module the prepay should be applied to (for example `default`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? module;

  /// Amount to add to prepay balance. Minimum is $10.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amount;

  /// Whether the prepay balance should be used automatically.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? automaticUse;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BillingPrepayRequest &&
    other.module == module &&
    other.amount == amount &&
    other.automaticUse == automaticUse;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (module == null ? 0 : module!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (automaticUse == null ? 0 : automaticUse!.hashCode);

  @override
  String toString() => 'BillingPrepayRequest[module=$module, amount=$amount, automaticUse=$automaticUse]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.module != null) {
      json[r'module'] = this.module;
    } else {
      json[r'module'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.automaticUse != null) {
      json[r'automatic_use'] = this.automaticUse;
    } else {
      json[r'automatic_use'] = null;
    }
    return json;
  }

  /// Returns a new [BillingPrepayRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BillingPrepayRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BillingPrepayRequest(
        module: mapValueOfType<String>(json, r'module'),
        amount: num.parse('${json[r'amount']}'),
        automaticUse: mapValueOfType<String>(json, r'automatic_use'),
      );
    }
    return null;
  }

  static List<BillingPrepayRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BillingPrepayRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BillingPrepayRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BillingPrepayRequest> mapFromJson(dynamic json) {
    final map = <String, BillingPrepayRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BillingPrepayRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BillingPrepayRequest-objects as value to a dart map
  static Map<String, List<BillingPrepayRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BillingPrepayRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BillingPrepayRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

