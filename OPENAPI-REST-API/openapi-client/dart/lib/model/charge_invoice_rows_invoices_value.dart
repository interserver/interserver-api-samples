//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ChargeInvoiceRowsInvoicesValue {
  /// Returns a new [ChargeInvoiceRowsInvoicesValue] instance.
  ChargeInvoiceRowsInvoicesValue({
    this.invoicesId,
    this.invoicesDescription,
    this.invoicesAmount,
    this.invoicesDate,
    this.invoicesPaid,
    this.invoicesDueDate,
    this.invoicesCurrency,
    this.currencySymbol,
    this.invoicesDateFormatted,
    this.paidInvoices = const {},
  });

  /// Unique invoice ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? invoicesId;

  /// Description of the invoice charge.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoicesDescription;

  /// Invoice amount.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? invoicesAmount;

  /// Invoice date.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoicesDate;

  ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum? invoicesPaid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoicesDueDate;

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

  /// This is optional when invoices_paid = 1 this array will show
  Map<String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValue> paidInvoices;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChargeInvoiceRowsInvoicesValue &&
    other.invoicesId == invoicesId &&
    other.invoicesDescription == invoicesDescription &&
    other.invoicesAmount == invoicesAmount &&
    other.invoicesDate == invoicesDate &&
    other.invoicesPaid == invoicesPaid &&
    other.invoicesDueDate == invoicesDueDate &&
    other.invoicesCurrency == invoicesCurrency &&
    other.currencySymbol == currencySymbol &&
    other.invoicesDateFormatted == invoicesDateFormatted &&
    _deepEquality.equals(other.paidInvoices, paidInvoices);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (invoicesId == null ? 0 : invoicesId!.hashCode) +
    (invoicesDescription == null ? 0 : invoicesDescription!.hashCode) +
    (invoicesAmount == null ? 0 : invoicesAmount!.hashCode) +
    (invoicesDate == null ? 0 : invoicesDate!.hashCode) +
    (invoicesPaid == null ? 0 : invoicesPaid!.hashCode) +
    (invoicesDueDate == null ? 0 : invoicesDueDate!.hashCode) +
    (invoicesCurrency == null ? 0 : invoicesCurrency!.hashCode) +
    (currencySymbol == null ? 0 : currencySymbol!.hashCode) +
    (invoicesDateFormatted == null ? 0 : invoicesDateFormatted!.hashCode) +
    (paidInvoices.hashCode);

  @override
  String toString() => 'ChargeInvoiceRowsInvoicesValue[invoicesId=$invoicesId, invoicesDescription=$invoicesDescription, invoicesAmount=$invoicesAmount, invoicesDate=$invoicesDate, invoicesPaid=$invoicesPaid, invoicesDueDate=$invoicesDueDate, invoicesCurrency=$invoicesCurrency, currencySymbol=$currencySymbol, invoicesDateFormatted=$invoicesDateFormatted, paidInvoices=$paidInvoices]';

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
    if (this.invoicesPaid != null) {
      json[r'invoices_paid'] = this.invoicesPaid;
    } else {
      json[r'invoices_paid'] = null;
    }
    if (this.invoicesDueDate != null) {
      json[r'invoices_due_date'] = this.invoicesDueDate;
    } else {
      json[r'invoices_due_date'] = null;
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
      json[r'paid_invoices'] = this.paidInvoices;
    return json;
  }

  /// Returns a new [ChargeInvoiceRowsInvoicesValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChargeInvoiceRowsInvoicesValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ChargeInvoiceRowsInvoicesValue(
        invoicesId: num.parse('${json[r'invoices_id']}'),
        invoicesDescription: mapValueOfType<String>(json, r'invoices_description'),
        invoicesAmount: num.parse('${json[r'invoices_amount']}'),
        invoicesDate: mapValueOfType<String>(json, r'invoices_date'),
        invoicesPaid: ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum.parse('${json[r'invoices_paid']}'),
        invoicesDueDate: mapValueOfType<String>(json, r'invoices_due_date'),
        invoicesCurrency: mapValueOfType<String>(json, r'invoices_currency'),
        currencySymbol: mapValueOfType<String>(json, r'currency_symbol'),
        invoicesDateFormatted: mapValueOfType<String>(json, r'invoices_date_formatted'),
        paidInvoices: ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.mapFromJson(json[r'paid_invoices']),
      );
    }
    return null;
  }

  static List<ChargeInvoiceRowsInvoicesValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChargeInvoiceRowsInvoicesValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChargeInvoiceRowsInvoicesValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChargeInvoiceRowsInvoicesValue> mapFromJson(dynamic json) {
    final map = <String, ChargeInvoiceRowsInvoicesValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChargeInvoiceRowsInvoicesValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChargeInvoiceRowsInvoicesValue-objects as value to a dart map
  static Map<String, List<ChargeInvoiceRowsInvoicesValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChargeInvoiceRowsInvoicesValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChargeInvoiceRowsInvoicesValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


enum ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum {
  n0._('0'),
  n1._('1'),
  unknownDefaultOpenApi._('11184809'),
  ;

  /// Instantiate a new enum with the provided value.
  const ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum._(this._value);

  /// The underlying value of this enum member.
  final num _value;

  @override
  String toString() => _value.toString();

  /// Encodes this enum as a value suitable for JSON.
  num toJson() => _value;

  /// Returns the instance of [ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum? fromJson(dynamic value) => ChargeInvoiceRowsInvoicesValueInvoicesPaidEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum] to num,
/// and [decode] dynamic data back to [ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum].
class ChargeInvoiceRowsInvoicesValueInvoicesPaidEnumTypeTransformer {
  factory ChargeInvoiceRowsInvoicesValueInvoicesPaidEnumTypeTransformer() => _instance ??= const ChargeInvoiceRowsInvoicesValueInvoicesPaidEnumTypeTransformer._();

  const ChargeInvoiceRowsInvoicesValueInvoicesPaidEnumTypeTransformer._();

  num encode(ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum data) => data._value;

  /// Returns the instance of [ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case '0': return ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum.n0;
        case '1': return ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum.n1;
        case '11184809': return ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static ChargeInvoiceRowsInvoicesValueInvoicesPaidEnumTypeTransformer? _instance;
}


