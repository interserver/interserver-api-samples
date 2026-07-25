//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class AffiliatePaymentSetup {
  /// Returns a new [AffiliatePaymentSetup] instance.
  AffiliatePaymentSetup({
    this.affiliatePaypal,
    this.affiliatePaymentMethod,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? affiliatePaypal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? affiliatePaymentMethod;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliatePaymentSetup &&
    other.affiliatePaypal == affiliatePaypal &&
    other.affiliatePaymentMethod == affiliatePaymentMethod;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (affiliatePaypal == null ? 0 : affiliatePaypal!.hashCode) +
    (affiliatePaymentMethod == null ? 0 : affiliatePaymentMethod!.hashCode);

  @override
  String toString() => 'AffiliatePaymentSetup[affiliatePaypal=$affiliatePaypal, affiliatePaymentMethod=$affiliatePaymentMethod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.affiliatePaypal != null) {
      json[r'affiliate_paypal'] = this.affiliatePaypal;
    } else {
      json[r'affiliate_paypal'] = null;
    }
    if (this.affiliatePaymentMethod != null) {
      json[r'affiliate_payment_method'] = this.affiliatePaymentMethod;
    } else {
      json[r'affiliate_payment_method'] = null;
    }
    return json;
  }

  /// Returns a new [AffiliatePaymentSetup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliatePaymentSetup? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return AffiliatePaymentSetup(
        affiliatePaypal: mapValueOfType<String>(json, r'affiliate_paypal'),
        affiliatePaymentMethod: mapValueOfType<String>(json, r'affiliate_payment_method'),
      );
    }
    return null;
  }

  static List<AffiliatePaymentSetup> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliatePaymentSetup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliatePaymentSetup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliatePaymentSetup> mapFromJson(dynamic json) {
    final map = <String, AffiliatePaymentSetup>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliatePaymentSetup.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliatePaymentSetup-objects as value to a dart map
  static Map<String, List<AffiliatePaymentSetup>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliatePaymentSetup>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliatePaymentSetup.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

