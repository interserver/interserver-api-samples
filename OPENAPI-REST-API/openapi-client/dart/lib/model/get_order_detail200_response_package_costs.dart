//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class GetOrderDetail200ResponsePackageCosts {
  /// Returns a new [GetOrderDetail200ResponsePackageCosts] instance.
  GetOrderDetail200ResponsePackageCosts({
    this.packageId,
    this.packageCost,
    this.currency,
    this.currencySymbol,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? packageId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? packageCost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currencySymbol;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetOrderDetail200ResponsePackageCosts &&
    other.packageId == packageId &&
    other.packageCost == packageCost &&
    other.currency == currency &&
    other.currencySymbol == currencySymbol;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (packageId == null ? 0 : packageId!.hashCode) +
    (packageCost == null ? 0 : packageCost!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (currencySymbol == null ? 0 : currencySymbol!.hashCode);

  @override
  String toString() => 'GetOrderDetail200ResponsePackageCosts[packageId=$packageId, packageCost=$packageCost, currency=$currency, currencySymbol=$currencySymbol]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.packageId != null) {
      json[r'package_id'] = this.packageId;
    } else {
      json[r'package_id'] = null;
    }
    if (this.packageCost != null) {
      json[r'package_cost'] = this.packageCost;
    } else {
      json[r'package_cost'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.currencySymbol != null) {
      json[r'currencySymbol'] = this.currencySymbol;
    } else {
      json[r'currencySymbol'] = null;
    }
    return json;
  }

  /// Returns a new [GetOrderDetail200ResponsePackageCosts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetOrderDetail200ResponsePackageCosts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return GetOrderDetail200ResponsePackageCosts(
        packageId: num.parse('${json[r'package_id']}'),
        packageCost: num.parse('${json[r'package_cost']}'),
        currency: mapValueOfType<String>(json, r'currency'),
        currencySymbol: mapValueOfType<String>(json, r'currencySymbol'),
      );
    }
    return null;
  }

  static List<GetOrderDetail200ResponsePackageCosts> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetOrderDetail200ResponsePackageCosts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetOrderDetail200ResponsePackageCosts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetOrderDetail200ResponsePackageCosts> mapFromJson(dynamic json) {
    final map = <String, GetOrderDetail200ResponsePackageCosts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetOrderDetail200ResponsePackageCosts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetOrderDetail200ResponsePackageCosts-objects as value to a dart map
  static Map<String, List<GetOrderDetail200ResponsePackageCosts>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetOrderDetail200ResponsePackageCosts>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetOrderDetail200ResponsePackageCosts.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

