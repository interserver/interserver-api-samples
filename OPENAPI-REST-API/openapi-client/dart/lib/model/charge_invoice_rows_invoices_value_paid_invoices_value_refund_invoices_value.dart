//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue {
  /// Returns a new [ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue] instance.
  ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue({
    this.invoicesId,
    this.invoicesDescription,
    this.invoicesAmount,
    this.invoicesDate,
    this.invoicesCurrency,
    this.currencySymbol,
    this.invoicesDateFormatted,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? invoicesId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoicesDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? invoicesAmount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoicesDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoicesCurrency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currencySymbol;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoicesDateFormatted;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue &&
    other.invoicesId == invoicesId &&
    other.invoicesDescription == invoicesDescription &&
    other.invoicesAmount == invoicesAmount &&
    other.invoicesDate == invoicesDate &&
    other.invoicesCurrency == invoicesCurrency &&
    other.currencySymbol == currencySymbol &&
    other.invoicesDateFormatted == invoicesDateFormatted;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (invoicesId == null ? 0 : invoicesId!.hashCode) +
    (invoicesDescription == null ? 0 : invoicesDescription!.hashCode) +
    (invoicesAmount == null ? 0 : invoicesAmount!.hashCode) +
    (invoicesDate == null ? 0 : invoicesDate!.hashCode) +
    (invoicesCurrency == null ? 0 : invoicesCurrency!.hashCode) +
    (currencySymbol == null ? 0 : currencySymbol!.hashCode) +
    (invoicesDateFormatted == null ? 0 : invoicesDateFormatted!.hashCode);

  @override
  String toString() => 'ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue[invoicesId=$invoicesId, invoicesDescription=$invoicesDescription, invoicesAmount=$invoicesAmount, invoicesDate=$invoicesDate, invoicesCurrency=$invoicesCurrency, currencySymbol=$currencySymbol, invoicesDateFormatted=$invoicesDateFormatted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.invoicesId != null) {
      json[r'invoices_id'] = this.invoicesId;
    } else {
      json[r'invoices_id'] = null;
    }
    if (this.invoicesDescription != null) {
      json[r'invoices_description'] = this.invoicesDescription;
    } else {
      json[r'invoices_description'] = null;
    }
    if (this.invoicesAmount != null) {
      json[r'invoices_amount'] = this.invoicesAmount;
    } else {
      json[r'invoices_amount'] = null;
    }
    if (this.invoicesDate != null) {
      json[r'invoices_date'] = this.invoicesDate;
    } else {
      json[r'invoices_date'] = null;
    }
    if (this.invoicesCurrency != null) {
      json[r'invoices_currency'] = this.invoicesCurrency;
    } else {
      json[r'invoices_currency'] = null;
    }
    if (this.currencySymbol != null) {
      json[r'currency_symbol'] = this.currencySymbol;
    } else {
      json[r'currency_symbol'] = null;
    }
    if (this.invoicesDateFormatted != null) {
      json[r'invoices_date_formatted'] = this.invoicesDateFormatted;
    } else {
      json[r'invoices_date_formatted'] = null;
    }
    return json;
  }

  /// Returns a new [ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue(
        invoicesId: num.parse('${json[r'invoices_id']}'),
        invoicesDescription: mapValueOfType<String>(json, r'invoices_description'),
        invoicesAmount: num.parse('${json[r'invoices_amount']}'),
        invoicesDate: mapValueOfType<String>(json, r'invoices_date'),
        invoicesCurrency: mapValueOfType<String>(json, r'invoices_currency'),
        currencySymbol: mapValueOfType<String>(json, r'currency_symbol'),
        invoicesDateFormatted: mapValueOfType<String>(json, r'invoices_date_formatted'),
      );
    }
    return null;
  }

  static List<ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue> mapFromJson(dynamic json) {
    final map = <String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue-objects as value to a dart map
  static Map<String, List<ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

