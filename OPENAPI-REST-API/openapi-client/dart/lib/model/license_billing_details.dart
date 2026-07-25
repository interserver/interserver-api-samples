//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class LicenseBillingDetails {
  /// Returns a new [LicenseBillingDetails] instance.
  LicenseBillingDetails({
    this.serviceLastInvoiceDate,
    this.servicePaymentStatus,
    this.serviceFrequency,
    this.nextDate,
    this.serviceNextInvoiceDate,
    this.serviceCurrency,
    this.serviceCurrencySymbol,
    this.serviceCoupon,
    this.serviceCostInfo,
    this.serviceExtra = const [],
    this.serviceExtraJson,
  });

  /// Last invoice date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceLastInvoiceDate;

  /// Payment status
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicePaymentStatus;

  /// Service frequency
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceFrequency;

  /// Next date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? nextDate;

  /// Next invoice date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceNextInvoiceDate;

  /// Service currency
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceCurrency;

  /// Service currency symbol
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceCurrencySymbol;

  /// Service coupon
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceCoupon;

  /// Service cost information
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceCostInfo;

  /// Additional service information
  List<String> serviceExtra;

  /// Additional service information in JSON format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceExtraJson;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicenseBillingDetails &&
    other.serviceLastInvoiceDate == serviceLastInvoiceDate &&
    other.servicePaymentStatus == servicePaymentStatus &&
    other.serviceFrequency == serviceFrequency &&
    other.nextDate == nextDate &&
    other.serviceNextInvoiceDate == serviceNextInvoiceDate &&
    other.serviceCurrency == serviceCurrency &&
    other.serviceCurrencySymbol == serviceCurrencySymbol &&
    other.serviceCoupon == serviceCoupon &&
    other.serviceCostInfo == serviceCostInfo &&
    _deepEquality.equals(other.serviceExtra, serviceExtra) &&
    other.serviceExtraJson == serviceExtraJson;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serviceLastInvoiceDate == null ? 0 : serviceLastInvoiceDate!.hashCode) +
    (servicePaymentStatus == null ? 0 : servicePaymentStatus!.hashCode) +
    (serviceFrequency == null ? 0 : serviceFrequency!.hashCode) +
    (nextDate == null ? 0 : nextDate!.hashCode) +
    (serviceNextInvoiceDate == null ? 0 : serviceNextInvoiceDate!.hashCode) +
    (serviceCurrency == null ? 0 : serviceCurrency!.hashCode) +
    (serviceCurrencySymbol == null ? 0 : serviceCurrencySymbol!.hashCode) +
    (serviceCoupon == null ? 0 : serviceCoupon!.hashCode) +
    (serviceCostInfo == null ? 0 : serviceCostInfo!.hashCode) +
    (serviceExtra.hashCode) +
    (serviceExtraJson == null ? 0 : serviceExtraJson!.hashCode);

  @override
  String toString() => 'LicenseBillingDetails[serviceLastInvoiceDate=$serviceLastInvoiceDate, servicePaymentStatus=$servicePaymentStatus, serviceFrequency=$serviceFrequency, nextDate=$nextDate, serviceNextInvoiceDate=$serviceNextInvoiceDate, serviceCurrency=$serviceCurrency, serviceCurrencySymbol=$serviceCurrencySymbol, serviceCoupon=$serviceCoupon, serviceCostInfo=$serviceCostInfo, serviceExtra=$serviceExtra, serviceExtraJson=$serviceExtraJson]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.serviceLastInvoiceDate != null) {
      json[r'service_last_invoice_date'] = this.serviceLastInvoiceDate;
    } else {
      json[r'service_last_invoice_date'] = null;
    }
    if (this.servicePaymentStatus != null) {
      json[r'service_payment_status'] = this.servicePaymentStatus;
    } else {
      json[r'service_payment_status'] = null;
    }
    if (this.serviceFrequency != null) {
      json[r'service_frequency'] = this.serviceFrequency;
    } else {
      json[r'service_frequency'] = null;
    }
    if (this.nextDate != null) {
      json[r'next_date'] = this.nextDate!.toUtc().toIso8601String();
    } else {
      json[r'next_date'] = null;
    }
    if (this.serviceNextInvoiceDate != null) {
      json[r'service_next_invoice_date'] = this.serviceNextInvoiceDate;
    } else {
      json[r'service_next_invoice_date'] = null;
    }
    if (this.serviceCurrency != null) {
      json[r'service_currency'] = this.serviceCurrency;
    } else {
      json[r'service_currency'] = null;
    }
    if (this.serviceCurrencySymbol != null) {
      json[r'service_currency_symbol'] = this.serviceCurrencySymbol;
    } else {
      json[r'service_currency_symbol'] = null;
    }
    if (this.serviceCoupon != null) {
      json[r'service_coupon'] = this.serviceCoupon;
    } else {
      json[r'service_coupon'] = null;
    }
    if (this.serviceCostInfo != null) {
      json[r'service_cost_info'] = this.serviceCostInfo;
    } else {
      json[r'service_cost_info'] = null;
    }
      json[r'service_extra'] = this.serviceExtra;
    if (this.serviceExtraJson != null) {
      json[r'service_extra_json'] = this.serviceExtraJson;
    } else {
      json[r'service_extra_json'] = null;
    }
    return json;
  }

  /// Returns a new [LicenseBillingDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicenseBillingDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return LicenseBillingDetails(
        serviceLastInvoiceDate: mapValueOfType<String>(json, r'service_last_invoice_date'),
        servicePaymentStatus: mapValueOfType<String>(json, r'service_payment_status'),
        serviceFrequency: mapValueOfType<String>(json, r'service_frequency'),
        nextDate: mapDateTime(json, r'next_date', r''),
        serviceNextInvoiceDate: mapValueOfType<String>(json, r'service_next_invoice_date'),
        serviceCurrency: mapValueOfType<String>(json, r'service_currency'),
        serviceCurrencySymbol: mapValueOfType<String>(json, r'service_currency_symbol'),
        serviceCoupon: mapValueOfType<String>(json, r'service_coupon'),
        serviceCostInfo: mapValueOfType<String>(json, r'service_cost_info'),
        serviceExtra: json[r'service_extra'] is Iterable
            ? (json[r'service_extra'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        serviceExtraJson: mapValueOfType<String>(json, r'service_extra_json'),
      );
    }
    return null;
  }

  static List<LicenseBillingDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseBillingDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseBillingDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicenseBillingDetails> mapFromJson(dynamic json) {
    final map = <String, LicenseBillingDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseBillingDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicenseBillingDetails-objects as value to a dart map
  static Map<String, List<LicenseBillingDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicenseBillingDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicenseBillingDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

