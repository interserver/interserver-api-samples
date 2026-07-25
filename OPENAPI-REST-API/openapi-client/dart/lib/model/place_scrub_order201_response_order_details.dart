//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class PlaceScrubOrder201ResponseOrderDetails {
  /// Returns a new [PlaceScrubOrder201ResponseOrderDetails] instance.
  PlaceScrubOrder201ResponseOrderDetails({
    this.totalCost,
    this.serviceId,
    this.invoiceId,
    this.invoiceDescription,
    this.cjParams,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? serviceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? invoiceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoiceDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PlaceScrubOrder201ResponseOrderDetailsCjParams? cjParams;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlaceScrubOrder201ResponseOrderDetails &&
    other.totalCost == totalCost &&
    other.serviceId == serviceId &&
    other.invoiceId == invoiceId &&
    other.invoiceDescription == invoiceDescription &&
    other.cjParams == cjParams;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalCost == null ? 0 : totalCost!.hashCode) +
    (serviceId == null ? 0 : serviceId!.hashCode) +
    (invoiceId == null ? 0 : invoiceId!.hashCode) +
    (invoiceDescription == null ? 0 : invoiceDescription!.hashCode) +
    (cjParams == null ? 0 : cjParams!.hashCode);

  @override
  String toString() => 'PlaceScrubOrder201ResponseOrderDetails[totalCost=$totalCost, serviceId=$serviceId, invoiceId=$invoiceId, invoiceDescription=$invoiceDescription, cjParams=$cjParams]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.totalCost != null) {
      json[r'total_cost'] = this.totalCost;
    } else {
      json[r'total_cost'] = null;
    }
    if (this.serviceId != null) {
      json[r'service_id'] = this.serviceId;
    } else {
      json[r'service_id'] = null;
    }
    if (this.invoiceId != null) {
      json[r'invoice_id'] = this.invoiceId;
    } else {
      json[r'invoice_id'] = null;
    }
    if (this.invoiceDescription != null) {
      json[r'invoice_description'] = this.invoiceDescription;
    } else {
      json[r'invoice_description'] = null;
    }
    if (this.cjParams != null) {
      json[r'cj_params'] = this.cjParams;
    } else {
      json[r'cj_params'] = null;
    }
    return json;
  }

  /// Returns a new [PlaceScrubOrder201ResponseOrderDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlaceScrubOrder201ResponseOrderDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return PlaceScrubOrder201ResponseOrderDetails(
        totalCost: mapValueOfType<int>(json, r'total_cost'),
        serviceId: mapValueOfType<int>(json, r'service_id'),
        invoiceId: mapValueOfType<int>(json, r'invoice_id'),
        invoiceDescription: mapValueOfType<String>(json, r'invoice_description'),
        cjParams: PlaceScrubOrder201ResponseOrderDetailsCjParams.fromJson(json[r'cj_params']),
      );
    }
    return null;
  }

  static List<PlaceScrubOrder201ResponseOrderDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlaceScrubOrder201ResponseOrderDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlaceScrubOrder201ResponseOrderDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlaceScrubOrder201ResponseOrderDetails> mapFromJson(dynamic json) {
    final map = <String, PlaceScrubOrder201ResponseOrderDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlaceScrubOrder201ResponseOrderDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlaceScrubOrder201ResponseOrderDetails-objects as value to a dart map
  static Map<String, List<PlaceScrubOrder201ResponseOrderDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlaceScrubOrder201ResponseOrderDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlaceScrubOrder201ResponseOrderDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

