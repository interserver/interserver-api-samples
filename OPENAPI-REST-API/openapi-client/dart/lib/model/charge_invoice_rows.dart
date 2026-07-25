//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ChargeInvoiceRows {
  /// Returns a new [ChargeInvoiceRows] instance.
  ChargeInvoiceRows({
    this.success,
    this.invoices = const {},
  });

  /// Whether the invoice retrieval was successful.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? success;

  /// List of invoices for the service.
  Map<String, ChargeInvoiceRowsInvoicesValue> invoices;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChargeInvoiceRows &&
    other.success == success &&
    _deepEquality.equals(other.invoices, invoices);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success == null ? 0 : success!.hashCode) +
    (invoices.hashCode);

  @override
  String toString() => 'ChargeInvoiceRows[success=$success, invoices=$invoices]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.success != null) {
      json[r'success'] = this.success;
    } else {
      json[r'success'] = null;
    }
      json[r'invoices'] = this.invoices;
    return json;
  }

  /// Returns a new [ChargeInvoiceRows] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChargeInvoiceRows? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ChargeInvoiceRows(
        success: mapValueOfType<bool>(json, r'success'),
        invoices: ChargeInvoiceRowsInvoicesValue.mapFromJson(json[r'invoices']),
      );
    }
    return null;
  }

  static List<ChargeInvoiceRows> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChargeInvoiceRows>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChargeInvoiceRows.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChargeInvoiceRows> mapFromJson(dynamic json) {
    final map = <String, ChargeInvoiceRows>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChargeInvoiceRows.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChargeInvoiceRows-objects as value to a dart map
  static Map<String, List<ChargeInvoiceRows>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChargeInvoiceRows>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChargeInvoiceRows.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

