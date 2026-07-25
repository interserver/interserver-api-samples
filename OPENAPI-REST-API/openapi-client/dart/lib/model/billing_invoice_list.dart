//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BillingInvoiceList {
  /// Returns a new [BillingInvoiceList] instance.
  BillingInvoiceList({
    this.rows = const [],
    this.summary,
  });

  /// Invoice rows returned for the account.
  List<Object> rows;

  /// Totals and summary data for the invoices list.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? summary;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BillingInvoiceList &&
    _deepEquality.equals(other.rows, rows) &&
    other.summary == summary;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rows.hashCode) +
    (summary == null ? 0 : summary!.hashCode);

  @override
  String toString() => 'BillingInvoiceList[rows=$rows, summary=$summary]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rows'] = this.rows;
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    return json;
  }

  /// Returns a new [BillingInvoiceList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BillingInvoiceList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BillingInvoiceList(
        rows: json[r'rows'] is Iterable
            ? (json[r'rows'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        summary: mapValueOfType<Object>(json, r'summary'),
      );
    }
    return null;
  }

  static List<BillingInvoiceList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BillingInvoiceList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BillingInvoiceList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BillingInvoiceList> mapFromJson(dynamic json) {
    final map = <String, BillingInvoiceList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BillingInvoiceList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BillingInvoiceList-objects as value to a dart map
  static Map<String, List<BillingInvoiceList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BillingInvoiceList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BillingInvoiceList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

